package com.zhiyou.dao;

import java.util.List;

import com.zhiyou.model.Subject;

public interface SubjectDao {
	List<Subject> selectAll();
	//����id��ѯ
	Subject selectByID(int id);
}
