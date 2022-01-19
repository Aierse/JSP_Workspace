<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.dto.Product"%>
<%@ page import="com.dto.ProductRepository"%>

<%
	String id = request.getParameter("id");

	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	Product product = dao.getProductById(id);
	
	if (product == null) 
		response.sendRedirect("exception/exceptionNoProductId.jsp");

	ArrayList<Product> lists = (ArrayList<Product>)session.getAttribute("cartlist");
	
	Product remove = null;
	
	for (Product p : lists) {
		if (p.getProductId().equals(id)) {
			remove = p;
			break;
		}
	}
	if (remove != null)
		lists.remove(remove);

	response.sendRedirect("cart_list.jsp");
%>