<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
    
<%
	Connection con=null;
	PreparedStatement pstmt = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "scott";
	String dbpw = "tiger";
	String sql = "delete from mem where id=?";
	String userid = request.getParameter("userid");
	
	Class.forName(driver);
	con = DriverManager.getConnection(url, dbid, dbpw);
	
	try {
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
		if(pstmt!=null) pstmt.close();
		if(con!=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	response.sendRedirect("MemberMGR.jsp");
%>
    
