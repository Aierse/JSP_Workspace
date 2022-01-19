<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.dto.Product"%>
<%@ page import="com.dto.ProductRepository"%>

<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("cart_list.jsp");
		return;
	}

	session.invalidate();
	
	response.sendRedirect("cart_list.jsp");
%>