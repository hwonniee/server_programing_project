<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script src="script/jquery-3.6.0.js"></script>
<script type="text/javascript" src="script/board.js"></script>

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
#view{
	margin: 0px auto;
	width: 720px;
	position:relative;
}

#view span{
	width:720px;
	font-size: 16px;
    line-height: 20px;
    color: rgb(101, 110, 117);
    -webkit-box-direction: normal;
}

#view h1{
	height: 42px;
	margin-top: 15px;
    font-size: 32px;
    line-height: 42px;
    color: rgb(47, 52, 56);
    font-weight: 700;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#view .board_img{
	margin: 30px 0px;
    display: block;
    width: 100%;
}

#view table{
	font-size: 16px;
    line-height: 32px;
}

#view table .board_name{
	font-size: 20px;
    line-height: 32px;
    font-weight: 700;
    color: rgb(47, 52, 56);
    text-align: left;
}

#view table .board_writedate{
	margin-top: -15px;
	width: 130px;
	margin-left: 55px;
    font-size: 14px;
    line-height: 18px;
    display: block;
    color: rgb(130, 140, 148);
    
}

#navi_button{
	position: fixed;
  	margin-top: 100px;
  	text-align:center;
  	font-size: 14px;
    line-height: 30px;
    color: rgb(130, 140, 148);
}

#navi_button .share_bar_img{
	margin-top:10px;
	height: 60px;
	width:60px;
	border-radius: 100%;
}

</style>

</head>
<body>
	<header>
	<%@ include file="include_header2.jsp" %>  
	</header>
	
	<div class="container">
	  <div class="row">
	    <div class="col-11">
			<section class="py-5 fw-bold" id="view">
				<div>
					<span>질문과 답변</span>
					<h1>${board.title }</h1>
					<table class="table ">
						<tr class="border-white">
							<td>
								<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="#D8D8D8" class="bi bi-person-circle" viewBox="0 0 16 16">
									  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
									  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
								</svg>
								<span class="board_name">${board.name }</span>
								<span class="board_writedate"><fmt:formatDate value="${board.writedate }"/></span>
							</td>
							<td>
								<input class="btn btn-info pull-right fw-bold " style="color:white; margin:10px;" type="button" value="+ 팔로우" >
							</td>
						</tr>
						<tr class="border-white" >
							
							<c:choose>
								<c:when test="${board.img != ''}" >
									<td colspan="2"><img class="board_img" src="${board.img }" alt="첨부사진" >
						   		</c:when>
				  			</c:choose>
							</td>
						</tr>
						<tr class="border-white" colspan="2">
							<td colspan="2">
							${board.content }
							</td>
						</tr>
						<tr class="text-secondary">
							<th>조회 ${board.readcount }</th>
							<td style="text-align:right;">
								신고하기
							</td>
						</tr>
					</table>
					
					<c:choose>
						<c:when test="${userId != null && userId == board.name}" >
						<input class="btn btn-light btn-outline-info pull-right fw-bold " style="margin:10px;" type="button" value="목록" 
							onclick="location.href=encodeURI('BoardServlet?command=board_list&currPage=${currPage}&searchType=${searchVO.searchType }&searchText=${searchVO.searchText }')">
							<input class="btn btn-danger pull-right fw-bold" style="margin:10px;" type="button" value="삭제" 
							onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')">
							<input class="btn btn-info pull-right fw-bold " style="color:white; margin:10px;" type="button" value="수정" 
							onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')">
				   		</c:when>
						<c:otherwise>
				  			<input class="btn btn-light btn-outline-info pull-right fw-bold " style="margin:10px;" type="button" value="목록" 
										onclick="location.href=encodeURI('BoardServlet?command=board_list&currPage=${currPage}&searchType=${searchVO.searchType }&searchText=${searchVO.searchText }')">
						</c:otherwise>
					</c:choose>
			</section>
		
	
	<footer class="text-muted">
		<%@ include file="include_footer.jsp" %> 
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>







