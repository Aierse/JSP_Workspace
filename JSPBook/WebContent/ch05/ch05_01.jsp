<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//각각의 내장객체에 속성 저장하기
	
	pageContext.setAttribute("A", "pageContext 속성");
	request.setAttribute("B", "request 속성");
	session.setAttribute("C", "session 속성");
	application.setAttribute("D", "appication 속성");
	
	response.sendRedirect("ch05.jsp");
%>