<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="aierse.EnhancedConnect"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	
	String phone = phone1 + "-" + phone2 + "-" + phone3;
	
	String sql = "INSERT INTO member VALUES(?,?,?,?,?)";
	EnhancedConnect ec = new EnhancedConnect();
	
	PreparedStatement pstmt = ec.conn.prepareStatement(sql);
	
	pstmt.setString(1, id);
	pstmt.setString(2, passwd);
	pstmt.setString(3, name);
	pstmt.setString(4, email);
	pstmt.setString(5, phone);
	
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	ec.close();
	
	response.sendRedirect("select.jsp");
%>