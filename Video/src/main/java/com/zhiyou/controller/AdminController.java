package com.zhiyou.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.zhiyou.model.Admin;
import com.zhiyou.service.AdminService;
import com.zhiyou100.util.MD5Utils;

@Controller
public class AdminController {
	@Autowired(required=true)
	AdminService service;
	
	@RequestMapping("AdminLogin")
	public String login(String username,String password,HttpServletRequest req,HttpServletResponse resp){
		Admin a = service.selectByName(username, MD5Utils.md5(password));
		req.getSession().setAttribute("admin",a);
		if(a==null){
			return "login";
		}
		return "show";
	}

	@RequestMapping("exit")
	public void exit(HttpServletRequest req, HttpServletResponse res) {
		req.getSession().setAttribute("ADMIN", null);
		req.getSession().setAttribute("user", null);
		try {
			res.sendRedirect("index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
}
