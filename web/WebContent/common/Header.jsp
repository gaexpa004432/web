<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getAttribute("errormsg") %>
<% String id = (String)session.getAttribute("id");%>
<% if(id == null){ %>
<a href="/web/member/MemberLogin.jsp">로그인</a>
<% } else{ %>
<a href="/web/member/MemberLogout">로그아웃</a>
<% } %>
<a href="/web/member/memberUpdate.jsp"></a>
<a href="dept/deptInserForm.jsp">부서등록</a>
<a href="dept/DeptSelectAllServ">부서조회</a>
<a href="member/MemberSelectServ">멤버조회</a>
<a href="<%=application.getContextPath()%>/member/memberInsert.jsp">멤버등록</a>
<a href="board/boardInsert.do">보드 등록</a>
</body>
</html>