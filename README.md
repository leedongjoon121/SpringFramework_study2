# Spring 유효성 검사
- Validator를 이용한 검증
- javascript를 이용해 클라이언트에서 유효성을 검사할수도 있지만, 서버단에서 유효성검사 가능

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1theory_1.PNG?raw=true)

<br/>

## 원리
- validator 클래스를 오버라이딩하여 유효성검사를 한다
- 유효성 검사후 정상이면 => createDonePage, 비정상이면 => createPage
## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1theory_2.PNG?raw=true)

<br/>

## StudentController 클래스
- 초기에 /studentForm url로 접근후 ->  form 태그를 통해 값을 입력받고 -> /student/create 액션으로 매핑
- 이후 넘어온 데이터를 바탕으로 유효성검사 진행

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_StudentController.PNG?raw=true)

<br/>

## Studentclass
- getter/setter

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_Studentclass.PNG?raw=true)

<br/>

## ☆★☆★ StudentValidator 클래스 ☆★☆★
- Validator 인터페이스 구현부분
- 커멘드 객체로부터 받은 obj 를 Student 타입으로 변경
- 유효성 검사 부분을 구현하고 , error 메세지 지정

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_StudentValidator.PNG?raw=true)

<br/>

## createPage.jsp
- 사용자로 부터 값을 입력받는 form태그로 구성

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_createPage_jsp.PNG?raw=true)

<br/>

## createDonePage
- 입력받은 값이 유효성 검사 결과 통과되었을 경우 입력값 출력 페이지

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_createDonePage_jsp.PNG?raw=true)

<br/>

## Form => createPage.jsp

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_result_form.PNG?raw=true)

<br/>

## Data => createDonePage.jsp

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_result_data.PNG?raw=true)


<br/>

## Error => console 확인

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture2/document_img/1_result_error.PNG?raw=true)
