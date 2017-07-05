# Get방식 & Post방식

<hr/>

<br/>
<br/>

# Get방식Post방식
- RequestMapping에서의 Get방식&Post방식을 사용가능
- form태그를 이용해 클라이언트로 부터 action을 컨트롤러로 넘기고 
- 이에 해당하는 action을 통해 데이터를 Model에 표현

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/theory_get_post.PNG?raw=true)

<br/>

## /index url매핑 -> index.jsp

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/Homecontroller1_index.PNG?raw=true)

## index.jsp

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/index_jsp.PNG?raw=true)

## 결과

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/index_jsp.PNG?raw=true)

<br/>

# Get방식url매핑 
- index.jsp로 부터 넘어온 action값을 처리하고 입력받은 데이터를 HttpServletRequest를 통해 받아옴
- 이 데이터를 studentId(Model)에 표현
## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/Homecontroller1_index.PNG?raw=true)

## 결과

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/result_get.PNG?raw=true)

<br/>

# Post방식url매핑 
- index.jsp로 부터 넘어온 action값을 처리하고 입력받은 데이터를 HttpServletRequest를 통해 받아옴
- 이 데이터를 studentId(Model)에 표현 (ModelAndView객체를 직접 만들어서 전달함)
## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/Homecontroller1_post.PNG?raw=true)

## 결과

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/result_post.PNG?raw=true)

<br/>

## Model 부분 : student/studentId

## ![사진](https://github.com/leedongjoon121/SpringFramework_study2/blob/lecture1/document_img/student_studentId_jsp.PNG?raw=true)

