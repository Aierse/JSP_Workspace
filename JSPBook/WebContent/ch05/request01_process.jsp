<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("id");
		String userpwd = request.getParameter("password");
		String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-language");
	%>
	<p>아이디 : <%= userid %>
	<p>패스워드 : <%= userpwd %>
	<p>호스트명 : <%= hostValue %>
	<p>설정된 언어 : <%= alValue %>	
	<p>서버이름 : <%= request.getServerName() %>
</body>
</html>