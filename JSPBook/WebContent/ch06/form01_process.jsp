<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
%>
	<p>아이디 : <%= id %>
	<p>비밀번호 : <%= passwd %>
	<p>이름 : <%= name %>
	<p>연락처 : <%= phone1 %> - <%= phone2 %> - <%= phone3 %>
	<p>성별 : <%= gender %>
	<p>취미 : 
		<% 
			if (hobby != null){
				for (String h : hobby) {
					out.println(h + " ");
				}
			}
			
		%>
	<p>가입인사 : <%= comment %>
	<table border="1">
		<tr>
			<th>요청파라미터 이름</th><th>요청파라미터 값</th>
		</tr>
		<%
			Enumeration en = request.getParameterNames();
		
			while(en.hasMoreElements()) {
				String name1 = (String)en.nextElement();
				String paramValue = name1.equals("hobby") ? String.join(" ", request.getParameterValues(name1)) : request.getParameter(name1);
					
				out.println("<tr><td>" + name1 + "</td>");
				out.println("<td>" + paramValue + "</td></tr>");
			}
		%>
	</table>