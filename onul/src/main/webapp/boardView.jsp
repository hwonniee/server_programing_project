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
#wrap{
	margin: 0px auto;
	width: 720px;
	
	position:relative
}

#wrap span{
	font-size: 16px;
    line-height: 20px;
    color: rgb(101, 110, 117);
    -webkit-box-direction: normal;
}

#wrap h1{
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

#wrap .board_img{
	margin: 30px 0px;
    display: block;
    max-width: 100%;
    -webkit-box-direction: normal;
}

#wrap table{
	font-size: 16px;
    line-height: 32px;
}

</style>

</head>
<body>
	<header>
	<%@ include file="include_header2.jsp" %>  
	</header>
	
	<section class="py-5 fw-bold" id="wrap">
		<div >
			<span>질문과 답변</span>
			<h1>${board.title }</h1>
			<table class="table">
				<tr>
					<td>${board.name }</td>
				</tr>
				<tr>
					<td><fmt:formatDate value="${board.writedate }"/></td>
				</tr>
				<tr>
					<td class="board_img"><img src="${board.img }" alt="" >  </td>
				</tr>
				<tr>
					<td>
					${board.content }
					</td>
				</tr>
				<tr>
					<th>조회</th>
					<td>${board.readcount }</td>
				</tr>
			</table>
			<br><br>
			
				
			<input class="btn btn-light btn-outline-info pull-right fw-bold " style="margin:10px;" type="button" value="목록" 
			onclick="location.href=encodeURI('BoardServlet?command=board_list&currPage=${currPage}&searchType=${searchVO.searchType }&searchText=${searchVO.searchText }')">
			<input class="btn btn-danger pull-right fw-bold" style="margin:10px;" type="button" value="삭제" 
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')">
			<input class="btn btn-info pull-right fw-bold " style="color:white; margin:10px;" type="button" value="수정" 
			onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')">
		</div>
	</section>
	<footer class="text-muted py-5">
		<%@ include file="include_footer.jsp" %> 
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>







