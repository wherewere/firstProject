<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.ezen.dto.MemberBean" %> <!-- DTO 클래스 임포트 하는 법 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>081_useBeanActionTag.jsp</title>
</head>
<body>
	<%
	//1. jsp 문법으로 객체를 생성하는 방법
	com.ezen.dto.MemberBean member1 = new com.ezen.dto.MemberBean(); // 임포트 없이 객체 생성 방법
	MemberBean member2 = new MemberBean(); // 패키지 또는 클래스 import 후 생성 방법
	%>
	
	<!-- 2. 액션 태그를 이용한 객체 생성 -->
	<jsp:useBean id="member" class="com.ezen.dto.MemberBean"/>
	
	<h3>
	# 자바 MemberBean 객체(member)의 저장된 정보 출력<br>
	이름 : <%=member.getName() %><br>
	아이디 : <%=member.getUserid() %><br> 
	<br><br>
	# 정보 변경 후 변경된 정보 출력<br>
	<%
	member1.setName("홍길동");
	member1.setUserid("HongGilDong");
	%>
	이름 : <%=member1.getName() %><br>
	아이디 : <%=member1.getUserid() %><br>
	</h3>
	<br>
	
	<h3>
	# 액션 태그로 정보 변경한 후 변경된 정보 출력하기<br>
	<jsp:setProperty name="member" property="name" value="홍길서"/>
	<jsp:setProperty name="member" property="userid" value="HonggilSEo"/>
	이름 : <jsp:getProperty name="member" property="name"/><br>
	아이디 : <jsp:getProperty name="member" property="userid"/><br>
	<!-- 참고로 jsp로 만든 객체는 액션 태그로 Access 되지 않음 -->
	</h3>
</body>
</html>