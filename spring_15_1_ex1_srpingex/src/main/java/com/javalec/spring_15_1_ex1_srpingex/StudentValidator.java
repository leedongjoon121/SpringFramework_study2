package com.javalec.spring_15_1_ex1_srpingex;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class StudentValidator implements Validator { // Validator 인터페이스 구현 부분

	@Override
	public boolean supports(Class<?> arg0) {
		return Student.class.isAssignableFrom(arg0);  // 내가 검증할 객체의 클래스 타입 정보 => Student 커멘드 객체
	}

	@Override
	public void validate(Object obj, Errors errors) { // ☆★☆★☆★ 우리가 구현해야 할 Validate 메서드 ☆★☆★☆★
		            // obj는 커멘드 객체가 들어온다. 
		System.out.println("validate()");
		Student student = (Student)obj; // 내가 원하는 타입으로 변경
		
		String studentName = student.getName(); // 이름을 리턴받고
		if(studentName == null || studentName.trim().isEmpty()) { // 널이거나 앞뒤 잘랐을때 비었음(입력x)
			System.out.println("studentName is null or empty");
			errors.rejectValue("name", "trouble"); // name 에 trouble 할당
		}
		
		int studentId = student.getId(); // id
		if(studentId == 0) { // 입력을 안했을 경우
			System.out.println("studentId is 0");
			errors.rejectValue("id", "trouble");
		}
	}
	
}
