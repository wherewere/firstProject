<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원의 정보 입력 폼</h2><hr>
	<form method="post" action="insertMember_do.jsp">
		<table>
		<tr><td>이름</td><td><input type="text" name="name" size="20"></td></tr>
		<tr><td>아이디</td><td><input type="text" name="userid" size="20"></td></tr>
		<tr><td>비밀번호</td><td><input type="password" name="userpwd" size="20"></td></tr>
		<tr><td>전화번호</td><td><input type="text" name="phone" size="11"></td></tr>
		<tr style="height:20px;"></tr>
		<tr><td><input type="submit" value="전송"></td>
			   <td><input type="reset" value="취소"></td></tr>
		</table>
	</form>
</body>
</html>