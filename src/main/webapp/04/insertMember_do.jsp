<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<%
	//insertMember_do.jsp
	//전송된 값들을 이용해서 레코드를 추가하고, memberMGR.jsp페이지로 되돌아감
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	//쓰기 전에 먼저 인코딩 해줘야 함.
	
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "scott";
		String dbpw = "tiger";
	
		Connection con = null;
		PreparedStatement pstmt = null;	
		String sql = "insert into mem(name, id, pwd, phone) values (?,?,?,?)";

		String name = request.getParameter("name");
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		String phone = request.getParameter("phone");
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, dbid, dbpw);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, userid);
			pstmt.setString(3, userpwd);
			pstmt.setString(4, phone);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("MemberMGR.jsp");
%>