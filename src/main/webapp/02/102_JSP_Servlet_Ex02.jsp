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
	// Join_Servlet 서블릿을 제작하여 101_JSP_Servlet_Ex01.jsp파일에서 전송한 항목들을 파라미터로 받고,
	// request에 담아서 현재 파일로 포워딩 함.
	// 그리고 request의 각 내용들을 꺼내서 변수에 저장하고, 아래 출력이 에러 없이 실행되도록 코딩
	String id = (String) request.getAttribute("id");
	String pwd = (String) request.getAttribute("pwd");
	String gender = (String) request.getAttribute("gender");
	String chk_mail = (String) request.getAttribute("chk_mail");
	String content = (String) request.getAttribute("content");
	String [] items = (String []) request.getAttribute("items");
	String job = (String) request.getAttribute("job");
	String [] interests = (String []) request.getAttribute("interests");
	%>
	아이디 : <%=id %><br>    암호 : <%=pwd %><br>
	성별 : <%=gender %><br>   메일수신 : <%=chk_mail %><br>
	하고싶은말 : <%=content %><br>
	구입항목 : 
	<%
	if (items==null) out.print("선택한 항목이 없습니다.");
	else {
		for (String s : items ) out.print (s+" "); }
	%><br>
	직업 : <%=job %><br>
	관심분야 : 
	<%
	if (items==null) out.print("선택한 항목이 없습니다.");
	else {
		for (String s : interests ) out.print (s+" "); }
	%><br>
</body>
</html>