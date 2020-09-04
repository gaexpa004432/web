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
<% request.setAttribute("sum",0); %>
<c:set var="sum" value="0" scope="request"></c:set>

<table border="1">
	<c:forEach begin="1" end="10" var="a">
	<td>${a}</td>
	</c:forEach>
	
	<c:forEach begin="1" end="9" var="i">
	<c:if test="${i% 2 == 0 }">
	${ i }
	</c:if>
	<c:if test="${i% 2 == 1 }">
	</c:if>
	</c:forEach>
	
	<c:forEach begin="1" end="9" var="a">
	<c:choose>
	<c:when test="${a% 2 == 0 }">
	${ i }
	</c:when>
	<c:otherwise>
	 test= ${a% 2 == 1 }
	</c:otherwise>
	</c:choose>
	</c:forEach>
	
	<c:forEach begin="1" end="9" var="i">
	<c:set var="style" value=""/>
	<c:if test="$(i % 2 == 0)">
		<td var="styel" value="style='background-color:gray;'"/>
	</c:if>
	
		<td ${style}></c:forEach>
</table>
</body>
</html>