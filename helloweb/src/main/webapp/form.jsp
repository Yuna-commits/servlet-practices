<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join.jsp" method="post">
		<label>이메일</label> 
		<input type="text" name="email">
		<br>
		<label>비밀번호</label>
		<input type="password" name="password">
		<br>
		<br>
		<label>생년</label>
		<select name="year">
			<option>2002</option>
			<option>2003</option>
			<option>2004</option>
		</select>
		<br>
		<br>
		<label>성별</label>
		남 <input type="radio" name="gender" value="male">
		여 <input type="radio" name="gender" value="female">
		<br>
		<br>
		
		<label>자기소개</label><br>
		<textarea name="profile"></textarea>
		<br>
		
		<label>취미: </label>
		수영<input type="checkbox" name="hobby" value="swim">
		코딩<input type="checkbox" name="hobby" value="coding">
		요리<input type="checkbox" name="hobby" value="cook">
		술<input type="checkbox" name="hobby" value="drinking">
		
		<input type="submit" value="가입">
	</form>
</body>
</html>