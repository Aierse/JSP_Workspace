<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="aierse.EnhancedConnect"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>아이디
				<th>회원이름
				<th>비밀번호
				<th>이메일주소
				<th>휴대폰번호
			</tr>
		</thead>
	<%
		EnhancedConnect ec = new EnhancedConnect();
	
		ResultSet rs = ec.select("SELECT * FROM member");
		
		while (rs.next()) {
	%>
			<tr>
				<td><%= rs.getString("userid") %>
				<td><%= rs.getString("username") %>
				<td><%= rs.getString("password") %>
				<td><%= rs.getString("email") %>
				<td><%= rs.getString("phone") %>
			</tr>
	<%
		}
		ec.close();
	%>
	</table>
</body>
</html>