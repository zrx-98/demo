package com.zhiyou.service;

import com.zhiyou.model.Admin;

public interface AdminService {

	Admin selectByName(String name,String password);
}
