<%@ page import="com.bit2025.guestbook.dao.GuestbookDao" %>
<%@ page import="com.bit2025.guestbook.vo.GuestbookVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. form 입력 데이터 추출
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");

	//2. DB 저장
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	new GuestbookDao().insert(vo);

	// 3. index.jsp로 redirect
	response.sendRedirect("/guestbook01");
%>