package com.yjj.myprofile.dao;

public interface IDao {

	//맴버 가입 관련 dao 메서드
	
	public void joinDao(String mid, String mpw, String mname, String memail); // 회원가입 메서드
	
	public int checkIdDao(String mid); //회원가입시 기존 id존재여부 체크
	
	
	
	// 질문 게시판 관련 dao 메서드
	
	
}
