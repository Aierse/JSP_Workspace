<%@ page import="java.sql.*" %>
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
		String DB_URL = "jdbc:mysql://192.168.1.3/db174434";
		String DB_USER = "dbuser174434";
		String DB_PASSWORD = "ce1234";
		Connection conn;
		Statement stmt;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			stmt = conn.createStatement();
			conn.close();
			out.println("Mysql 연결 성공!!");
		} catch(Exception e){
			out.println(e);
		}
	%>
</body>
</html>