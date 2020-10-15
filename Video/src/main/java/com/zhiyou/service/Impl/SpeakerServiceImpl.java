package com.zhiyou.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.SpeakerDao;
import com.zhiyou.model.Speaker;
import com.zhiyou.service.SpeakerService;

@Service
public class SpeakerServiceImpl implements SpeakerService{

	@Autowired
	SpeakerDao dao;
	
	public List<Speaker> selectAll() {
		return dao.selectAll();
	}

	public Speaker selectByID(int id) {
		return dao.selectByID(id);
	}

	public void add(Speaker s) {
		dao.add(s);
	}

	public void delete(int id) {
		dao.delete(id);
	}

	public void deleteAll(int[] ids) {
		dao.deleteAll(ids);
	}

	public void update(Speaker s) {
		dao.update(s);
	}

}
