<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Sum.jsp</title>
</head>
<body>
	<!-- JSP는 JAVA에서 사용하던 거의 모든 문법이 똑같이 사용됨 -->
	<% 
		int sum = 0;
		for(int i = 1 ; i<=1000 ; i++) {
			sum += i;
		}
		
		int i, k, coco=0;
		int n = 100000000;
		String result = "";
		boolean [] m = new boolean[n+1];
		long a = System.currentTimeMillis();
		
		for (i=2;i<=n;i++) {
			if(m[i]==false) {
				result = result + " " + i;
				for ( k=2 ; k<=n/i ;  k++ ) {
					m[k*i]=true;
				}
				coco++;
			}
		}
		long b = System.currentTimeMillis();
		long c = b-a;
	%>		
		
	<h2>1부터 1000까지의 합계 : <%=sum %></h2>
	<h2>소수 개수 : <%=coco %></h2>
	<h2>처리시간 : <%=c %></h2>
	<h2>소수들 : <%=result %></h2>
	
	<!--  JSP명령들 사이에 HTML같은 요소들이 껴들어야 한다면, JSP영역을 끝내고, 해당 내용을 다시 기술한 후 다시 JSP영역을 시작시킴
	한 페이지 안에서 JSP명령은 중간에 영역이 끝나고, 다시 시작해도 한 프로그램처럼 이어짐. -->
	
</body>
</html>