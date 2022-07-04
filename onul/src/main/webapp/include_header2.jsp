<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>오늘의 집 참고 jsp 구현</title>
<meta charset="UTF-8">
<script src="js/jquery-3.6.0.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<!-- font awesome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="js/fnq.js"></script>

<link rel="stylesheet" href="css/style.css">

</head>

<body>
	
<%
	String userId = null;
	if (session.getAttribute("userId") != null){
		userId = (String) session.getAttribute("userId");
	}
%>

<!-- Nav -->

<header id="fixed2">
  <div class="wrap">
    
    
    <%
    	if(userId == null) {
    %>
		    <div id="top">
		      <ul>
		        <li class="active"><a href="index.jsp">홈</a></li>
		        <li><a href="submit.jsp">로그인</a></li>
		        <li><a href="join.jsp">회원가입</a></li>
		      </ul>
		    </div>
    <%
    	} else {
    %>
    		 <div id="top">
		      <ul>
		        <li class="active"><a href="index.jsp">홈</a></li>
		        <li><a href="BoardServlet?command=board_list">질문과 답변</a></li>
		        <li><a href="logoutAction.jsp">로그아웃</a></li>
		      </ul>
		    </div>
    <%
    	}
    %>
    
    <div id="head">
      <div class="logo"><a href="index.jsp">오늘의 집</a></div>

      <ul class="navigation">
        <li class="nav"><a href="index.jsp#slider">바로가기</a></li>
        <li class="nav"><a href="index.jsp#icons">오늘의 딜</a></li>
        <!--  <li class="nav"><a href="QnA.jsp">질문과 답변</a></li>  -->
        <li class="nav"><a href="BoardServlet?command=board_list">질문과 답변</a></li>
        <li class="nav"><a href="notice.jsp">공지사항</a></li>
        <li class="nav"><a href="submit.jsp" >나의 당근마켓</a></li>
      </ul>
    </div>
  </div>
</header>