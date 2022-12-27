<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_Format01</title>
</head>
<body>
	<!--core를 이용하여 오늘 날짜 발생 및 변수에 저장 -->
	<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
	
	<h2>
	core를 이용한 날짜 기본 출력<br>
	\${now} : ${now}<br>
	</h2>
	
	<h2>
	JSTL 포맷팅을 이용한 출력 <br>
	포맷팅기본형식 : <fmt:formatDate value="${now}"></fmt:formatDate><br>
	날짜포맷 date : <fmt:formatDate value="${now}" type="date"/><br>
	시간포맷 time : <fmt:formatDate value="${now}" type="time"/><br>
	날짜시간동시 both : <fmt:formatDate value="${now}" type="both"/><br>
	</h2>
	
	<h2>
	default : <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/><br>
	short : <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/><br>
	medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/><br>
	long : <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/><br>
	full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br>
	</h2>
	
	<h2>
	pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초" : <fmt:formatDate value="${now}" pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초"/><br>
	</h2>
	
	
</body>
</html>