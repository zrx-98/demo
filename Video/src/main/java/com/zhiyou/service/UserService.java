package com.zhiyou.service;

import java.util.List;

import com.zhiyou.model.User;

public interface UserService {
	void add(User user);

	void update(User user);

	void delete(int[] id);
	
	User byid(int id);
	
	User byname(String nickname,String password);

	List<User> select();

	List<User> selectlike(String s);
	
	User selectbyname(String email);
}
