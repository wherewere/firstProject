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
String id = (String) session.getAttribute("id");
String pwd = (String) session.getAttribute("pwd");
Integer age = (Integer)  session.getAttribute("age");

// Attribute에 저장되었던 모든 자료는 getAttribute로 꺼냈을 때, object형이므로, 원래의 자료형으로 사용하기 위해서는 
// (자료형) 같은 형변환이 필요함

 %>
 
 <h3>세션에 저장된 값 하나씩 추출</h3>
id : <%=id %><br>
pwd : <%=pwd %><br>
age : <%=age %><br>


<%
// 세션에 저장된 값들 한번에 모아서 확인하는 방법
java.util.Enumeration<String> names = session.getAttributeNames();

while (names.hasMoreElements() ){
	//nextElements를 String형 변수에 저장
	String name = names.nextElement().toString(); //(String) 형변환을 사용하지 않고, 형변환 메서드를 사용
	//순회하여 얻어낸 키(name)값으로 세션에서 getAttribute로 value를 차례로 추출
	String value = session.getAttribute(name).toString(); //(String) 형변환을 사용하지 않고, 형변환 메서드 사용
	out.println(name+" : "+ value+"<br>");
}
%>
</body>
</html>