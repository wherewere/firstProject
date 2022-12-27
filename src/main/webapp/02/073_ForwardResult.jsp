<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>073_ForwardResult</title>
</head>
<body>
	<!-- 첫 페이지에서 전송된 abc=가나다라 라는 파라미터가 request에 아직 파라미터로 담겨있음.
	이전 페이지에서 그 request를 그대로 전송해 왔기 때문에 현재 페이지에서도 사용이 가능함 -->
	<%
	String age = request.getParameter("age");
 	String abc = request.getParameter("abc"); //첫 페이지 히든 테크로 포함된 파라미터
 	String name = (String)request.getAttribute("name"); // Attribute에 저장된 전송자료
 	// Attribute의 저장형식은 모든 클래스의 부모 클래스인 Object의 형태로 저장되므로, 다시 값을 추출할 때 강제캐스팅이 필요함.
 	 %>
 	 
 	 <h1>forward 방식으로 이동된 페이지</h1>
 	 <h1>나이 : <%=age %></h1>
 	 <h1>이름 : <%=name %></h1>
 	 <h1>전송자료 : <%=abc %></h1>
 	 
</body>
</html>