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
		int num1 = 20;
		int num2 = 7;
		double num3;
		int result = num1 + num2;
		out.print( num1+"+"+num2+"="+result+"<br>" );
		result = num1 - num2;
		out.print( num1+"-"+num2+"="+result+"<br>" );
		result = num1 * num2;
		out.print( num1+"x"+num2+"="+result+"<br>" );
		num3 = num1 / (double)num2;
		out.print( num1+"/"+num2+"="+num3+"<br>" );
	// <%= 를 대신할 메서드 out.print();
		System.out.println(num1+" / "+num2+" = "+num3);// 에러와 함께 출력은 됨
		%>
		<!-- out.print() 가 System.out.print()와 비슷해보이지만, 이 메서드는 웹페이지에 출력하는 메서드임. -->
</body>
</html>