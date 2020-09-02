<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
에러발생 린아에게 문의바람
<%= exception.getMessage() %>
<%= exception.getClass().getName() %>
</body>
</html>