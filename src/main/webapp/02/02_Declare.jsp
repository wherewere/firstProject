<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- jsp는 실행영역과 선언부 영역으로 구분됨. 보통 실행영역은 body 안에서 <%%>로 표시된 곳에 기술되지만,
선언부는 head부분에서 <%! %>로 표시된 곳에 대부분 기술됨 --%>
<%!
	// 선언부의 시작 : 선언부 영역은 변수, 메서드 등이 정의됨
	//변수의 선언
	
	String str = "Hi";
	int a=5, b=-5; // 서버가 실행되며 변수가 선언됨.
	
	//메서드의 정의
	public int abs(int n) { 
		if (n<0) n=-n; // n=-1*n 절대값으로 변환
		return n; 
	} // jsp의 메서드는 static으로 선언하지 않아도 사용이 가능함.
%>

</head>
<body>

<%
	//실행부의 시작
	int c=10; // 새로고침할 때마다 변수가 계속 생성되는 격
	c++;
	a++;
	out.print(str + "<br>");
	out.print(a + "의 절대값 : " + abs(a) + "<br>");
	out.print(b + "의 절대값 : " + abs(b) + "<br>");
	out.print(c + "의 절대값 : " + abs(c) + "<br>");
%>
<br><br>
<%=str %><br>
<%=a %>의 절대값 : <%=abs(a) %><br>
<%=b %>의 절대값 : <%=abs(b) %><br>
<%=c %>의 절대값 : <%=abs(c) %><br>

<!-- 선언부(Declare)에 선언된 변수는 전역변수와 같이 사용되어, jsp 페이지 어디서나 사용 가능하며, 값도 일관되게 유지됨
또한 페이지를 새로고침해도, 이전 값이 유지되는 특징이 있으며, 이는 나중에 공부하게 될 세션값과 비슷하게 작용하여,
서버가 재설정될 때까지 값이 유지되는 특성이 있음 -->
</body>
</html>