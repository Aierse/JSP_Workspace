<%@ page import="java.util.Enumeration" %>
<%@ page import="com.dto.Product" %>
<%@ page import="com.dto.ProductRepository" %>
<%@ page import="com.dto.EnhancedConnect"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String uploadPath = application.getRealPath("/upload");
	int maxSize = 1024 * 1024 * 1024;
	String encoding = "UTF-8";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxSize, 
		encoding, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Integer price = unitPrice.isEmpty() ? 0 : Integer.valueOf(unitPrice);
	long stock = unitsInStock.isEmpty() ? 0 : Long.valueOf(unitsInStock);
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	String filename = multi.getFilesystemName(fname);
	
	EnhancedConnect ec = new EnhancedConnect();
	String sql = "INSET INTO product values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	PreparedStatement pstmt = ec.conn.prepareStatement(sql);

	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setString(4, description);
	pstmt.setString(5, category);
	pstmt.setString(6, manufacturer);
	pstmt.setLong(7, stock);
	pstmt.setString(8, condition);
	pstmt.setString(9, filename);
	
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	ec.close();
	
	response.sendRedirect("products.jsp");
%>