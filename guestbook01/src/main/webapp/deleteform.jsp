<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 1. 쿼리 스트링으로 들어온 id 추출
	String sId = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="/guestbook01/delete.jsp">
	<input type='hidden' name="id" value="<%= sId%>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="확인"></td>
		</tr>
		<tr>
			<td colspan="3"><a href="/guestbook01">방명록으로 돌아가기</a></td>
		</tr>
		</table>
	</form>
</body>
</html>