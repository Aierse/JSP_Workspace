<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>인증에 성공하였습니다.
	<p>사용자명 : <%= request.getRemoteUser() %>
	<p>인증방법 : <%= request.getAuthType() %>
	<p>로컬주소 : <%= request.getLocalAddr() %>
</body>
</html>