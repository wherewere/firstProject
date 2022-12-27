<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- prefix = "c" : JSTL문법을 사용하기 위해서 태그의 첫 글자를 c로 사용하겠습니다라는 표시임.
 그리고 c:로 시작하는 태그는 jstl 문법이 적용됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<% //<!--  JSTL사용 방법 : < c:태그이름>  </c:태그이름> 또는 <c:태그이름 /> --> %>
jstl 
web-inf/lib 에 jstl.jar 과 standard.jar이 들어있어야 함.<br>
또한 < %@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>를 윗단에 써주어야 함.

<!-- EL에 없는 JSP기능 대부분이 JSTL에서 제공됨. 변수, 반복문, if 등등 -->
<h2>
단순출력<br>
JSTL 출력 : <c:out value="Hello"/><br>
EL 출력 : ${"Hello" }<br>
</h2>
<br>

<h2>
변수생성 및 초기화 #2<br>
<c:set var="age">30</c:set><br>
생성한 변수를 EL에 의해 출력<br>
/${age } = ${age }
</h2><br><br><br>

<h2>
jsp < % % >를 이용한 객체 생성<br>
com.ezen.dto.MemberBean mem = new com.ezen.dto.MemberBean();<br>
<%
com.ezen.dto.MemberBean member = new com.ezen.dto.MemberBean();
member.setUserid("유저아이디");
member.setName("유저네임");
out.println(member.getUserid()+"<br>");
out.println(member.getName());
%><br><br>
JSTL을 이용한 객체 생성<br>
<c:set var="member" value="<%=new com.ezen.dto.MemberBean() %>"></c:set>
JSTL을 이용한 멤버변수 값 변경<br>
<c:set target="${member }" property="name" value="홍길동"></c:set>
<c:set target="${member }" property="userid">Hong</c:set>
EL에 의한 멤버변수 출력- 객체와 멤버변수 이름만으로 setter기능이 대체됨<br>

\${member.name }=${member.name }<br>
\${member.userid }=${member.userid }<br>
클래스에 각 멤버변수에 대한 getter와 setter가 존재해야 위의 실행이 가능함<br>
</h2><br>

<%
out.println("한번더" +member.getUserid()+"<br>");
out.println(member.getName());
%><br><br>

<h2>
그외 변수와 출력 기능 - jstl과 el의 혼합사용<br>
<c:set var="add" value="${10+5 }"></c:set>
\${add } = ${add }<br>
<c:set var="flag" value="${10>5 }"></c:set>
\${flag } = ${flag }<br>
<br>

input 태그에 EL로 값 설정 - input type="text" 태그에 들어갈 value값이 변수나 객체 내에 있다면 아래와 같이 사용함.<br>
<input type="text" value="${member.userid }"><br>

</h2>
</body>
</html>