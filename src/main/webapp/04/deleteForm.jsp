<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String userid = request.getParameter("userid");
%>
<script type = "text/javascript">
	var a = confirm("정말로 삭제할까요?")
if(a) {
	location.href = "delete_do.jsp?userid=<%=userid%>";
} else {
	location.href = "MemberMGR.jsp";
}
</script>
</head>
<body>
	
</body>
</html>