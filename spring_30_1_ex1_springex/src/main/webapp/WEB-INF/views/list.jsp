<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 
<link href="webjars/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet" />
-->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id = "container">
<table class = "table" width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>번호</td>
		<td>작성자</td>
		<td>내용</td>
		<td>삭제</td>
	<tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.mId}</td>
		<td>${dto.mWriter}</td>
		<td>${dto.mContent}</td>
		<td><a href="delete?mId=${dto.mId}">X</a></td>
	<tr>
	</c:forEach>
</table>
<p><a href="writeForm">글작성</a></p>

</div>
<!-- 
<script src="webjars/jquery/2.1.4/jquery.min.css" ></script>
<script src="webjars/bootstrap/3.3.6/css/bootstrap.css" ></script>
 -->
</body>
</html>