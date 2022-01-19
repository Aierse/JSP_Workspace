<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "person" class = "ch04.com.dao.Person" />
	<%
		person.setId(20174434);
		person.setName("조윤혁");
	%>
	
	ID : <%= person.getId() %><p>
	Name : <%= person.getName() %><p>
	
	<jsp:setProperty property = "id" name = "person" value = "20211006"/><p>
	<jsp:setProperty property = "name" name = "person" value = "이순신"/>
	
	ID : <jsp:getProperty property = "id" name = "person"/>
	Name : <jsp:getProperty property = "name" name = "person"/>
</body>
</html>