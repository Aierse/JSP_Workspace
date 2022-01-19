<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 선언문태그 : 변수나 메서드 정의시 사용(전역변수, 전역메서드)-->
	<!-- 서블릿으로 변환시 _jspService()메서드 외부에 배치 -->
	<%!
		int data = 50;
		int sum(int a, int b){
			return a + b;
		}
		
		String makeToLower(String str){
			return str.toLowerCase();
		}
	%>
	
	<!-- 스크립틀릿태그 : 자바로직코드를 작성시 사용 -->
	<!-- 서블릿으로 변환시 _jspService()메서드 내부에 배치 -->
	<%
		out.println("data : " + data + "<br>");
		out.println("2 + 3 : " + sum(2, 3) + "<br>");
		out.println("JO YUN HYUK" + "<br>");
		
		int count = 0; //지역변수
		out.println("count : " + ++count + "<br>");
		
		for (int i = 0; i <= 10; i++){
			if (i %2 == 0)
				out.println("i : " + i + "<br>");
		}
	%>
	
	<!-- 표현문태그 : 웹브라우저에 출력할 부분을 표현, 기본데이터타입과 자바객체타입도 사용가능 -->
	count : <%= count++ %><br>
	data : <%= data %><br>
	소문자 변환 : <%= makeToLower("Jo YUN HYUK") %><br>
	Today's date : <%= new java.util.Date() %><br>
	Today's date : <%= Calendar.getInstance().getTime() %><br>
</body>
</html>