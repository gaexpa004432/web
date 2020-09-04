<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<select>
<c:forEach items="${ locationList }" var="temp">
<option value="${ temp.location_id}">${ temp.city }</option>
</c:forEach>
</select>
<select>
<c:forEach items="${ managerList }" var="temp1">
<option value="${ temp1. }">${ temp1.first_name } ${temp1.last_name } </option>
</c:forEach>
</select>

</body>
</html>