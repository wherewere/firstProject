<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateForm</title>
<%!
	Connection con=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "select * from mem where id=?";
%>
</head>
<body>
<!-- 테이블을 제작하여 수정할 내용을 입력란에 표시하되, 아이디는 수정하지 못하게 함.
비밀번호는 빈칸, 나머지 이름과 전화번호란에 해당 변수에 있는 값을 value값으로 넣음 -->
<%
		String userid = request.getParameter("userid");
		String name = null;
		String phone=null;
		// 해당 회원의 정보를 조회해서 이름과 전화번호를 해당 변수에 저장
	
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "scott";
		String dbpw = "tiger";
		String sql = "select name, phone from mem where id = ?";
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, dbid, dbpw);
		
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
		
		if ( rs.next() ) {
		name = rs.getString("name");
		phone = rs.getString("phone");
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 닫기	
			try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
%>
	<form method="post" action="updateMember_do.jsp">
		<table>
		<tr><td>이름</td><td><input type="text" name="name" size="20" value=<%=name%>></td></tr>
		<tr><td>아이디</td><td><input type="text" name="userid" size="20" value=<%=userid%> readonly></td></tr>
		<%-- <input type="hidden" name="userid" value=<%=userid %>"/> --%>
		<tr><td>비밀번호</td><td><input type="password" name="userpwd" size="20"></td></tr>
		<tr><td>전화번호</td><td><input type="text" name="phone" size="11" value=<%=phone%>></td></tr>
		<tr style="height:20px;"></tr>
		<tr><td><input type="submit" value="수정"></td>
			   <td><input type="reset" value="취소"></td></tr>
		</table>
	</form>

</body>
</html>