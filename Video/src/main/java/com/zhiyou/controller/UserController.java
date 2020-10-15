package com.zhiyou.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
import com.zhiyou100.util.MD5Utils;

@Controller
public class UserController {
	@Autowired
	UserService se;

	@RequestMapping("Userlogin")
	public void login(String email, String password, HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		User user = se.byname(email, MD5Utils.md5(password));
		if (user != null) {
			// req.setAttribute("user", user);
			req.getSession().setAttribute("user", user);

			res.getWriter().write("ok");

		} else {
			res.getWriter().write("no");
		}

	}

	@RequestMapping("Userbyid")
	public String byid(int id, HttpServletRequest req, HttpServletResponse res) {
		User user = se.byid(id);
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		req.setAttribute("user", user);
		return "person";
	}

	@RequestMapping("Userbyid2")
	public String byid2(int id, HttpServletRequest req, HttpServletResponse res) {
		User user = se.byid(id);
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		req.setAttribute("user", user);
		return "updateUser";
	}

	@RequestMapping("Userbyid3")
	public String byid3(int id, HttpServletRequest req, HttpServletResponse res) {
		User user = se.byid(id);
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		req.setAttribute("user", user);
		return "updateMima";
	}

	@RequestMapping("Userbyid4")
	public String byid4(int id, HttpServletRequest req, HttpServletResponse res) {	
		User user = se.byid(id);
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		req.setAttribute("user", user);
		return "updateUserHead";
	}

	@RequestMapping("Userbyid5")
	public void byid5(String name, int id, HttpServletRequest req, HttpServletResponse res) throws IOException {
		User user = se.byid(id);
		if (user.getPassword().equals(MD5Utils.md5(name))) {
			res.getWriter().write("ok");
			
		} else {
			res.getWriter().write("no");
		}
	}

	@RequestMapping("updateUser")
	public String update(User user, HttpServletRequest req, HttpServletResponse res) {
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		se.update(user); 
		return "forward:Userbyid";
	}

	@RequestMapping("updateUserMima")
	public String updateMima(User user, HttpServletRequest req, HttpServletResponse res) {
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		se.update(user);
		return "forward:Userbyid";
	}

	@RequestMapping("upload")
	public String upload(MultipartFile file, HttpServletRequest req, HttpServletResponse req1) throws IOException {
		// 文件类型
		System.out.println(file.getContentType());
		// 文件大小
		System.out.println(file.getSize());
		// 文件名称
		System.out.println(file.getOriginalFilename());
		req.getSession().setAttribute("file", file);
		// 准备输入流
		/*
		 * InputStream in = file.getInputStream(); // 准备输出流 FileOutputStream os
		 * = new FileOutputStream("E:/upload/" + file.getOriginalFilename());
		 * 
		 * IOUtils.copy(in, os); in.close(); os.close();
		 */
		return "forward:upload2";
	}

	@RequestMapping("upload2")
	public String upload2(User user, MultipartFile file, HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		String password = MD5Utils.md5(user.getPassword());
		user.setPassword(password);
		file.transferTo(new File("D:/video/" + file.getOriginalFilename()));
		user.setImgUrl("/img/" + file.getOriginalFilename());
		se.update(user);
		req.setAttribute("user", user);
		return "forward:Userbyid";
	}

	@RequestMapping("addUser")
	public void add(User user, HttpServletRequest req, HttpServletResponse res) throws IOException {
		user.setPassword(MD5Utils.md5(user.getPassword()));
		se.add(user);
		res.sendRedirect("index.jsp");
	}

	@RequestMapping("selectbyname")
	public void byemail(String name, HttpServletRequest req, HttpServletResponse res) {
		User user = se.selectbyname(name);
		if (user != null) {
			try {
				res.getWriter().write("no");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				res.getWriter().write("ok");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
