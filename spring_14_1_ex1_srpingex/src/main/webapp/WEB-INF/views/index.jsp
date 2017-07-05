<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <h3>get방식</h3>
 <!-- form 태그, action을 student로 넘긴다. 그럼 컨트롤러에서 student를 받는 request 매핑이 처리한다.  get 방식 이용.-->
	<form action="student" method="get">
		student id : <input type="text" name="id"> <br />
		<input type="submit" value="전송">
	</form>
	
	
	<br/>
	<hr/>
	
	<h3>post방식</h3>
	<!-- form 태그, action을 student로 넘긴다. 그럼 컨트롤러에서 student를 받는 request 매핑이 처리한다.  get 방식 이용.-->
	<form action="student2" method="post">
		student id : <input type="text" name="id"> <br />
		<input type="submit" value="전송">
	</form>

</body>
</html>