package com.zhiyou.service;

import java.util.List;

import com.zhiyou.model.Video;

public interface VideoService {
	void add(Video v);
	void update(Video v);
	void delete(int id);
	List<Video> selectAll();
	Video selectByID(int id);
	//根据任何条件查询
	List<Video> select(Video v);
	//根据任何条件模糊查询
	List<Video> selectLikeAll(Video v);
	//批量删除
	void deleteAll(int[] video_s);
}
