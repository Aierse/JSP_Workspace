<%@ page import="com.dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.dto.ProductRepository"%>
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
		String id = request.getParameter("id");
	
		if (id == null || id.trim().equals("")) {
			response.sendRedirect("products.jsp");
			return;
		}
		
		ProductRepository dao = ProductRepository.getInstance();
		Product goods = dao.getProductById(id);
		
		if(goods == null) {
			response.sendRedirect("exception/exceptionNoProductId.jsp");
		}
		
		ArrayList<Product> lists = (ArrayList<Product>)session.getAttribute("cartlist");
		
		if (lists == null) {
			lists = new ArrayList<Product>();
			session.setAttribute("cartlist", lists);
		}
		
		boolean isNotInList = true;
		
		for (Product p : lists) {
			if (p.getProductId().equals(id)) {
				p.setQuantity(p.getQuantity() + 1);
				isNotInList = false;
				break; 
			}
		}
		
		if(isNotInList) {
			goods.setQuantity(1);
			lists.add(goods);
		}
		
		response.sendRedirect("product_info.jsp?id=" + id);
	%>
</body>
</html>