<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] movieList = {"타이타닉", "시네마천국", "혹성탈출", "킹콩"};
	request.setAttribute("mList", movieList);
%>

<table border="1" style="width:700px; text-align:center;">
	<tr>
		<th>index</th><th>count</th><th>title</th>
	</tr>
	<c:forEach items="${mList }" var="movie" varStatus="st">
		<tr><td>${st.index }</td><td>${st.count }</td><td>${movie }</td></tr>
	</c:forEach>
</table><br><br>

<!-- 
c:forEach varStatus="status"
varStatus : 반복실행의 상태값을 갖고 있는 클래스
status : 현재 반복순서 객체 변수
${status.count} : 1부터 시작한 반복의 현재 아이템
${status.index} : 0부터 시작한 반복의 현재 아이템
 -->

<!-- 위의 request에 저장된 mList를 이용하여 반복실행문을 제작, 영화제목으로 구성된 리스트를 만듦.
choose when otherwise를 이용하여, 첫번째 목록은 글자색 빨간색으로 표시하고, 나머지는 검은색으로 표시
 -->
 <c:forEach items="${mList }" var="movie" varStatus="st">
 	<c:choose >
 		<c:when test="${st.index==0}">
 			<li style="color:red; font-size=180%; font-weight:bold;">${movie }</li><br>
 		</c:when>
 		<c:when test="${st.last}">
 			<li style="color:blue; font-size=180%; font-weight:bold;">${movie }</li><br>
 		</c:when>
 		<c:otherwise>
 			<li style="color:black; font-size=180%; font-weight:bold;">${movie }</li><br>
 		</c:otherwise>
 	</c:choose>
 </c:forEach>
 
 <!-- 
 ${status.first} : 현재 루프가 처음이면 true 리턴
 ${status.last} : 현재 루프가 마지막면 true 리턴
  -->
  
  <!-- 마지막 아이템만 빼고 각 아이템 사이에 (,)를 찍어 출력하고 싶을 때 -->
<h2>
<c:forEach var="movie" items="${mList }" varStatus="st">
	\${st.current}:${st.current }<br>
	<c:if test="${not st.last }">, </c:if>
</c:forEach>
</h2>

<!-- 
${st.current} : 현재 아이템
${st.begin} : 시작값
${st.end} : 끝값
${st.step} : 증가값

begin="x" : 시작값 지정
end = "x" : 끝값 지정
step = "x" : 증가값 지정
 -->
 
 
 <h2>
<c:forEach var="cnt" begin="1" end="10" step="2" varStatus="st">
	\${cnt}:${cnt}, ${st.begin}, ${st.end}, ${st.step}<c:if test="${not st.last}">, </c:if>
</c:forEach>
</h2>


<br><br>
<hr>
<table border="1" style="width:50%; text-align:center;" align="left">
	<tr><th>index</th><th>count</th><th>index</th></tr>
	<c:forEach var="cnt" begin="6" end="10" varStatus="st">
		<tr><td>${st.index }</td><td>${st.count }</td><td>${cnt }</td></tr>
	</c:forEach>
</table>
</body>
</html>