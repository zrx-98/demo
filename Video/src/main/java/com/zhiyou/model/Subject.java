package com.zhiyou.model;

import java.io.Serializable;

public class Subject implements Serializable{

	private Integer id;
	private String subject_name;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	public Subject(Integer id, String subject_name) {
		this.id = id;
		this.subject_name = subject_name;
	}
	public Subject() {
		
	}
	@Override
	public String toString() {
		return "Subject [id=" + id + ", subject_name=" + subject_name + "]";
	}
	
}
