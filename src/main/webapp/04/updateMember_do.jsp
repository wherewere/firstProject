<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
//쓰기 전에 먼저 인코딩 해줘야 함.

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String dbid = "scott";
String dbpw = "tiger";

Connection con = null;
PreparedStatement pstmt = null;
String sql = "update mem set name=?, pwd=?, phone=? where id = ?";

String name = request.getParameter("name");
String userid = request.getParameter("userid");
String phone = request.getParameter("phone");
String userpwd = request.getParameter("userpwd");

if (!userpwd.equals("")) {
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, dbid, dbpw);
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, userpwd);
		pstmt.setString(3, phone);
		pstmt.setString(4, userid);
		pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	try {
		if (con!=null) con.close();
		if (pstmt!=null) pstmt.close();
	} catch (Exception e) {
	e.printStackTrace();	
	}
	
} else {
	sql = "update mem set name=?, phone=? where id = ?";
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, dbid, dbpw);
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		pstmt.setString(3, userid);
		pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
	try {
		if (con!=null) con.close();
		if (pstmt!=null) pstmt.close();
	} catch (Exception e) {
	e.printStackTrace();	
	}
}

response.sendRedirect("MemberMGR.jsp");
%>