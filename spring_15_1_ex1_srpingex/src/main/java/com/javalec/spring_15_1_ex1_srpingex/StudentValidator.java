package com.javalec.spring_15_1_ex1_srpingex;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class StudentValidator implements Validator { // Validator �������̽� ���� �κ�

	@Override
	public boolean supports(Class<?> arg0) {
		return Student.class.isAssignableFrom(arg0);  // ���� ������ ��ü�� Ŭ���� Ÿ�� ���� => Student Ŀ��� ��ü
	}

	@Override
	public void validate(Object obj, Errors errors) { // �١ڡ١ڡ١� �츮�� �����ؾ� �� Validate �޼��� �١ڡ١ڡ١�
		            // obj�� Ŀ��� ��ü�� ���´�. 
		System.out.println("validate()");
		Student student = (Student)obj; // ���� ���ϴ� Ÿ������ ����
		
		String studentName = student.getName(); // �̸��� ���Ϲް�
		if(studentName == null || studentName.trim().isEmpty()) { // ���̰ų� �յ� �߶����� �����(�Է�x)
			System.out.println("studentName is null or empty");
			errors.rejectValue("name", "trouble"); // name �� trouble �Ҵ�
		}
		
		int studentId = student.getId(); // id
		if(studentId == 0) { // �Է��� ������ ���
			System.out.println("studentId is 0");
			errors.rejectValue("id", "trouble");
		}
	}
	
}
