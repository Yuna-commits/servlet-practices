<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String year = request.getParameter("year");
String gender = request.getParameter("gender");
String profile = request.getParameter("profile");
String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email%><br>
	<%=password%><br>
	<%=year%><br>
	<%=gender%><br>

<pre>
<%=profile%><br>
</pre>

	<ul>
		<%
			for (String hobby : hobbies) {
		%>
			<li><%=hobby %></li>
		<%
			}
		%>
	</ul>
</body>
</html>