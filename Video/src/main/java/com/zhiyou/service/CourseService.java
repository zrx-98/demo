package com.zhiyou.service;

import java.util.List;

import com.zhiyou.model.Course;

public interface CourseService {

	void add(Course c);
	void update(Course c);
	void delete(int id);
	List<Course> selectAll();
	Course selectByID(int id);
	//�����κ�������ѯ
	List<Course> select(Course c);
	//�����κ�����ģ����ѯ
	List<Course> selectLikeAll(Course c);
	//����ɾ��
	void deleteAll(int[] courses);
}
