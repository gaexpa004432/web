<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" autoFlush="false" buffer="1kb" 
    errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> jsp 스크립트 테스트</h3>
<!-- html 주석 -->
<%-- jsp 주석 --%>
<% // 자바 주석 
for( int i=0;i<1024; i++){
	out.print(1);
} 
//버퍼 지우기
//out.clearBuffer();
// 클라이언트 전송
out.flush();
%>
<tr>
<%= out.getRemaining() %>
</body>
</html>