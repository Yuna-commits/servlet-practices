<%@ page import="com.bit2025.guestbook.dao.GuestbookDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 1. deleteform 입력 데이터 추출
	String sId = request.getParameter("id");
	Long id = Long.parseLong(sId);
	String password = request.getParameter("password");
	
	// 2. Delete
	new GuestbookDao().deleteByIdAndPassword(id, password);
	
	// 3. Redirect
	response.sendRedirect("/guestbook01");
%>