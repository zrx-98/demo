package com.zhiyou.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.zhiyou.model.Speaker;
import com.zhiyou.service.SpeakerService;

@Controller
public class SpeakerController {

	@Autowired
	SpeakerService ser;
	
	@RequestMapping("speakerSelect")
	public String select(HttpServletRequest req,HttpServletResponse resp){
		List<Speaker> list=ser.selectAll();
		req.setAttribute("list", list);
		return "showSpeaker";
	}
	
	
	@RequestMapping("speakerAdd")
	public String add(Speaker s,HttpServletRequest req,HttpServletResponse resp){
		ser.add(s);
		return "forward:speakerSelect";
	}
	
	@RequestMapping("speakerDelete")
	public String delete(int id,HttpServletRequest req,HttpServletResponse resp){
		ser.delete(id);
		return "forward:speakerSelect";
	}
	
	@RequestMapping("speakerDeleteAll")
	public String deleteAll(HttpServletRequest req,HttpServletResponse resp){
		String[] i=req.getParameterValues("ids");
		int[] ids=new int[i.length];
		for (int k=0;k<i.length;k++) {
			ids[k]=Integer.valueOf(i[k]);
		}
		ser.deleteAll(ids);
		return "forward:speakerSelect";
	}
	
	//修改页面的数据回填
	@RequestMapping("speakerSelectByID")
	public String SelectByID(int id,HttpServletRequest req,HttpServletResponse resp){
		Speaker s=ser.selectByID(id);
		req.setAttribute("s", s);
		return "updateSpeaker";
	}
	
	//修改
	@RequestMapping("speakerUpdate")
	public String update(Speaker s,HttpServletRequest req,HttpServletResponse resp){
		ser.update(s);
		return "forward:speakerSelect";
	}
	
}
