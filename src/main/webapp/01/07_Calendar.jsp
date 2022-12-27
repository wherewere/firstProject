<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_Calendar</title>
<style type="text/css">
	td { font-weight:bold; font-size:110%; color:grey; }
 	tr>td:first-child{ color:red; }
	tr>td:last-child{ color:black; }
	a { text-decoration:none; }
	#today { background:yellow; }
</style>
</head>
<body>
<% //java.util.Calendar sDay = java.util.Calendar.getInstance(); 위에 임포트 해서 굳이 안 써도 됨.
	Calendar sDay = Calendar.getInstance();
	Calendar eDay = Calendar.getInstance();
	int sYear = sDay.get(Calendar.YEAR); //출력월 날짜의 연도
	int sMonth = sDay.get(Calendar.MONTH); // 출력월 날짜의 월(0~11)
	int sDate = sDay.get(Calendar.DATE);
	int tYear = sDay.get(Calendar.YEAR); //출력월 날짜의 연도
	int tMonth = sDay.get(Calendar.MONTH); // 출력월 날짜의 월(0~11)


	if(request.getParameter("sYear")!=null){
		sYear = Integer.parseInt( request.getParameter("sYear") );
		sMonth = Integer.parseInt( request.getParameter("sMonth") );
		if (sMonth==12) { // 12는 13월의 값
			sMonth=0; // 0은 1월의 값
			sYear++;
		}
		if (sMonth==-1) { // -1은 0월의 값
			sMonth=11; // 11은 12월의 값
			sYear--;
		}
	}
	
	sDay.set(sYear, sMonth, 1); // 출력월 1일자로 설정
	eDay.set(sYear, sMonth+1, 1); //다음달 1일로 설정
	eDay.add(Calendar.DATE, -1); // 바로 전날로 조정 > 이달의 말일
	
	int START_WEEK = sDay.get( Calendar.DAY_OF_WEEK ); // 1: 일요일, 2: 월요일 3:화요일... 이번달 1일자의 요일을 숫자로 구함.
	// START_WEEK = 3; (22년 11월 기준)
%>
	<table width="560" align="left" cellspacing="1" bgcolor="black">
		<tr bgcolor="white" height="50">
			<td colspan="7" align="center">
				<a href = "07_Calendar.jsp?sYear=<%=sYear %>&sMonth=<%=sMonth-1%>">이전달</a>
				 &nbsp;&nbsp;&nbsp;&nbsp;<%=sYear %>년 <%=sMonth+1 %>월&nbsp;&nbsp;&nbsp;&nbsp;
				<a href = "07_Calendar.jsp?sYear=<%=sYear %>&sMonth=<%=sMonth+1%>">다음달</a>
			</td>
		</tr>
		<tr bgcolor="white" height="50">
			<td align="center" width="80">일</td>
			<td align="center" width="80">월</td>
			<td align="center" width="80">화</td>
			<td align="center" width="80">수</td>
			<td align="center" width="80">목</td>
			<td align="center" width="80">금</td>
			<td align="center" width="80">토</td>
		</tr>
		
		<!-- 첫번째 행 : 1일자 요일 전까지의 열에는 공백, 그 뒤의 열부터는 날짜가 1,2,3... -->
		<tr bgcolor = "white" height="50">
		<%
			int date;
			for (date=1 ; date<START_WEEK; date++) {
				// 첫칸부터 1일자의 요일 바로 전까지 빈칸
		%>
			<td></td>
		<%
			}
			for (date=1 ; date<=8-START_WEEK; date++) {
				// 1일자부터 토요일까지는 날짜로 표시
		%>
			<td align="center" <%if(date==sDate && sMonth==tMonth && sYear==tYear) {%>id="today"<% }%>><%=date%></td>
		<%
			}
		//
		%>
		</tr>
		
		<%
			for (int i=1;i<=5;i++) { // 5주 추가
		%>
				<tr bgcolor="white" height="50">
		<%
					for (int j=1;j<=7;j++) { // 주간 7칸씩
						if(date<=eDay.get(Calendar.DATE)) {
		%>
						<td align="center" width="80" <%if(date==sDate && sMonth==tMonth && sYear==tYear) {%>id="today"<% }%>><%=date%></td><!-- // 짤린 date부터 시작 -->
		<%
						date++;
						}else{
		%>
						<td align="center" width="80"></td>	
		<%				
						}
					}
		%>
				</tr>
		<%		
			}
		%>
		<h1>오늘 날짜 <%=sYear %>년 <%=sMonth+1 %>월 <%=sDate %>일</h1>
	</table>
</body>
</html>