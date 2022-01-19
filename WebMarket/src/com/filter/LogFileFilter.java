package com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogFileFilter implements Filter {
	PrintWriter writer;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
		
		String filename = filterConfig.getInitParameter("filename");
		
		if (filename == null)
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
	
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);

		} catch(IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		writer.println("접속한 클라이언트 IP : " + request.getRemoteAddr());
		writer.println("접근 URL 경로 : " + getURLPath(request));
	
		writer.println("요청처리 시작 시간 : " + getCurrentTime());
		long start = System.currentTimeMillis();
		chain.doFilter(request, response);
		writer.println("요청처리 종료 시간 : " + getCurrentTime());
		long end = System.currentTimeMillis();
		writer.println("요청처리 소요 시간 : " + (end - start) + "ms");
		writer.println("----------------------------------------");
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
		writer.close();
	}
	
	private String getURLPath(ServletRequest request) {
		HttpServletRequest req = request instanceof HttpServletRequest ? (HttpServletRequest)request : null;
		
		String currentPath = req.getRequestURI();
		String queryString = req.getQueryString();
		
		queryString = queryString == null ? "" : "?" + queryString;
		
		return currentPath + queryString;
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		
		return formatter.format(calendar.getTime());
	}
}
