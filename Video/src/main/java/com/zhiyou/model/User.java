package com.zhiyou.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable{
	private Integer id;
	private String email;
	private String phoneNum;
	private String password;
	private String code;
	private String nickname;
	private String sex;
	private String birthday;
	private String address;
	private String imgUrl;
	private Timestamp createTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", phoneNum=" + phoneNum + ", password=" + password + ", code="
				+ code + ", nickname=" + nickname + ", sex=" + sex + ", birthday=" + birthday + ", address=" + address
				+ ", imgUrl=" + imgUrl + ", createTime=" + createTime + "]";
	}
	public User(Integer id, String email, String phoneNum, String password, String code, String nickname, String sex,
			String birthday, String address, String imgUrl, Timestamp createTime) {
		super();
		this.id = id;
		this.email = email;
		this.phoneNum = phoneNum;
		this.password = password;
		this.code = code;
		this.nickname = nickname;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
		this.imgUrl = imgUrl;
		this.createTime = createTime;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
