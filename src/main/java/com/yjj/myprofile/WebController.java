package com.yjj.myprofile;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yjj.myprofile.dao.IDao;

@Controller
public class WebController {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	

	@RequestMapping(value = "/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		
		return "profile";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {
		
		return "contact";
	}

	@RequestMapping(value = "/login")
	public String login() {
		
		return "login";
	}

	@RequestMapping(value = "/join")
	public String join() {
		
		return "join";
	}

	@RequestMapping(value = "/question")
	public String question() {
		
		return "question";
	}
	
	// join에서 post 방식으로 넘겨줬으니 post로 받아야한다
	@RequestMapping(value = "/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model ) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);
		if (checkId != 1) {
		
			dao.joinDao(mid, mpw, mname, memail);
			
			// 세션에 로그인 상태 올리기
			HttpSession session = request.getSession();
			session.setAttribute("id", mid);
			
			// ${}사용하게 모델에 실어서 보내기
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
		}
		
		model.addAttribute("checkId", checkId);
		
		return "joinOk";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
