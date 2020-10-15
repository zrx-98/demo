package com.zhiyou.controller;

import java.io.IOException;
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
import com.zhiyou.model.Speaker;
import com.zhiyou.model.Video;
import com.zhiyou.service.CourseService;
import com.zhiyou.service.SpeakerService;
import com.zhiyou.service.VideoService;

@Controller
public class VideoController {
	@Autowired
	VideoService service;
	@Autowired
	SpeakerService Sservice;
	@Autowired
	CourseService Cservice;
	
	@RequestMapping("videoSelect")
	public String select(@RequestParam(value = "n" ,defaultValue = "1")int n , HttpServletRequest req,HttpServletResponse rep){
		PageHelper.startPage(n, 5);
		List<Video> list = service.selectAll();
		List<Speaker> speaker = Sservice.selectAll();
		List<Course> course = Cservice.selectAll();
		PageInfo<Video> info = new PageInfo<Video>(list,5);
		req.setAttribute("q", "videoSelect");
		req.setAttribute("speaker",speaker );
		req.setAttribute("course",course );
		req.setAttribute("list", list);
		req.setAttribute("info",info);
		return "showVideo";
	}
	
	@RequestMapping("videoAdd")
	public String Add(HttpServletRequest req,HttpServletResponse resp){
		List<Video> list = service.selectAll();
		req.setAttribute("list", list);
		return "videoAdd";
	}
	@RequestMapping("Vadd")
	public void add(Video v,HttpServletRequest req,HttpServletResponse resp) throws IOException{
		service.add(v);
		resp.sendRedirect("index"); 
	}
	
	@RequestMapping("Vdelete")
	public String delete(int id,HttpServletRequest req,HttpServletResponse resp){
		service.delete(id);
		return "forward:videoSelect";
	}
	
	@RequestMapping("VselectByID")
	public String selectByID(int id,HttpServletRequest req,HttpServletResponse resp){
		Video byID = service.selectByID(id);
		List<Video> list = service.selectAll();
		req.setAttribute("byID", byID);
		req.setAttribute("list", list);
		return "videoUpdate";
	}
	
	@RequestMapping("Vupdate")
	public String update(Video video,HttpServletRequest req,HttpServletResponse resp){
		service.update(video);
		return "forward:videoSelect";
	}
	
	@RequestMapping("VDeleteAll")
	public String deleteAll(HttpServletRequest req,HttpServletResponse resp){
		String[] i=req.getParameterValues("ids");
		int[] ids=new int[i.length];
		for (int k=0;k<i.length;k++) {
			ids[k]=Integer.valueOf(i[k]);
		}
		service.deleteAll(ids);
		return "forward:videoSelect";
	}
	
	@RequestMapping("videoLikeAll")
	public String videoLikeAll(@RequestParam(value="n",defaultValue="1")int n,Video v,HttpServletRequest req,HttpServletResponse resp){
		PageHelper.startPage(n,5);
		List<Video> list = service.selectLikeAll(v);
		List<Speaker> speaker = Sservice.selectAll();
		List<Course> course = Cservice.selectAll();
		PageInfo<Video> info = new PageInfo<Video>(list,5);
		req.setAttribute("speaker",speaker );
		req.setAttribute("course",course );
			req.setAttribute("q","videoLikeAll");
			req.setAttribute("info", info);
			req.setAttribute("list", list);
			req.setAttribute("vv",v);
		return "showVideo";
	}
}
