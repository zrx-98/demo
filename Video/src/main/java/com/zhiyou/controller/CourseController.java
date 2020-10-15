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
import com.zhiyou.service.CourseService;

@Controller
public class CourseController {
	
	@Autowired
	CourseService service;
	
	@RequestMapping("courseSelect")
	public String select(@RequestParam(value = "n" ,defaultValue = "1")int n , HttpServletRequest req,HttpServletResponse rep){
		PageHelper.startPage(n, 5);
		List<Course> list = service.selectAll();
		PageInfo<Course> info = new PageInfo<Course>(list,5);
		req.setAttribute("list", list);
		req.setAttribute("info",info);
		return "courseShow";
	}
	
	@RequestMapping("listAdd")
	public String listAdd(HttpServletRequest req,HttpServletResponse resp){
		List<Course> list = service.selectAll();
		req.setAttribute("list", list);
		return "courseAdd";
	}
	
	@RequestMapping("add")
	public String add(Course c,HttpServletRequest req,HttpServletResponse resp){
		service.add(c);
		return "forward:courseSelect";
	}
	
	@RequestMapping("delete")
	public String delete(int id,HttpServletRequest req,HttpServletResponse resp){
		service.delete(id);
		return "forward:courseSelect";
	}
	
	@RequestMapping("selectByID")
	public String selectByID(int id,HttpServletRequest req,HttpServletResponse resp){
		Course byID = service.selectByID(id);
		List<Course> list = service.selectAll();
		req.setAttribute("byID", byID);
		req.setAttribute("list", list);
		return "courseUpdate";
	}
	
	@RequestMapping("update")
	public String update(Course course,HttpServletRequest req,HttpServletResponse resp){
		service.update(course);
		return "forward:courseSelect";
	}
	
	@RequestMapping("courseDeleteAll")
	public String deleteAll(HttpServletRequest req,HttpServletResponse resp){
		String[] i=req.getParameterValues("ids");
		
		System.out.println(i+"***********");
		int[] ids=new int[i.length];
		for (int k=0;k<i.length;k++) {
			ids[k]=Integer.valueOf(i[k]);
		}
		service.deleteAll(ids);
		return "forward:courseSelect";
	}
	
}
