<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.board.dao.BoardDAO" %>
<%@page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="board" class="com.board.vo.BoardVO" scope="page" />
<jsp:setProperty name="board" property="title" />
<jsp:setProperty name="board" property="content" />


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
		script.println("alert('로그인을 하세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");	
	} else{
		if( board.getTitle() == null || board.getContent() == null ){ //위에 정한 자바빈즈 id를 넣어줌
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}	else {
					BoardDAO boardDAO = new BoardDAO();
					int result = boardDAO.bVo(board.getTitle(), userId, board.getContent());
					if (result == -1) {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('이미 존재하는 아이디입니다.')");
						script.println("history.back()");
						script.println("</script>");
					}
					else  {
						session.setAttribute("name", board.getName());
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href = 'submit.jsp'");
						script.println("</script>");
					}
					
				}
	}
	
		
	%>

</body>
</html>