<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <h3>get���</h3>
 <!-- form �±�, action�� student�� �ѱ��. �׷� ��Ʈ�ѷ����� student�� �޴� request ������ ó���Ѵ�.  get ��� �̿�.-->
	<form action="student" method="get">
		student id : <input type="text" name="id"> <br />
		<input type="submit" value="����">
	</form>
	
	
	<br/>
	<hr/>
	
	<h3>post���</h3>
	<!-- form �±�, action�� student�� �ѱ��. �׷� ��Ʈ�ѷ����� student�� �޴� request ������ ó���Ѵ�.  get ��� �̿�.-->
	<form action="student2" method="post">
		student id : <input type="text" name="id"> <br />
		<input type="submit" value="����">
	</form>

</body>
</html>