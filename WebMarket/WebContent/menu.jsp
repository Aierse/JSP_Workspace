<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class = "navbar navbar-expand bg-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href = "./welcome.jsp">Home</a>
			</div>
			<div>
				<ul class = "navbar-nav mr-auto">
					<li class = "nav-item"><a class = "nav-link" href = "products.jsp">상품목록</a></li>
					<li class = "nav-item"><a class = "nav-link" href = "addProduct.jsp">상품등록</a></li>
					<li class = "nav-item"><a class = "nav-link" href = "editProduct.jsp?edit=update">상품수정</a></li>
					<li class = "nav-item"><a class = "nav-link" href = "editProduct.jsp?edit=delete">상품삭제</a></li>
				</ul>
				</div>
		</div>
</nav>