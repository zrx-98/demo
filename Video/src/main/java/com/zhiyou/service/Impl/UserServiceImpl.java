package com.zhiyou.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.UserDao;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao dao;

	public void add(User user) {
		dao.add(user);

	}

	public void update(User user) {
		dao.update(user);

	}

	public void delete(int[] id) {
		dao.delete(id);

	}

	public User byid(int id) {

		return dao.byid(id);
	}

	public List<User> select() {

		return dao.select();
	}

	public List<User> selectlike(String s) {
		List<User> list = dao.selectlike(s);
		if (list != null) {
			for (User user : list) {
				return list;
			}

		}

		return list;
	}

	public User byname(String nickname, String password) {
		
		return dao.byname(nickname, password);
	}

	public User selectbyname(String email) {
		
		return dao.selectbyname(email);
	}


}
