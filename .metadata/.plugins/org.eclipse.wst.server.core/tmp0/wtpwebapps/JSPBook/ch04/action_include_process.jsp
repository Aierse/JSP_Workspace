<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>현재 페이지 include 페이지입니다.</h3>
	id : <%= request.getParameter("id") %><p>
	password : <%= request.getParameter("password") %><p>
	Today is : <%= request.getParameter("date") %>
	<h3>두번째 페이지입니다.</h3>
</body>
</html>