<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="MemberInsertServ">
	
	<div>
	<P><label for="id">���̵� (���ڸ� ����)</label> : <INPUT type="text" id="id" name="id" size="20" value="" required></P>
	<P><label for="password">��й�ȣ</label> : <INPUT type="password" name="pw" id="password" size="20"></P>
	</div>
	
<div>
	<INPUT type="radio" name="gender" value="man" checked>����&nbsp;
	<INPUT type="radio" name="gender" value="woman">����
</div>
	<label for="job">����</label>
<div>
<SELECT id="job" name="job" size="4">
<OPTION value="select" selected>����</OPTION>
<OPTION value="inoccupation">����</OPTION>
<OPTION value="jobless">���</OPTION>
<OPTION value="Home security guard">���� ����</OPTION>
<OPTION value="housewife">�����ֺ�</OPTION>
</SELECT>
</div>
<div>
�� <input type="checkbox" name="hobby" value="basket">
�౸<input type="checkbox" name="hobby" value="football">
����ñ�<input type="checkbox" name="hobby" value="ignore">
</div>
<div>
<TEXTAREA name="Motive" rows="5" cols="50">
���Ե���
</TEXTAREA>
</div>

<div>
<P>���ϼ��� ����<INPUT type="checkbox" name="mail" value="Y" checked></P>
</div>
<div>
<button type = "submit" >���</button>&nbsp;&nbsp;
<button type = "reset" name = "reset" >����</button>
</div>
</form>
</body>
</html>