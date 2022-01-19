<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="aierse.EnhancedConnect"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복 검사</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String sql = "SELECT userid FROM member WHERE userid = ?";
		
		EnhancedConnect ec = new EnhancedConnect();
		
		PreparedStatement pstmt = ec.conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
	%>
	<p><%= rs.next() ? "중복된 아이디입니다." : "사용가능한 아이디입니다."%>
	<%
		if (pstmt != null)
			pstmt.close();
		ec.close();
	%>
</body>
</html>