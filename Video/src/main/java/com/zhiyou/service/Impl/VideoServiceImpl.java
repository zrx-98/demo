package com.zhiyou.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.VideoDao;
import com.zhiyou.model.Video;
import com.zhiyou.service.VideoService;
@Service
public class VideoServiceImpl implements VideoService{
	@Autowired
	VideoDao dao;

	public void add(Video v) {
		dao.add(v);
	}

	public void update(Video v) {
		dao.update(v);
	}

	public void delete(int id) {
		dao.delete(id);
	}

	public List<Video> selectAll() {
		return dao.selectAll();
	}

	public Video selectByID(int id) {
		return dao.selectByID(id);
	}

	public List<Video> select(Video v) {
		return dao.select(v);
	}

	public List<Video> selectLikeAll(Video v) {
		return dao.selectLikeAll(v);
	}

	public void deleteAll(int[] video_s) {
		dao.deleteAll(video_s);
	}
	
}
