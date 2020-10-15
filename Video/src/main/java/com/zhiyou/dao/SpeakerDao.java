package com.zhiyou.dao;

import java.util.List;

import com.zhiyou.model.Speaker;

public interface SpeakerDao {

	List<Speaker> selectAll();
	Speaker selectByID(int id);
	void add(Speaker s);
	void delete(int id);
	void deleteAll(int[] ids);
	void update(Speaker s);
	
}
