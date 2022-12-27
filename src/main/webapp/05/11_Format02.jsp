<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11_Format02</title>
</head>
<body>
	<h3>톰캣 서버의 기본 로케일 : <%=response.getLocale() %></h3>
	<!-- 혹시 ko_KR이 아닌 다른 곳으로 되어 있다면? -->
	<fmt:setLocale value="ko_KR"/>
	
	<h3>
	ko_KR 로케일 <br>
	통화(currency) : <fmt:formatNumber value="10000000" type="currency"/><br>
	숫자(number) : <fmt:formatNumber value="1000.1234" type="number" maxFractionDigits="2"/><br>
	<!-- maxFractionDigits 소숫점 자리수 -->
	<c:set var="now" value="<%=new java.util.Date() %>"/>
	날짜(기본) : <fmt:formatDate value="${now }"/>
	</h3>
	
	<h3>
	<fmt:setLocale value="en_US"/>
	변경된 로케일 : <%=response.getLocale() %><br>
	통화(currency) : <fmt:formatNumber value="10000000" type="currency"/><br>
	날짜(기본) : <fmt:formatDate value="${now }"/>
	</h3>
	
	<h3>
	<fmt:setLocale value="ja_JP"/>
	변경된 로케일 : <%=response.getLocale() %><br>
	통화(currency) : <fmt:formatNumber value="10000000" type="currency"/><br>
	날짜(기본) : <fmt:formatDate value="${now }"/>
	</h3>
	
	<fmt:requestEncoding value="UTF-8"/>
	<%-- <% request.setCaracterEncoding("UTF-8")%> 의 효과와 같음 --%>
	
</body>
</html>