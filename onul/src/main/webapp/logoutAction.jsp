<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>오늘의 집 참고 jsp 구현 - 로그아웃</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<Script>
		location.href = 'index.jsp'
	</Script>
</body>
</html>