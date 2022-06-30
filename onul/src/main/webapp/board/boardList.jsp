<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="script/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		$form = $("form[name='searchForm']");
		// 페이지 번호 클릭 시 검색결과 유지하기 위함
		$(".page-item > a").on("click", function(e){
			e.preventDefault();	// 이벤트 전파 방지, <a>의 기본 클릭 이벤트 막기위함
			// 현재 페이지번호 설정
			$form.find("input[name='currPage']").val($(this).data("page"));
			$form.submit();			
		});
		
		// 검색 버튼 클릭 시 페이지 번호 1부터 시작하기 위함
		$form.find("input[type='submit']").on("click", function(e){
			e.preventDefault();
			$form.find("input[name='currPage']").val(1);
			$form.submit();
		});
		
		// eclipse 내부 브라우저 한글처리 오류때문에 인코딩해서 이동시킴
		$(".record").find("a").on("click", function(e){
			e.preventDefault();
			var uri = $(this).attr("href");
			location.href = encodeURI(uri);
		});
	});
</script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>게시글 리스트</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right">
					<a href="BoardServlet?command=board_write_form">게시글 등록</a>
				</td>
			</tr>
			<tr>
				<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회</th>
			</tr>
			<c:forEach var="board" items="${boardList }">
			<tr class="record">
				<td>${board.num }</td>
				<td>
					<a href="BoardServlet?command=board_view&num=${board.num }&currPage=${pageHandler.currPage}&searchType=${searchVO.searchType}&searchText=${searchVO.searchText}">${board.title }</a>
				</td>
				<td>${board.name }</td>
				<td><fmt:formatDate value="${board.writedate }"/></td>
				<td>${board.readcount }</td>
			</tr>
			</c:forEach>
		</table>
		<div class="paging">
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">			    	
			    	<c:if test="${pageHandler.showPrev }">
						<a class="page-link" href="BoardServlet?command=board_list
							&currPage=${pageHandler.beginPage - 1 }
							&pageSize=${pageHandler.pageSize}" 
							data-page="${pageHandler.beginPage - 1 }">Previous
						</a>
					</c:if>
		    	</li>			    
			    <c:forEach var="i" begin="${pageHandler.beginPage }" 
									end="${pageHandler.endPage }">
				<li class="page-item">
					<a class="page-link" href="BoardServlet?command=board_list
						&currPage=${i }&pageSize=${pageHandler.pageSize}"
						data-page="${i }">${i }
					</a>
				</li>
				</c:forEach>
			    <li class="page-item">			    	
			    	<c:if test="${pageHandler.showNext }">
						<a class="page-link" href="BoardServlet?command=board_list
							&currPage=${pageHandler.endPage + 1 }
							&pageSize=${pageHandler.pageSize}"
							data-page="${pageHandler.endPage + 1 }">Next
						</a>
					</c:if>
		    	</li>
			  </ul>
			</nav>
		</div>
		<div class="search">
			<form name="searchForm" action="BoardServlet" method="post">
				<input type="hidden" name="command" value="board_list">
				<input type="hidden" name="currPage" value="${pageHandler.currPage }">
				<select name="searchType">
					<option value="title" 
					${searchVO.searchType == "title" ? "selected='selected'" : "" }>
					제목</option>
					<option value="content"
					${searchVO.searchType == "content" ? "selected='selected'" : "" }>
					내용</option>
					<option value="all"
					${searchVO.searchType == "all" ? "selected='selected'" : "" }>
					제목+내용</option>
					<option value="author"
					${searchVO.searchType == "author" ? "selected='selected'" : "" }>
					작성자</option>
				</select> 
				<input type="text" name="searchText" value="${searchVO.searchText }">
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>







