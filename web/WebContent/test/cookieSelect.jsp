<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	Cookie[] cookieList = request.getCookies();
for(Cookie cookie : cookieList){
	if(cookie.getName().equals("id"))
	out.print(cookie.getName()+ cookie.getValue());
}
%>
${cookie.popupYn.value} : ${cookie.popupYn.name}

</body>
</html>