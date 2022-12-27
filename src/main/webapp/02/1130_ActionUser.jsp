<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 로그인 성공</title>
</head>
<body>
<h1>request.getParamater 사용자 로그인 성공</h1>
<%String userName=request.getParameter("userName");%>
<%=userName %>(<%=request.getParameter("userID") %>)님 환영합니다.
</body>
</html>