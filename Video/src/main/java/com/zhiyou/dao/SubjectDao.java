package com.zhiyou.dao;

import java.util.List;

import com.zhiyou.model.Subject;

public interface SubjectDao {
	List<Subject> selectAll();
	//¸ù¾Ýid²éÑ¯
	Subject selectByID(int id);
}
