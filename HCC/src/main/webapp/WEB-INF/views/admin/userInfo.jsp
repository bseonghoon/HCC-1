<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<br/>���̵�: ${user.user_id }
<br/>�̸�:${user.user_name }
<br/>����:${user.user_gender }
<br/>ȸ�� ����:${user.user_kind }
<br/>�������:${user.user_birth }
<br/>��ȭ��ȣ:${user.user_phone }
<br/>�̸���:${user.user_email }
<br/>�Ű� Ƚ��:${user.user_blame_cnt }

<br/><br/>

<a href="./deleteUser?id=${user.user_id }">Ż��</a> &nbsp;&nbsp;
<a href="./memberManagement">ȸ�����</a> &nbsp;&nbsp;
<form action="./changePassword" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" id="id" name="id" value = "${user.user_id }">
	<input type="text" id="newPassword" name="newPassword" width="10">
	<input type="submit" value="��й�ȣ ����">
</form>

</body>
</html>