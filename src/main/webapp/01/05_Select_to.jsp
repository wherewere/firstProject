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
String job = request.getParameter("job");
String [] interests = request.getParameterValues("interest");
String useritem = request.getParameter("userItem");
%>

<h1>당신이 선택한 직업 : <%=job %></h1>
<br><br><br>
<h1>당신이 선택한 관심분야</h1>
<h1>
<%
if (interests==null) out.print("선택한 항목이 없습니다.");
else {
	for (String inter : interests) {
%>
	<%=inter %>,
<% 		
	}
}
%>
</h1>
<h1>hidden으로 전송된 정보 : <%=useritem %></h1>

</body>
</html>