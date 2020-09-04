<%@page import="member.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<%//
	//ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
	//for( MemberVO member : list){ %>
<c:forEach  items="${ list }" var="member">

<tr><td>${member.id}</td>
<td>${member.pw}</td>
<td>${member.gender}</td>
<td>${member.job}</td>
<td>${member.mail}</td>
<td>${member.motive}</td>
<td>${member.hobby}</td>
<fmt:parseDate value="${member.regdate}" pattern="yyyy/MM/dd" var="todayStr"></fmt:parseDate>
<td><fmt:formatDate value="${todayStr }" pattern="MM/dd"/>1</td></tr>
<% //} %>
</c:forEach>
</table>
</body>
</html>