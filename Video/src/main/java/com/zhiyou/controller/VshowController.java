package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou.model.Course;
import com.zhiyou.model.Subject;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseService;
import com.zhiyou.service.SubjectService;
import com.zhiyou.service.VideoService;

@Controller
public class VshowController {
	@Autowired
	VideoService Vservice;
	@Autowired
	CourseService Cservice;
	@Autowired
	SubjectService Sservice;
	@RequestMapping("Videoshow")
	public String select(int id,HttpServletRequest req,HttpServletResponse rep){
		List<Video> Vlist = Vservice.selectAll();
		List<Course> Clist = Cservice.selectAll();
		Subject subject = Sservice.selectByID(id);
		req.setAttribute("Vlist", Vlist);
		req.setAttribute("Clist", Clist);
		req.setAttribute("subject", subject);
		return "Vshow";
	}
}
