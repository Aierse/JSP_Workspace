<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>---------------기본로케일---------------
<fmt:setBundle basename="com.bundle.myBundle" var="resourceBundle"/>
<p>제목 : <fmt:message key="title" bundle="${resourceBundle}" var="userTitle"></fmt:message>
<p>이름 :	<fmt:message key="username" bundle="${resourceBundle}" var="userName"></fmt:message>
<p>패스워드 : <fmt:message key="password" bundle="${resourceBundle}" var="userPassword"></fmt:message>
<p>---------------변수출력---------------
<p>제목 : ${userTitle}
<p>이름 :	 ${userName}
<p>패스워드 : ${userPassword}
<p>---------------영문로케일---------------
<fmt:setLocale value="en"/>
<fmt:setBundle basename="com.bundle.myBundle_en" var="resourceBundle"/>
<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message>
<p>이름 : <fmt:message key="username" bundle="${resourceBundle}"></fmt:message>
<p>패스워드 : <fmt:message key="password" bundle="${resourceBundle}"></fmt:message>
</body>
</html>