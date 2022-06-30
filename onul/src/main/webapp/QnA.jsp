<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.98.0">
    <title>Carousel Template · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">

<!-- css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


 <style>
   .bd-placeholder-img {
     font-size: 1.125rem;
     text-anchor: middle;
     -webkit-user-select: none;
     -moz-user-select: none;
     user-select: none;
   }

   @media (min-width: 768px) {
     .bd-placeholder-img-lg {
       font-size: 3.5rem;
     }
   }
      
	
   section{
    	width: 100%;
    	background-color:  #F7F9FA;
    } 
    
    
    
    h1, p{
    	color: #2F3438;
    } 

    .contents{
    	width:750px;
    	max-height:2028px;
    	margin: 30px auto;
    	position: relative;
    }
	
    .my-1{
    	width:300px;
    	height:40px;
    	background-color: #FFFFFF;
    	border: 1px solid #EAEDEF;
    	box-shadow: 0 2px 5px rgb(63 71 77 / 5%);
    }
    
   
    
  	table{
  		width:750px;
  		height:126px;
  	}
  	
  	table tr .notice{
  		width:750px;
  		height:60px;
  		padding: 18px;
  	}
  	
  	.notice_icon{
		width:30px;
		height:30px;
  	}
  	
  	table tr .QnA{
  		width:718px;
  		height:126px;
  	}
  	
	
	
	img{
		border-radius:8px;
		width:110px;
		height:110px;
	}
	
	 .info{
    	margin: 16px 8px -5px 0;
    	font-size: 12px;
    	line-height: 16px;
    	color: #828C94;
    }
    
    .my-2{
    	font-size: 12px;
	    line-height: 20px;
	    color: #2F3438;
	    background-color: #FFFFFF;
	    border: 1px solid #EAEDEF;
    	border-radius:50px;
    	padding: 2px 8px;
    }
    
    .tag1{
    	margin: 1px 10px 0 0;
    	color: #35C5F0;
    	background-color: #EFFBFF;
    	font-weight: 700;
    	border:none;
    }
	
	input.form-control {
		display:block;
		}
    </style>

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
 
<header class="py-5">
   <%@ include file="include_header.jsp" %>  
</header>

