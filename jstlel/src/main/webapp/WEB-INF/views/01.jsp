<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>값출력</h4>
	iVal : ${iVal } <br>
	lVal : ${lVal } <br>
	fVal : ${fVal } <br>
	bVal : ${bVal } <br>
	sVal : ${sVal } <br>
	
	<h4>산술연산</h4>
	${1 + 2 * 10 } <br>
	iVal + 10 : ${iVal + 10 } <br>
	
	<h4>관계연산</h4>
	iVal == 10 : ${iVal == 10 } <br>
	lVal < 20 : ${lVal < 20 } <br>
	obj == null : ${obj == null } <br>
	empty obj : ${empty obj } <br>
	obj != null : ${obj != null } <br>
	not empty obj : ${not empty obj } <br>
	
		
	<h4>논리연산</h4>
	iVal != 10 && lVal >= 10 : ${iVal != 10 && lVal >= 10 } <br>
	iVal != 10 || lVal >= 10 : ${iVal != 10 || lVal >= 10 } <br>
	
	<h4>Literal</h4>
	${1 } <br>
	${'hello, world' } <br>
	${true } <br>
	
	<h4>Object</h4>
	obj : ${obj } <br>
	user.id(= vo.getId()) : ${user.id } <br>
	user.name(= vo.getName()) : ${user.name } <br>
	
	<h4>Map</h4>
	map.iVal(= map.get("iVal")) : ${map.iVal } <br>
	map.sVal(= map.get("sVal")) : ${map.sVal } <br>
	map.bVal(= map.get("bVal")) : ${map.bVal } <br>
	
	<h4>요청 파라미터</h4>
	request.getParameter("no") <br>
	param.no <br>
	-> ${param.no } <br>
	request.getParameter("name") <br>
	param.name <br>
	-> ${param.name } <br>
	
	<h4>Context Path</h4>
	pageContext.request.contextPath <br>
	request.getContextPath() <br>
	-> ${pageContext.request.contextPath } <br>
	
</body>
</html>