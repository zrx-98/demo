package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhiyou.model.Course;
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Subject;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseService;
import com.zhiyou.service.SpeakerService;
import com.zhiyou.service.SubjectService;
import com.zhiyou.service.VideoService;

@Controller
public class PlayController {
	@Autowired
	VideoService Vservice;
	@Autowired
	CourseService Cservice;
	@Autowired
	SubjectService Sservice;
	@Autowired
	SpeakerService Spservice;
	@RequestMapping("Playshow")
	public String select(int id,int Vid,int Cid,int Sid,HttpServletRequest req,HttpServletResponse rep){
		Video video = Vservice.selectByID(Vid);
		List<Video> Vlist = Vservice.selectAll();
		List<Course> Clist = Cservice.selectAll();
		Course course = Cservice.selectByID(Cid);
		Subject subject = Sservice.selectByID(id);
		List<Speaker> Splist = Spservice.selectAll();
		Speaker speaker = Spservice.selectByID(Sid);
		req.setAttribute("video", video);
		req.setAttribute("Vlist", Vlist);
		req.setAttribute("Clist", Clist);
		req.setAttribute("course", course);
		req.setAttribute("subject", subject);
		req.setAttribute("Splist", Splist);
		req.setAttribute("speaker", speaker);
		return "play";
	}
}
