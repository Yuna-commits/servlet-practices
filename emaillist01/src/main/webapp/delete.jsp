<%@ page import="com.bit2025.emaillist.dao.EmailDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 1. 쿼리 스트링으로 들어온 삭제 id 추출
	String sId = request.getParameter("id");
	Long id = Long.parseLong(sId);
	
	// 2. Delete
	new EmailDao().deleteById(id);
	
	// 3. Redirect
	response.sendRedirect("/emaillist01");
%>