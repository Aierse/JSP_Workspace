<%@ page import="com.aierse.*"%>
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
		EnhancedConnect ec = new EnhancedConnect();
	
		ResultSet rs = ec.select("SELECT id, title, author FROM book");
		
		while(rs.next()) {
	%>
		<tr>
			<td> <%= rs.getInt(1) %>
			<td> <%= rs.getString(2) %>
			<td> <%= rs.getString(3) %>
		</tr>
	<%
		}
		ec.close();
	%>
	</table>
</body>
</html>