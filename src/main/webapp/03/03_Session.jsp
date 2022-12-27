<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션에 값 저장</h2>
<p>session.setAttribute("id", "hong");<br>
session.setAttribute("pwd", "1234");<br>
session.setAttribute("age", 20);</p>
<%
session.setAttribute("id", "hong");
session.setAttribute("pwd", "1234");
session.setAttribute("age", 20);

%>

</body>
</html>