package com.yjj.myprofile;

import java.net.http.HttpRequest;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.thymeleaf.util.Validate;

import com.fasterxml.jackson.annotation.JacksonInject.Value;
import com.yjj.myprofile.dao.IDao;
import com.yjj.myprofile.dto.BoardDto;
import com.yjj.myprofile.dto.MemberDto;

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
		
		int checkId = dao.checkIdDao(mid); // 아이디 존재 여부 체크 존재하면 1반환
		if (checkId != 1) {
		
			dao.joinDao(mid, mpw, mname, memail);
			
			// 세션에 로그인 상태 올리기
			HttpSession session = request.getSession();
			session.setAttribute("id", mid);
			session.setAttribute("name", mname);
			
			// ${}사용하게 모델에 실어서 보내기
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
		}
		
		model.addAttribute("checkId", checkId);
		
		return "joinOk";
	}
	
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid); // 아이디 존재 여부 체크 존재하면 1반환
		int checkPw = dao.checkPwDao(mid, mpw); // 아이디와 비밀번호 일치 여부 체크 일치하면 1반환
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);
		
		
		if (checkPw == 1) {
			
						
			MemberDto memberDto = dao.loginInfoDao(mid);
			
			
			// 세션에 아이디 올리기
			HttpSession session = request.getSession();
			session.setAttribute("id", memberDto.getMid());
			session.setAttribute("name", memberDto.getMname());
			
			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
			
			
		}

		return "loginOk";
	}
	
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate(); // 세션 내용 삭제
		
		return "login";
	}
	
	@RequestMapping(value = "/infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sessionId = (String) session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.loginInfoDao(sessionId);
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModify";
	}
	
	
	@RequestMapping(value = "/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.infoModify(request.getParameter("mpw"), request.getParameter("mname"), request.getParameter("memail"), request.getParameter("mid"));
		
		MemberDto memberDto = dao.loginInfoDao(request.getParameter("mid"));
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModifyOk";
	}
	
	
	@RequestMapping(value = "/write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(request.getParameter("qid"), request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> boardDtos = dao.listDao();
		
		
		model.addAttribute("qlist", boardDtos);
		
		return "list";
	}
	
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		BoardDto boardDto = dao.viewDao(qnum);
		
		model.addAttribute("boardDto", boardDto);
		model.addAttribute("boardId", boardDto.getQid());
		
		
		return "qview";
	}
	
	
	@RequestMapping(value = "/boardModify")
	public String boardModify(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String qnum = request.getParameter("qnum");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		dao.boardModify(qname, qcontent, qemail, qnum);
		
		return "redirect:list";
	}
	
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String qnum = request.getParameter("qnum");
		
		dao.deleteDao(qnum);
		
		return "redirect:list";
	}
	
	
}
