<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="j_security_check" method="POST">
		<p>Username : <input type="text" name="j_username">
		<p>Password : <input type="password" name="j_password">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>