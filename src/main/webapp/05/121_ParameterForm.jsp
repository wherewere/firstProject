<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="122_ParameterTo.jsp">
		<label for="userid"> 아이디 : </label> <input type="text" name="id" id="userid"/><br>
		<label for="pwd"> 암 &nbsp; 호 : </label> <input type="password" name="pwd" id="pwd"/><br>
		<input type="submit" value="로그인">
	</form><br>
	
	<form method="post" action="123_ParameterTo.jsp">
		<input type="checkbox" name="item" value="신발"/> 신발
		<input type="checkbox" name="item" value="가방"/> 가방
		<input type="checkbox" name="item" value="벨트"/> 벨트
		<input type="checkbox" name="item" value="모자"/> 모자
		<input type="checkbox" name="item" value="시계"/> 시계
		<input type="checkbox" name="item" value="주얼리"/> 주얼리<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>