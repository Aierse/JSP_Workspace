<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>해당 페이지는 첫번째 페이지입니다.</h2>
	<jsp:forward page = "action_forward_process.jsp" />
	
	Today is : <%= new java.util.Date() %>
	
	<h2>페이지가 오는지 확인</h2>
</body>
</html>