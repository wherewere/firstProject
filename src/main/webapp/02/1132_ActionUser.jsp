<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ActionTag 사용자 로그인 성공</h1>
<%String userName = URLDecoder.decode(request.getParameter("userName"), "UTF-8"); %>
<%=userName %>(<%=request.getAttribute("userID") %>)님 환영합니다.
</body>
</html>