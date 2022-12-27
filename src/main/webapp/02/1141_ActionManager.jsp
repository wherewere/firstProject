<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>forward > request.getAttribute 관리자 로그인 성공</h1>
<%String userName=(String)request.getAttribute("userName");%>
<%=userName %>(<%=request.getAttribute("userID") %>)님 환영합니다.
</body>
</html>