package com.yjj.myprofile.dao;

import com.yjj.myprofile.dto.MemberDto;

public interface IDao {

	//맴버 가입 관련 dao 메서드
	
	public void joinDao(String mid, String mpw, String mname, String memail); // 회원가입 메서드
	
	public int checkIdDao(String mid); //회원가입시, 로그인시 기존 id존재여부 체크
	
	public int checkPwDao(String mid, String mpw); // 로그인시 아이디와 비밀번호 일치여부
	
	public MemberDto loginInfoDao(String mid); // 로그인한 회원의 모든 정보를 DB에서 가져오는 메서드
	
	// 질문 게시판 관련 dao 메서드
	
	
}
