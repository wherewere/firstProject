<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>
second의 pageContext 속성 : <%=pageContext.getAttribute("name") %><br>
second의 request 속성 : <%=request.getAttribute("name") %><br>
second의 session 속성 : <%=session.getAttribute("name") %><br>
second의 application 속성 : <%=application.getAttribute("name") %><br>
<a href="083_ServerObject_Life.jsp">세번째 페이지로 이동</a>
</h1>
</body>
</html>