<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>오늘의 집 참고 jsp 구현 - 메인</title>
</head>
<body>
<%@ include file="include_header.jsp" %>
	


  <!--슬라이드 제이쿼리-->
  <script defer src="js/jquery.flexslider.js"></script>

  <script type="text/javascript">
    $(function () {
      SyntaxHighlighter.all();
    });
    $(window).load(function () {
      $('.flexslider').flexslider({
        animation: "slide",
        start: function (slider) {
          $('body').removeClass('loading');
        }
      });
    });
  </script>


  <section id="slider">
    <div class="flexslider">
      <ul class="slides">
        <li class="slide01">
          <div class="slide_wrap">
            <img src="images/banner01.jpg" alt="작은 집 넓게 쓰기">
            <div class="slide_text">
              <h1>작은 집 <br>넓게 쓰기</h1>
              <p> 공간은 비우고 가치를 채운 집
              </p>
            </div>
          </div>
        </li>
        <li class="slide02">
          <div class="slide_wrap">
            <img src="images/banner02.jpg" alt="반려식물">
            <div class="slide_text">
              <h1>반려동물 아니라<br> 반려식물도 귀여워</h1>
              <p>오늘의 집에서 소중한 반려식물 어떠세요?</p>
            </div>
          </div>
        </li>
        <li class="slide03">
          <div class="slide_wrap">
            <img src="images/banner03.jpg" alt="당근마켓">
            <div class="slide_text">
              <h1>이웃과 함께 하는<br>오늘의 인테리어</h1>
              <p>우리 집의 다양한 인테리어를 이웃과 함께 나누어요.</p>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </section>
  <!-- 슬라이드 -->

  <article id="icons">
    <ul>
      <li>
        <img src="images/icon01.webp">
        <p>쇼핑하기</p>
      </li>
      <li>
        <img src="images/icon02.png">
        <p>빠른배송</p>
      </li>
      <li>
        <img src="images/icon03.png">
        <p>집에서뭐해?</p>
      </li>
      <li>
        <img src="images/icon04.webp">
        <p>공간별사진</p>
      </li>
      <li>
        <img src="images/icon05.png">
        <p>쉬운이사</p>
      </li>
      <li>
        <img src="images/icon06.png">
        <p>오늘의 딜</p>
      </li>
    </ul>

  </article>

  <article id="banner01">
    <h1 class="title">오늘의 딜</h1>
    <ul>

      <li><a href="#">
          <img src="images/ban01.webp" alt="제품 사진">
          <p class="brand">리브맘</p>
          <h2>닿자마자 시원한 프리미엄 아이스쿨링 신소재 냉감패드 SS/Q</h2>
          <h3><b class="redFont">66%</b> 39,900원</h3>
          <p class="review"><b class="star">★</b> 4.5 <b class="gray">리뷰 11</b></p>
          <p class="deliveryBox">무료배송</p>
        </a></li>

      <li><a href="#">
          <img src="images/ban02.webp" alt="제품 사진">
          <p class="brand">일리</p>
          <h2>화이트 확보! [오늘의딜][해외] 프란시스 Y3.3 커피머신 4color +웰컴캡슐팩</h2>
          <h3><b class="redFont">51%</b> 96,900원</h3>
          <p class="review"><b class="star">★</b> 4.8 <b class="gray">리뷰 217</b></p>
          <p class="deliveryBox">해외직구</p>
          <p class="deliveryBox">무료배송</p>
        </a></li>

      <li><a href="#">
          <img src="images/ban03.webp" alt="제품 사진">
          <p class="brand">홈앤하우스</p>
          <h2>[오늘의딜]드디어 재입고! 모노 논슬립 라운딩 옷걸이 40개</h2>
          <h3><b class="redFont">39%</b> 13,900원</h3>
          <p class="review"><b class="star">★</b> 4.7 <b class="gray">리뷰 14,318</b></p>
          <p class="deliveryBox">무료배송</p>
        </a></li>

      <li><a href="#">
          <img src="images/ban04.webp" alt="제품 사진">
          <p class="brand">우드레이</p>
          <h2>[쿠폰할인] 공간분리 원목 가벽인테리어 스트라이프 파티션 4colors</h2>
          <h3><b class="redFont">65%</b> 54,900원</h3>
          <p class="review"><b class="star">★</b> 4.5 <b class="gray">리뷰 10,136</b></p>

        </a></li>

    </ul>
  </article>

  <article id="banner02">
    <h1 class="title">유저들의 인테리어 시공리뷰</h1>
    <ul>

      <li><a href="#">
          <img src="images/ban04.webp" alt="제품 사진">
          <p><b class="star">★★★★★</b></p>
          <h2>상담 전날부터 귀찮게 해드려서 죄송했는데 친절하게 응대해주셨고 상담 시 항목 하나하나 자세히 설명해주시고 내부 사진까지 꼼꼼하게 봐주셔서 좋았어요.</h2>
          <h3>벨O인테리어디자인</h3>
        </a></li>

        <li><a href="#">
          <img src="images/ban05.jpg" alt="제품 사진">
          <p><b class="star">★★★★★</b></p>
          <h2>첫 미팅때부터 믿음이 가는 훌륭한 사장님이라는 인상을 받았습니다. </h2>
          <h3>인O아웃 인테리어</h3>
        </a></li>
        <li><a href="#">
          <img src="images/ban06.jpg" alt="제품 사진">
          <p><b class="star">★★★★★</b></p>
          <h2>저희가 인테리어 업체 선정시 제일 중요하게 본 것은 1. 동일아파트 시공 경험 2.소통 입니다. </h2>
          <h3>모드O 인테리어</h3>
        </a></li>




    </ul>
  </article>
  <section id="faq" class="bg_green">
    
    <ul class="listWrap">
      <h1 class="title">자주묻는 질문</h1>
      <li class="qa_li">
        <div class="question">
          <p class="tit">당근마켓 뜻이 뭔가요? (왜 당근마켓인가요?)</p>
          <p class="iconDiv"><img src="images/icon_jquery_faq2_icon_arrow.png"></p>
        </div>
        <div class="answer">현재는 직거래 뿐만 아니라 여러분의 근처에서 생기는 다양한 일을 해결할 수 있는 서비스를 꿈꾸고 있어요.</br>
          뿐만 아니라 '당근'의 건강한 이미지도 담아봤어요. '당근'처럼 건강한 서비스가 될 수 있도록 최선을 다할게요!</br>
          당근마켓은 나의 근처 이웃과 소소한 이야기를 나눌 수 있는 친근한 공간이길 원해요.</br>
          중고거래뿐만 아니라 우리 동네의 숨은 정보도 함께 나누며 미소가 번지는 지역 문화를 만들어 가고 싶어요.</br>
          모두 함께해 주실 거죠?</div>
      </li>
      <li class="qa_li">
        <div class="question">
          <p class="tit">커뮤니티 가이드라인</p>
          <p class="iconDiv"><img src="images/icon_jquery_faq2_icon_arrow.png"></p>
        </div>
        <div class="answer">따뜻한 지역 커뮤니티를 만들기 위해서는 우리 모두의 관심과 노력이 필요해요.<br>
          부적절한 게시글이나 사용자를 발견하면 적극적으로 신고해주세요. 당근마켓의 가치를 훼손하는 행위에 대한 기술적 조치 및 신속한 신고처리를 약속해요. 지금처럼 목소리를 내고, 적극적으로 참여해주세요.
          우리가 함께 지켜나갈 신뢰, 존중, 윤리 이 세가지 가치들을 누구나 볼 수 있도록 이 페이지도 계속해서 다듬고 업데이트할 거예요. 우리 함께 소중한 가치들을 지켜내요.<br>
          서로 신뢰하고 존중하는 따뜻한 커뮤니티를 만들어가요.</div>
      </li>
      <li class="qa_li">
        <div class="question">
          <p class="tit">당근마켓에서 지켜야 할 매너</p>
          <p class="iconDiv"><img src="images/icon_jquery_faq2_icon_arrow.png"></p>
        </div>
        <div class="answer">기본적으로 지켜야 하는 매너에는 무엇이 있을까요? 기본 매너인 만큼 꼭 지켜 주실 거라고 믿어요 :)</br>
          • 서로 존중해요. 우리 존댓말로 대화해요.</br>
          • 모두의 시간은 소중합니다. 시간 약속을 꼭 지켜주세요.</br>
          • 절대로 중간에 연락 끊기는 일이 없도록 해요. (잠수는 절대 안 돼요!)</br>
          • 따뜻한 감사 인사로 마무리를 지어요.</br>
          • 어떤 상황에서도 욕설, 비방, 명예훼손 등의 언행은 지양해 주세요.</br>
          • 늦은 시간 채팅은 부담스러울 수 있어요. 특히 새벽 시간에는 채팅을 자제해 주세요. </br>
          • 택배 거래는 부득이한 경우에만 요청하시고 가능한 한 직거래로 해주세요.</div>
      </li>
      <li class="qa_li">
        <div class="question">
          <p class="tit">판매 금지 물품</p>
          <p class="iconDiv"><img src="images/icon_jquery_faq2_icon_arrow.png"></p>
        </div>
        <div class="answer">
          • 가품∙이미테이션 (상표권, 저작권 침해 물품, 특정 브랜드의 스타일을 모방한 물품)</br>
          • 주류(무알콜 주류 포함), 담배, 전자담배, 모의총포 및 그 부속품 일체 (ex. 라이터, 비비탄 총알 등 청소년 유해물건)</br>
          • 경유, LPG, 휘발유 등의 유류 거래</br>
          • 반려동물, 생명이 있는 동물·곤충 (무료분양, 열대어 포함)</br>
          • 한약∙의약품 ∙ 의료기기∙마약류 (청소년 유해약물∙유해화학물질)</br>
          • 반영구 화장 등 면허나 자격 없는 자의 불법 유사 의료 행위 홍보/모집글</br>
          • 수제 음식물∙건강기능식품 : 직접 만들거나 가공한 음식, 건강기능식품(지자체 및 영업 신고를 한 사람만 판매할 수 있음)</br>
          • 유통기한이 지난 제품, 포장이 훼손되거나 개봉된 식품</br>
        </div>
      </li>
      <li class="qa_li">
        <div class="question">
          <p class="tit">중고거래 게시판 거래 및 환불 정책</p>
          <p class="iconDiv"><img src="images/icon_jquery_faq2_icon_arrow.png"></p>
        </div>
        <div class="answer">당근마켓의 모든 거래는 기본적으로 거래 당사자들끼리 자유롭게 진행할 수 있어요. 가급적 당근마켓은 거래에 개입하지 않아요.

          그래서 거래 중에 이견이 있어도 거래 당사자들끼리 직접 대화하여 해결하는 것을 권장해요.



          하지만 대화로 해결하기 어렵다면 당근마켓은 아래와 같은 정책을 따르고 있어요.



          거래 중에 분쟁이 발생하더라도 당근마켓의 기본매너를 지키는 건 잊지 말아 주세요. 휴대폰 너머 나와 똑같은 사람이 있다는 것을 기억해 주세요. :)</div>
      </li>
    </ul>
  </section>

  <section id="notice">
    <h1 class="title">공지사항</h1>
    <table class="notice_d">
      <colgroup>
        <col style="width: 8%;">
        <col style="width: 70%; text-align: left !important;">
        <col style="width: 14%;">
        <col style="width: 8%;">
      </colgroup>

      <thead>
        <td>번호</td>
        <td>제목</td>
        <td>작성일</td>
        <td>조회</td>
      </thead>
      <tbody>
        <tr>
          <td>165</td>
          <td>동네생활 "같이해요" 서비스 오픈 안내</td>
          <td>2022.04.21</td>
          <td>190</td>
        </tr>
        <tr>
          <td>164</td>
          <td>이용 약관이 변경될 예정이예요.</td>
          <td>2022.03.29</td>
          <td>208</td>
        </tr>
        <tr>
          <td>163</td>
          <td>오류로 인하여 서비스 이용에 불편을 드려 죄송합니다.</td>
          <td>2022.03.22</td>
          <td>304</td>
        </tr>
        <tr>
          <td>162</td>
          <td>앱 최소 지원 버전이 변경될 예정이예요.</td>
          <td>2022.02.18</td>
          <td>89</td>
        </tr>
        <tr>
          <td>161</td>
          <td>이용 약관과 개인정보처리방침이 변경될 예정이예요.</td>
          <td>2022.02.16</td>
          <td>100</td>
        </tr>
      </tbody>

    </table>
  </section>



<%@ include file="include_footer.jsp" %> 
</body>
</html>