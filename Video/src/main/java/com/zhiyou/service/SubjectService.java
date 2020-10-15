package com.zhiyou.service;

import java.util.List;

import com.zhiyou.model.Subject;

public interface SubjectService {
	List<Subject> selectAll();
	//¸ù¾Ýid²éÑ¯
	Subject selectByID(int id);
}
