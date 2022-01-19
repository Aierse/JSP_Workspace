<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
		<tr>
			<th>id</th>
			<th>제목</th>
			<th>저자</th>
		</tr>
	<%
	String DB_URL = "jdbc:mysql://192.168.1.3/db174434";
	String DB_USER = "dbuser174434";
	String DB_PASSWORD = "ce1234";
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);;
	Statement stmt = conn.createStatement();;
	
	
	try {
		ResultSet rs = stmt.executeQuery("SELECT id, title, author FROM book");
		
		while(rs.next()) {
	%>
		<tr>
			<td> <%= rs.getInt(1) %>
			<td> <%= rs.getString(2) %>
			<td> <%= rs.getString(3) %>
		</tr>
	<%
		}
		stmt.close();
		conn.close();
	} catch (Exception e) {
		out.println(e);
		return;
	}
	%>
	</table>
</body>
</html>