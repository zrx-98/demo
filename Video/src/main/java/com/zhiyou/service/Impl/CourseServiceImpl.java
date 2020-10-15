package com.zhiyou.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.CourseDao;
import com.zhiyou.model.Course;
import com.zhiyou.service.CourseService;
@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	CourseDao dao;
	public void add(Course c) {
		dao.add(c);
		
	}

	public void update(Course c) {
		dao.update(c);
		
	}

	public void delete(int id) {
		dao.delete(id);
		
	}

	public List<Course> selectAll() {
		return dao.selectAll();
	}

	public List<Course> select(Course c) {
		return dao.select(c);
	}

	public List<Course> selectLikeAll(Course c) {
		return dao.selectLikeAll(c);
	}

	public void deleteAll(int[] courses) {
		dao.deleteAll(courses);
	}

	public Course selectByID(int id) {
		return dao.selectByID(id);
	}

}
