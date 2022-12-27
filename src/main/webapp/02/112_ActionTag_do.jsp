<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.net.URLEncoder" %>>
<!--  112_ActionTag_do -->
<%
String userID = request.getParameter("userID");
String userPwd = request.getParameter("userPwd");
String loginCheck = request.getParameter("loginCheck");

// 사용자일 경우 113_ActionUser.jsp로 이동
// 관리자일 경우 114_ActionManager.jsp로 이동
// 둘다 공통적으로 userID하고 userName을 갖고 이동

/* reponse.sendRedirect로 사용한 경우
if (userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("user")) {
	response.sendRedirect("1130_ActionUser.jsp?userID="+userID+"&userName="+URLEncoder.encode("홍길동","UTF-8"));
}else if(userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("manager")){
	response.sendRedirect("1140_ActionManager.jsp?userID="+userID+"&userName="+URLEncoder.encode("홍길동","UTF-8"));
}else{
	response.sendRedirect("111_ActionTagForm.jsp");
}*/


//forward를 사용한 경우
/* String url = null;
if ( userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("user") ) {
	url = "1131_ActionUser.jsp";
	request.setAttribute("userName", "사용자");
	RequestDispatcher dp = request.getRequestDispatcher(url);
	dp.forward(request, response);
} else if( userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("manager") ) {
	url = "1141_ActionManager.jsp";
	request.setAttribute("userName", "관리자");
	RequestDispatcher dp = request.getRequestDispatcher(url);
	dp.forward(request, response);
} else {
	response.sendRedirect("111_ActionTagForm.jsp");
} */


//액션 태그를 사용한 경우
if ( userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("user") ) {
%>
	<jsp:forward page="1132_ActionUser.jsp">
		<jsp:param name="userName" value='<%=URLEncoder.encode("홍길동","UTF-8")%>'/>
	</jsp:forward>
<%
} else if( userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("manager") ) {
%>
	<jsp:forward page="1142_ActionManager.jsp">
		<jsp:param name="userName" value='<%=URLEncoder.encode("홍길동","UTF-8")%>'/>
	</jsp:forward>	
<%
} else {
	response.sendRedirect("111_ActionTagForm.jsp");
}
%>