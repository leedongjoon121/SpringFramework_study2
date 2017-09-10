package com.javalec.spring_mybatis.dao;

import java.util.ArrayList;

import com.javalec.spring_mybatis.dto.ContentDto;

 // �� sql ������ �������̽�
public interface IDao { // ContentDao���� ������
	
	public ArrayList<ContentDto> listDao(); // list (�۸��)
	public void writeDao(String mWriter, String mContent); 
	public ContentDto viewDao(String strID);  // view
	public void deleteDao(String bId); // delete
	
}
