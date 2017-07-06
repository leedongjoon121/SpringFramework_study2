package com.javalec.spring_15_1_ex1_srpingex;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {

	@RequestMapping("/studentForm")
	public String studentForm() {
		return "createPage"; // createPage.jsp로 매핑 
	}
	
	@RequestMapping("/student/create") //createPage로부터 리턴 받은 액션
	public String studentCreate(@ModelAttribute("student") Student student, BindingResult result) {
		          // student 클래스로부터 할당 받고,  BindingResult: validator가 유효성 검사를 하고 난 결과물이 담겨 있음
		
		String page = "createDonePage"; // 문제가 없을경우 => createDonePage.jsp 
		
		StudentValidator validator = new StudentValidator();
		validator.validate(student, result);
		if(result.hasErrors()) {
			page = "createPage";
		}
		
		return page;
	}
}
