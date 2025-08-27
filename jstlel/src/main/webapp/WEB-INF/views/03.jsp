<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%pageContext.setAttribute("newLine", "\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL Test : c:forEach, c:set, fn:length()</h3>
	
	-- ${fn:length(list) } --
	
	<c:set var="count" value="${fn:length(list) }"></c:set>
	<c:set var="a" value="A"></c:set>
	<ul>
		<c:forEach items="${list }" var="vo" varStatus="status">
		<li>[${count - status.index }] (${status.index } : ${status.count } ${vo.id } : ${vo.name }) </li>
		</c:forEach>
	</ul>
	<p>
		${fn:replace(contents, "가", a) }
		<br>
		${fn:replace(contents, "나", "B") }
	</p>
	<p>
		== 개행 있는 문자열의 처리 ==<br>
		${fn:replace(contents, newLine, "<br>") }
	</p>
</body>
</html>