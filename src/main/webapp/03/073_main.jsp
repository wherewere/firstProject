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
if( session.getAttribute("loginUser")==null ) {
	response.sendRedirect("071_loginForm.jsp"); //로그인 창으로 되돌아 감.
} else {
%>
로그인 관리자 <br> 전화번호 010-9705-2460
<h2><%=session.getAttribute("loginUser") %>이 로그인 하셨습니다.</h2>


<form method="get" action="074_logout_do.jsp">
	<input type=submit value="로그아웃">
	<!-- 074_logout_do에서 로그인 정보에 해당하는 세션값을 지우고, 로그인 창으로 이동하게 코딩 -->
</form>
<%
}
%>
</body>
</html>