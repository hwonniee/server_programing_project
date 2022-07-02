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
							<td colspan="2"><img class="board_img" src="${board.img }" alt="첨부파일" >  </td>
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
					<%
				    	if(userId == null) {	
				    %>
				    	<input class="btn btn-light btn-outline-info pull-right fw-bold " style="margin:10px;" type="button" value="목록" 
									onclick="location.href=encodeURI('BoardServlet?command=board_list&currPage=${currPage}&searchType=${searchVO.searchType }&searchText=${searchVO.searchText }')">
					
				    <%
				    	} else {
				    %>
				    	<input class="btn btn-light btn-outline-info pull-right fw-bold " style="margin:10px;" type="button" value="목록" 
						onclick="location.href=encodeURI('BoardServlet?command=board_list&currPage=${currPage}&searchType=${searchVO.searchType }&searchText=${searchVO.searchText }')">
						<input class="btn btn-danger pull-right fw-bold" style="margin:10px;" type="button" value="삭제" 
						onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')">
						<input class="btn btn-info pull-right fw-bold " style="color:white; margin:10px;" type="button" value="수정" 
						onclick="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')">
				    <%
				    	}
				    %>
				</div>
			</section>
			
			<section id="comment">
			
			</section>
	    </div>
	    
	    <div class="col-1">
	    	<section id="navi_button">
	    		<button type="button" class="btn btn-light share_bar_img "  onclick = "location.href = '#comment' ">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
					  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
					</svg>
	    		</button>
	    		<div>1</div>
	    		<button type="button" class="btn btn-light share_bar_img ">
					<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-share " viewBox="0 0 16 16">
					  <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
					</svg>
	    		</button>
	    		<div>12</div>
	    	</section>
	    </div>
	  </div>
	</div>
	
	<footer class="text-muted">
		<%@ include file="include_footer.jsp" %> 
	</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>







