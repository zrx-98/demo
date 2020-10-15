package com.zhiyou.model;

import java.io.Serializable;

public class Admin implements Serializable{
	
	private Integer id;
	private String username;
	private String password;
	private String roles;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoles() {
		return roles;
	}
	public void setRoles(String roles) {
		this.roles = roles;
	}
	public Admin(Integer id, String username, String password, String roles) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.roles = roles;
	}
	public Admin() {
		
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", roles=" + roles + "]";
	}
	
	

}
