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
	session.setAttribute("s_name1","세션에 저장된 첫 번째 값");
	session.setAttribute("s_name2","세션에 저장된 두 번째 값");
	session.setAttribute("s_name3","세션에 저장된 세 번째 값");
	
	out.print("<h3> >> 세션 값을 삭제하기 전 << </h3>");
	out.println("s_name1 : " + session.getAttribute("s_name1") +"<br>");
	out.println("s_name2 : " + session.getAttribute("s_name2") +"<br>");
	out.println("s_name3 : " + session.getAttribute("s_name3") +"<br>");
	
	
	session.removeAttribute("s_name2"); // 이름을 지정하여 세션에 저장된 객체를 제거함.
	
	out.print("<h3> >> s_name2 세션 값을 삭제한 후 << </h3>");
	out.println("s_name1 : " + session.getAttribute("s_name1") +"<br>");
	out.println("s_name2 : " + session.getAttribute("s_name2") +"<br>");
	out.println("s_name3 : " + session.getAttribute("s_name3") +"<br>");
	
	
	session.invalidate(); // 이름을 지정하여 세션에 저장된 객체를 제거함. (ㄴ로그아웃할 때)
	
	out.print("<h3> >> invalidate() 후 << </h3>");
	/* 모든 세션이 삭제되어, null값 출력조차 불가능함.
	out.println("s_name1 : " + session.getAttribute("s_name1") +"<br>");
	out.println("s_name2 : " + session.getAttribute("s_name2") +"<br>");
	out.println("s_name3 : " + session.getAttribute("s_name3") +"<br>");*/
	%>
	
	
</body>
</html>