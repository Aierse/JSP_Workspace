<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%@ include file = "./menu.jsp" %>
	<%!
		String greeting = "Welcome to Web Shopping Mall";
		String tagling = "Welcome to Web Market!";
	%>
	
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3"><%=greeting %></h1>
		</div>
	</div>
	<main role = "main">
		<div class = "container">
			<div class = "text-center">
				<h3><%=tagling %></h3>
			</div>
		</div>
	</main>
	<%
		response.setIntHeader("Refresh", 1);
		java.util.Date nowTime = new java.util.Date();
		SimpleDateFormat st = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
	%>
	
	현재 접속시간 : <%= nowTime %><br>
	현재 접속시간 : <%= nowTime %><br>
	<%@ include file = "./footer.jsp" %>
</body>
</html>