package com.zhiyou.dao;

import org.apache.ibatis.annotations.Param;

import com.zhiyou.model.Admin;

public interface AdminDao {
	Admin selectByName(@Param("username")String username,@Param("password")String password);
}
