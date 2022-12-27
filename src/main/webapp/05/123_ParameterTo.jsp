<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<fmt:requestEncoding value="UTF-8"/>
<%-- 체크박스의 다중 선택 value들이 파라미터로 전달되어 EL로 수신하는 키워드 : ${paramValues.item}    --%>

<c:forEach var="product" items="${paramValues.item }" varStatus="status">
	${product } <c:if test="${not status.last }">, </c:if>
</c:forEach>

</body>
</html>