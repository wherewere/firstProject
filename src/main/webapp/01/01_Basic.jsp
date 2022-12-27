<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>안녕하세요</h2>
	<h2>Java Server Page(JSP)</h2>
	
	<!-- JSP는 JAVA SERVER PAGE의 약자로, 웹페이지 내부에 프로그래밍적인 요소를 추가하거나,
	서버에서 계산되고 실행된 결과를 웹페이지에서 표시하고자 할 때 사용함.
	쉽게 얘기하면, 퓁페이지 HTML5 중간중간에 자바프로그래밍 코드를 좀 같이 쓰겠다는 말과 비슷함. -->

	<!-- 사용 예는 아래와 같음 (날짜 변수 d의 선언과 객체 초기화 동작) -->
	<% java.util.Date d = new java.util.Date(); %>
	<!-- 임포트를 안했을 뿐, jsp 파일에서 임포트 해서 쓰는 방법. 원래는 JSP -->
	
	<!--  HTML로 페이지를 구성하던 중, JSP에 의한 컨텐츠가 중간에 나와야 한다면, 필요한 곳에 JSP명령을 씀 -->
	<%-- 현재 jsp 파일 안에 html 문법 사이로 jsp 문법이 끼어들어 코딩될 때는 <% %>를 사용함.--%>

	<!--  HTML5 주석 -->
	<%-- 주석 내용 중 <%%>가 섞여있을 때의 주석--%>

	<h2>현재시간 : <%=d%></h2>
	<h2>현재시간 : <%=new java.util.Date() %></h2>
	<%--다만 페이지에 출력될 내용을 기술한다면 <%= %>를 쓰고, 출력할 내용을 씀 --%>

	<%-- <% jsp 명령 %> : 명령의 실행 --%>
	<%-- <%= 변수 또는 출력내용 %> : 웹페이지의 현재 위치에 출력 --%>
	
	<!-- jsp 명령은 html태그와 함께 파일로 저장되어 서버에 보관됨. 클라이언트의 요청을 받으면 해당 파일(~.jsp)이 
	클라이언트에게 전송되어 웹브라우저에 표시되는데, 그전에 jsp 명령은 이미 실행되어서 결과만 html태그와 같이 전송되어짐. -->
	
</body>
</html>