package com.zhiyou.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.stereotype.Component;

//��̬ע���м���
@Component
public class RedisUtil {
	/*
	 * ����RedisCache�಻�ܱ�Springֱ�ӹ���,�����޷�ֱ����������JedisConnectionFactory����,������Ҫͨ�������,������౻IOC����
	 * ����,Ȼ���������ȡ��JedisConnectionFactory����,����RedisCache���еķ�����JedisConnectionFactory����ע���ȥ
	 */
	@Autowired
	public  void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory){
		RedisCache.setJedisConnectionFactory(jedisConnectionFactory);
	}
}
