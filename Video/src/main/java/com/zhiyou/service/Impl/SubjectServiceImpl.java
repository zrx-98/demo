package com.zhiyou.service.Impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zhiyou.dao.SubjectDao;
import com.zhiyou.model.Subject;
import com.zhiyou.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService{
	@Autowired
	SubjectDao dao;
	
	public List<Subject> selectAll() {
		return dao.selectAll();
	}

	public Subject selectByID(int id) {
		return dao.selectByID(id);
	}

}
