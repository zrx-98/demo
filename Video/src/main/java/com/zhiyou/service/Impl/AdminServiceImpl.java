package com.zhiyou.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.AdminDao;
import com.zhiyou.model.Admin;
import com.zhiyou.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao dao;
	public Admin selectByName(String name, String password) {
		
		return dao.selectByName(name, password);
	}

	

}
