<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>JSP 내장객체에 저장된 속성 조회하기</h1>
<%
	String value1 = (String)pageContext.getAttribute("A");
	String value2 = (String)request.getAttribute("B");
	String value3 = (String)session.getAttribute("C");
	String value4 = (String)application.getAttribute("D");
%>
<h3>주요 내장객체의 속성 값</h3>
<dl>
	<dt>pageContext의 속성값</dt><dd><%= value1 %></dd>
	<dt>request의 속성값</dt><dd><%= value2 %></dd>
	<dt>session의 속성값</dt><dd><%= value3 %></dd>
	<dt>application의 속성값</dt><dd><%= value4 %></dd>
</dl>