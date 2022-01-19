<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.dto.EnhancedConnect"%>
<%
	EnhancedConnect ec = new EnhancedConnect();
	String productId = request.getParameter("id");	

	String sql = "delete from product where p_id = ?";
	PreparedStatement pstmt = ec.conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.executeUpdate();
	
	pstmt.close();
	ec.close();
	response.sendRedirect("editProduct.jsp?edit=delete");
%>