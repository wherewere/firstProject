<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_ParameterNull</title>
</head>
<body>
<h3>JSP 코드 : <%=request.getParameter("id")%></h3>
<h3>EL 코드 : ${param.id }</h3>
아이디가 없으면 JSP는 null로 나오고, EL은 빈칸으로 나옴<br><br>

JSP코드<br>
request.getParameter("id").equals("hong") -> 에러<br>
equals()사용 결과 : error - equals 메서드는 "null값 "으로 비교할 때 오류를 일으킴<br>
에러를 방지하기 위해 아래와 같은 연산을 사용해야 함<br>
request.getParameter("id")!=null && request.getParameter("id").equals("hong")<br><br>

<%
/* if ( request.getParameter("id").equals("hong") ) {
	out.print("홍길동님 안녕하세요"); }*/
// 에러가 일어남. null과 비교하는 equals 메서드는 무조건 에러.
%>

EL 코드<br>
'=='연산자 사용 결과 : \${param.id=="hong" } -> ${param.id=="hong" } <br>

</body>
</html>