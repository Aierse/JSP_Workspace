<%@ page import="java.util.ArrayList"%>
<%@ page import="com.dto.Product"%>
<%@ page import="com.dto.ProductRepository"%>
<%@ page import="com.dto.EnhancedConnect"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%
				EnhancedConnect conn = new EnhancedConnect("jdbc:mysql://localhost/WebMarketDB", "root", "root");
				
				ResultSet rs = conn.select("SELECT * FROM product");
				while(rs.next()) {
			%>
					<div class = "col-md-3">
						<img alt="이미지입니다." src="<%= request.getContextPath() %>/upload/<%= rs.getString("p_filename") %>" style="width:100%">
						<h3><%= rs.getString("p_name") %></h3>
						<h3><%= rs.getString("p_description") %></h3>
						<h3><%= String.format("%,d", rs.getInt("p_UnitPrice")) %>원</h3>
						<p><a href='./product_info.jsp?id=<%= rs.getString("p_id") %>' class = "btn btn-secondary" role="button">상세정보&raquo;</a>
					</div>
			<%
				}
				conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>