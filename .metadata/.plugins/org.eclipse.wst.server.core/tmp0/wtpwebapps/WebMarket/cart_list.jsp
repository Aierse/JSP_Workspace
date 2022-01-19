<%@ page import="com.dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.dto.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>장바구니</title>
<script>
	function removeCheck(text) {
		return confirm(text);
	}
</script>
</head>
<body>
	<%
		String cartId = session.getId();
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteAllCart.jsp?cartId=<%=cartId%>" 
						class="btn btn-danger" onclick='return removeCheck("장바구니에 있는 모든 상품을 삭제하시겠습니까?")'>장바구니 비우기</a></td>
					<td align="right"><a href="shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%
					int sum = 0;
					ArrayList<Product> lists = (ArrayList<Product>)session.getAttribute("cartlist");
					if (lists == null) 
						lists = new ArrayList<Product>();
						
					for (Product p : lists) {
						int total = p.getUnitPrice() * p.getQuantity();
						sum += total;
				%>
				<tr>
					<td><%= p.getProductId()%> - <%= p.getPname()%></td>
					<td><%= Product.IntegerToComma(p.getUnitPrice())%></td>
					<td><%= Product.IntegerToComma(p.getQuantity())%></td>
					<td><%= Product.IntegerToComma(total) %></td>
					<td><a href="./removeCart.jsp?id=<%=p.getProductId()%>" class="badge badge-danger" 
						onclick="return removeCheck('선택한 제품을 삭제하시겠습니까?')">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%= Product.IntegerToComma(sum) %></th>
					<th></th>
				</tr>
			</table>
			<a href="./products.jsp" class="btn btn-secondary">&laquo;쇼핑계속하기</a>
			<hr>
			<jsp:include page="footer.jsp"/>
		</div>
	</div>
</body>
</html>