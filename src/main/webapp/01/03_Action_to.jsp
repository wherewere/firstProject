<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Action_to</title>
</head>
<body>
	<h2>get 방식으로 요청되어진 주소</h2>
	<h3>http://localhost:8090/WEB07/01/03_Action_to.jsp?name=hong+gil+dong&id=hong&pwd=1234&pwd_re=1234</h3>
	
	<h2>post 방식으로 요청되어진 주소</h2>
	<h3>http://localhost:8090/WEB07/01/03_Action_to.jsp</h3>
	
	<!-- 03_Action_to.jsp는 최종 이동할 페이지 이름이며, 그 뒤 ?이후의 내용은 name=value로 구성되어 서버로 전송된 입력데이터들임.
	post방식은 이들을 노출하지 않음. -->
	<!-- 주소 내에 포함된 value 중 한글은 인코딩 방식에 따라 %16진수 값으로 표시될 수 있음 -->
	<!-- 03_Action.jsp에서 출발한 폼데이터들은 주소에 섞여서 action에 써놓은 페이지에 도착한 것 같지만,
	주소는 서버에서 최종 목적지로 사용한 주소일뿐 입력란에 입력된 데이터들은 모두 서버에 저장됨.
	name으로 구분된 value값들이 모두 요청주소에 포함되어 표시될 뿐, 주소에 있는 값들을 이용하는 것은 아니고, 서버에 있는 데이터를 불러와서 이용함.  -->
	
	<!-- 아래는 서버에 저장되어 불러져 오는 구문과 내용들임. -->
	
	<!-- request는 요청, response는 제공 -->
	<%
		String name = request.getParameter("name"); // "name" : form 내부에 있던 해당 입력란의 name값
		String id = request.getParameter("id"); // "id" : form 내부에 있던 해당 입력란의 name값
		String pwd = request.getParameter("pwd");
		String pwd_re = request.getParameter("pwd_re");
		String userItem = request.getParameter("useritem");
		//get Parameter로 받는 모든 데이터는 String으로 받음
		//만약 위 항목 중 입력란이 비어있거나, name 값이 없는 것이 존재한다면, String변수는 null이 됨.
		// name에 오타가 있어서 받지 못한 것들 포함.
		
	%>
	
	<h3>
	성명 : <%=name %><br>
	아이디 : <%=id %><br>
	비밀번호 : <%=pwd %><br>
	비밀번호 확인 : <%=pwd_re %><br>
	</h3>
	<h1>UserItem : <%=userItem %></h1>
</body>
</html>