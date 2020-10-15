package com.zhiyou.redis;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import org.apache.ibatis.cache.Cache;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;

public class RedisCache implements Cache{
		// ����һ��ID
		private final String id;
		// ������д������
		private final ReadWriteLock rwl = new  ReentrantReadWriteLock();

		private static JedisConnectionFactory jedisConnectionFactory;
		
		// Ϊ����ע��JedisConnectionFactory
		public static void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory){
			RedisCache.jedisConnectionFactory=jedisConnectionFactory;
		}

		// ͨ�����췽����id��ֵ
		public RedisCache(String id) {
			this.id=id;
		}
		// ���idʵ���Ͼ��ǻ����key
		public String getId() {		
			return id;
		}
		
		// ������д�뵽������(redis)
		public void putObject(Object key, Object value) {
			rwl.writeLock().lock();	//д���ݵ�ʱ�������,��ֹ�Լ�д��ʱ�����Ҳд
			RedisConnection redis = jedisConnectionFactory.getConnection(); //��ȡ��redis����
			RedisSerializer<Object> ser = new JdkSerializationRedisSerializer(); //�������л�����(key,valus)
			redis.set(ser.serialize(key), ser.serialize(value)); //��key��value���л� ����뵽redis��
			System.out.println("------------------------------- ��Ӷ�������ɹ� key��"+key+" value��"+value);
			redis.close();
			rwl.writeLock().unlock(); //д����ɺ�,�ſ���
		}
		
		// �ӻ�����ȡ������
		public Object getObject(Object key) {
			rwl.readLock().lock(); //����
			RedisConnection redis = jedisConnectionFactory.getConnection(); //��ȡ��redis����
			RedisSerializer<Object> ser = new JdkSerializationRedisSerializer(); //�������л�����(key,valus)
			// �������л����key��redis��ȡֵ,Ȼ���ٽ�redis��ȡ�������ݽ��з����л�
			Object object = ser.deserialize(redis.get(ser.serialize(key)));
			System.out.println("------------------------------- ���ж�������ɹ� value��"+object);
			redis.close();
			rwl.readLock().unlock();	//�ſ���
			return object;		//��redis��ȡ�������ݷ���
		}
		// �ӻ�����ɾ������
		public Object removeObject(Object key) {
			rwl.writeLock().lock(); //����
			RedisConnection redis = jedisConnectionFactory.getConnection(); //��ȡ��redis����
			RedisSerializer<Object> ser = new JdkSerializationRedisSerializer(); //�������л�����(key,valus)
			// �������л����key ��redis�ж�Ӧ��key������������Ϊ0
			Boolean expire = redis.expire(ser.serialize(key),0);
			redis.close();
			rwl.writeLock().unlock();	//�ſ���
			return expire;
		}
		// ��ջ���
		public void clear() {
			rwl.readLock().lock(); 
			RedisConnection redis = jedisConnectionFactory.getConnection(); //��ȡ��redis����
			redis.flushDb();
			redis.flushAll();
			redis.close();
			rwl.readLock().unlock();
		}
		// ��û�����������
		public int getSize() {
			RedisConnection redis = jedisConnectionFactory.getConnection(); //��ȡ��redis����
			Integer size = Integer.valueOf(redis.dbSize().toString());
			redis.close();
			return size;
		}
		public ReadWriteLock getReadWriteLock() {
			
			return rwl;
		}

}
