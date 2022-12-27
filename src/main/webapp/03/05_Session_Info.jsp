<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 정보를 얻어오는 메소드 사용</h3>
<%
	String id_str = session.getId(); //현재 세션의 고유 코드를 얻음
	
	long createdTime = session.getCreationTime(); // 현재 세션의 생성시간(밀리초)
	long lasttime = session.getLastAccessedTime(); // 현재 세션의 마지막으로 접근한 시간(밀리초)
	long time_used = (lasttime - createdTime)/1000;
	// 사용시간 = (lasttime-createTime)
			
	session.setMaxInactiveInterval(3600); // 세션의 수명(단위:초)
	int session_sec = session.getMaxInactiveInterval();
	int inactive = session.getMaxInactiveInterval()/60; // 수명을 분 단위로 변환
	
	boolean b_new = session.isNew(); //새로만든 세션?
%>

[1] 세션 ID는 [<%=id_str %>]입니다. <br/><hr/>
[2] 당신이 웹사이트에 머문 시간은 [<%=time_used %>]초 입니다. <br/><hr/>
[3] 세션의 유효 시간은 [<%=session_sec %>]초 입니다. <br/><hr/>
[4] 세션의 유효 시간은 [<%=inactive %>]분 입니다. <br/><hr/>
[5] 세션이 새로 만들어졌나요? <br>
<%
	if (b_new) out.print("네, 세션을 새로 만들었습니다.");
	else out.print("아니요, 세션을 새로 만들지 않았습니다.");
%>
</body>
</html>