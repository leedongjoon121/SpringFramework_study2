package com.javalec.spring_15_1_ex1_srpingex;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

	@RequestMapping("/studentForm")
	public String studentForm() {
		return "createPage"; // createPage.jsp�� ���� 
	}
	
	@RequestMapping("/student/create") //createPage�κ��� ���� ���� �׼�
	public String studentCreate(@ModelAttribute("student") Student student, BindingResult result) {
		          // student Ŭ�����κ��� �Ҵ� �ް�,  BindingResult: validator�� ��ȿ�� �˻縦 �ϰ� �� ������� ��� ����
		
		String page = "createDonePage"; // ������ ������� => createDonePage.jsp 
		
		StudentValidator validator = new StudentValidator();
		validator.validate(student, result);
		if(result.hasErrors()) {
			page = "createPage";
		}
		
		return page;
	}
}
