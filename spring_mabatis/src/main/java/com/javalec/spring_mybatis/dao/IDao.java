package com.javalec.spring_mybatis.dao;

import java.util.ArrayList;

import com.javalec.spring_mybatis.dto.ContentDto;

 // 각 sql 쿼리별 인터페이스
public interface IDao { // ContentDao에서 구현함
	
	public ArrayList<ContentDto> listDao(); // list (글목록)
	public void writeDao(String mWriter, String mContent); 
	public ContentDto viewDao(String strID);  // view
	public void deleteDao(String bId); // delete
	
}
