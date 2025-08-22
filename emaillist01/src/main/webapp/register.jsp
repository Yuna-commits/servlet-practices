<%@ page import="com.bit2025.emaillist.vo.EmailVo" %>
<%@ page import="com.bit2025.emaillist.dao.EmailDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 1. form 입력 데이터 추출
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	
	// 2. DB 저장
	EmailVo vo = new EmailVo();	
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmailDao().insert(vo);
	
	// 3. index.jsp로 redirect
	response.sendRedirect("/emaillist01");
%>
<!--  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>등록을 성공했습니다.</h1>
</body>
</html>
-->