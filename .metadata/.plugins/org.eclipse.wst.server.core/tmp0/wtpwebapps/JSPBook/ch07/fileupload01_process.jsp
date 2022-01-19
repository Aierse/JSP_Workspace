<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uploadPath = application.getRealPath("/upload");
	int maxSize = 1024 * 1024 * 1024;
	String encoding = "UTF-8";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, maxSize, 
			encoding, new DefaultFileRenamePolicy());
	
	Enumeration params = multi.getParameterNames();
	
	while (params.hasMoreElements()){
		String name = (String)params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " : " + value + "<br>");
	}
	
	out.println("-----------------------------<br>");
	//input type 속성값이 file로 설정된 요청 파라미터를 반환
	Enumeration files = multi.getFileNames();
	
	while(files.hasMoreElements()){
		String name = (String)files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		
		File file = multi.getFile(name);
		out.println("요청파라미터 이름 : " + name + "<br>");
		out.println("파일 이름 : " + filename + "<br>");
		out.println("저장파일 이름 : " + original + "<br>");
		out.println("콘텐츠 유형 : " + type + "<br>");
		out.println("파일 크기 : " + file.length() + "<br>");
	}
%>