package com.zhiyou.service;

import java.util.List;

import com.zhiyou.model.Video;

public interface VideoService {
	void add(Video v);
	void update(Video v);
	void delete(int id);
	List<Video> selectAll();
	Video selectByID(int id);
	//�����κ�������ѯ
	List<Video> select(Video v);
	//�����κ�����ģ����ѯ
	List<Video> selectLikeAll(Video v);
	//����ɾ��
	void deleteAll(int[] video_s);
}
