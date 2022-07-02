<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.board.dao.BoardDAO" %>
<%@page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="board" class="com.board.vo.BoardVO" scope="page" />

<!DOCTYPE html>
<html>
<head>
<title>오늘의 집 참고 jsp 구현 - 회원가입</title>
</head>
<body>

<%
	String userId = null;
	if(session.getAttribute("userId") != null){
		userId = (String)session.getAttribute("userId");
	}
	if(userId == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요')");
		script.println("location.href = 'submit.jsp'");
		script.println("</script>");	
	}
%>