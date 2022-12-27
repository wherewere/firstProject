<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
if( session.getAttribute("loginUser")!=null ) {
	response.sendRedirect("073_main.jsp"); //메인으로 감.
} else {
%>
	<form method="post" action="072_login_do.jsp">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br/>
		<label for="pwd">암 &nbsp; 호 : </label>
		<input type="password" id="pwd" name="pwd"><br/>
		<input type="submit" value="로그인">
	</form>
<%}
%>
</body>
</html>