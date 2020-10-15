package com.zhiyou.dao;

import java.util.List;

import com.zhiyou.model.Course;

public interface CourseDao {

	void add(Course c);
	void update(Course c);
	void delete(int id);
	List<Course> selectAll();
	Course selectByID(int id);
	//根据任何条件查询
	List<Course> select(Course c);
	//根据任何条件模糊查询
	List<Course> selectLikeAll(Course c);
	//批量删除
	void deleteAll(int[] courses);
	
}