<main>
  <section class="py-5 text-center ">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fs-3 py-lg-2 fw-bold">질문과 답변</h1>
        <p class="fs-8 py-lg-2">오늘의집 인테리어 고수들과 전문가들에게 조언을 받아보세요</p>
        <div class="py-lg-3">
        <form>
          <input class=" form-control my-1" type="search" placeholder="Search" aria-label="Search">
        </form>
        </div>
        <p>
          <a href="#" class="btn btn-light my-2 " >#리모델링/올수리</a>
          <a href="#" class="btn btn-light my-2 ">#20평대</a>
          <a href="#" class="btn btn-light my-2 ">#아파트</a>
          <a href="#" class="btn btn-light my-2 ">#도배</a>
        </p>
      </div>
    </div>
  </section>
  

  <div class="container contents">
    <!-- START THE FEATURETTES -->
	    <button type="button" class="btn btn-light">최신순</button>
		<button type="button" class="btn btn-light">답변을 기다리는 질문</button>
		<button type="button" class="btn btn-info">질문하기</button>
   <table class="table">
	 	<tbody>
	 	<tr class="py-lg-3 notice">
	      <td>  
		     <span href="#" class="my-2 tag1">공지</span>
		     <span class="fw-bold fs-6">답변 이벤트 안내 및 활동 주의사항 <img class="notice_icon" src="images/notice01.png" alt="확성기" ></span>
	      </td>
	      <td>
	      </td>
	    </tr>
	    
	    <c:forEach var="board" items="${boardList }">
	     <tr class="py-lg-3 QnA">
	      <td>  
		      <div>
				<h2 class="lead py-lg-3 fw-bold">당근마켓 뜻이 뭔가요? (왜 당근마켓인가요?)</h2>
			    <p class="featurette-heading fw-normal py-lg-1">
			        현재는 직거래 뿐만 아니라 여러분의 근처에서 생기는 다양한 일을 해결할 수 있는 서비스를 꿈꾸고 있어요.
					뿐만 아니라 '당근'의 건강한 이미지도 담아봤어요. '당근'처럼 건강한 서비스가 될 수 있도록 최선을 다할게요!
				</p>
				<span class="info">${board.name }</span>
				<span class="info">날짜<fmt:formatDate value="${board.writedate }"/></span>
				<span class="info">조회${board.readcount }</span>
				<div>
					<a href="#" class="btn btn-light my-2">#도배</a>
					<a href="#" class="btn btn-light my-2 tag1" >#리모델링/올수리</a>
			        <a href="#" class="btn btn-light my-2 tag1">#20평대</a>
			        <a href="#" class="btn btn-light my-2 tag1">#아파트</a>
		        </div>
			  </div>
		  </td>
	      <td class="py-lg-4">
	      	<img src="images/QnA1.jpg" alt="" >
	      </td>
	    </tr>
	    <tr class="py-lg-3 QnA">
	      <td>  
		      <div>
				<h2 class="lead py-lg-3 fw-bold">당근마켓 뜻이 뭔가요? (왜 당근마켓인가요?)</h2>
			    <p class="featurette-heading fw-normal py-lg-1">
			        현재는 직거래 뿐만 아니라 여러분의 근처에서 생기는 다양한 일을 해결할 수 있는 서비스를 꿈꾸고 있어요.
					뿐만 아니라 '당근'의 건강한 이미지도 담아봤어요. '당근'처럼 건강한 서비스가 될 수 있도록 최선을 다할게요!
				</p>
				<span class="info">${board.name }</span>
				<span class="info">날짜<fmt:formatDate value="${board.writedate }"/></span>
				<span class="info">조회${board.readcount }</span>
				<div>
					<a href="#" class="btn btn-light my-2 tag2">#도배</a>
					<a href="#" class="btn btn-light my-2 tag1" >#리모델링/올수리</a>
			        <a href="#" class="btn btn-light my-2 tag1">#20평대</a>
			        <a href="#" class="btn btn-light my-2 tag1">#아파트</a>
		        </div>
			  </div>
		  </td>
	      <td class="py-lg-4">
	      	<img src="images/QnA2.jpg" alt="" >
	      </td>
	    </tr>
	    <tr class="py-lg-3 QnA ">
	      <td>  
		      <div>
				<h2 class="lead py-lg-3 fw-bold">당근마켓 뜻이 뭔가요? (왜 당근마켓인가요?)</h2>
			    <p class="featurette-heading fw-normal py-lg-1">
			        현재는 직거래 뿐만 아니라 여러분의 근처에서 생기는 다양한 일을 해결할 수 있는 서비스를 꿈꾸고 있어요.
					뿐만 아니라 '당근'의 건강한 이미지도 담아봤어요. '당근'처럼 건강한 서비스가 될 수 있도록 최선을 다할게요!
				</p>
				<span class="info">${board.name }</span>
				<span class="info">날짜<fmt:formatDate value="${board.writedate }"/></span>
				<span class="info">조회${board.readcount }</span>
				<div>
					<a href="#" class="btn btn-light my-2 tag2">#도배</a>
					<a href="#" class="btn btn-light my-2 tag1" >#리모델링/올수리</a>
			        <a href="#" class="btn btn-light my-2 tag1">#20평대</a>
			        <a href="#" class="btn btn-light my-2 tag1">#아파트</a>
		        </div>
			  </div>
		  </td>
	      <td class="py-lg-4">
	      	<img src="images/QnA3.jpg" alt="" >
	      </td>
	    </tr>
	   	<tr class="py-lg-3 QnA">
	      <td>  
		      <div>
				<h2 class="lead py-lg-3 fw-bold">당근마켓 뜻이 뭔가요? (왜 당근마켓인가요?)</h2>
			    <p class="featurette-heading fw-normal py-lg-1">
			        현재는 직거래 뿐만 아니라 여러분의 근처에서 생기는 다양한 일을 해결할 수 있는 서비스를 꿈꾸고 있어요.
					뿐만 아니라 '당근'의 건강한 이미지도 담아봤어요. '당근'처럼 건강한 서비스가 될 수 있도록 최선을 다할게요!
				</p>
				<span class="info">${board.name }</span>
				<span class="info">날짜<fmt:formatDate value="${board.writedate }"/></span>
				<span class="info">조회${board.readcount }</span>
				<div>
					<a href="#" class="btn btn-light my-2 tag2">#도배</a>
					<a href="#" class="btn btn-light my-2 tag1" >#리모델링/올수리</a>
			        <a href="#" class="btn btn-light my-2 tag1">#20평대</a>
			        <a href="#" class="btn btn-light my-2 tag1">#아파트</a>
		        </div>
			  </div>
		  </td>
	      <td class="py-lg-4">
	      	<img src="images/QnA4.jpg" alt="" >
	      </td>
	    </tr>
	    </c:forEach>
	     
	  </tbody>
	</table>
  </div><!-- /.container -->
	<footer class=" py-7">
	<%@ include file="include_footer.jsp" %> 
	</footer>
</main>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
