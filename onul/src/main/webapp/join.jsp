<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="ko">
<head>
<title>오늘의 집 참고 jsp 구현 - 회원가입</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/join.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

<!-- font awesome-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


 <link rel="stylesheet" href="css/form.css">
 <link rel="stylesheet" href="css/style.css">

</head>

<!-- Nav -->



<section>
  <form id="joinup">
      <div>
      <div class="logo"><a href="#"><img src="images/logo.png" alt="오늘의 집logo">오늘의 집</a></div>
        <h1 class="join_title">회원가입</h1>
        <div class="join_sns">
          <div>SNS계정으로 간편하게 회원가입</div>
          <ul>
            <a href="https://ko-kr.facebook.com/" title="페이스북으로 가입하기" class="join_sns_icon"><img src="images/facebook_icon.png" alt=""></a>
              <a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fproxy%3DeasyXDM_Kakao_j6eeiewgvcf_provider%26ka%3Dsdk%252F1.43.0%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fohou.se%26origin%3Dhttps%253A%252F%252Fohou.se%26response_type%3Dcode%26redirect_uri%3Dkakaojs%26state%3D19hulfjbl3762x9siogq4j%26client_id%3D3019c756ec77dd7e0a24e56d9d784f77&talk_login=hiddenk" title="카카오로 가입하기" class="join_sns_icon"><img src="images/kakao_icon.png" alt=""></a>
              <a href="https://www.naver.com" title="네이버로 가입하기" class="join_sns_icon"><img src="images/naver_icon.png" alt=""></a>
          </ul>
        </div>
      </div>
      <fieldset>
        <ul>
          <li>
            <label for="email">이메일을 입력하세요.</label>
            <input class="form_control" type="text" id="email" name="email" required autofocus placeholder="이메일">
          </li>
  
          <li>
            <label for="pwd">비밀번호를 입력하세요.</label>
            <input type="password" id="pwd" name="pwd" required autofocus placeholder="비밀번호">
          </li>
          <li>
            <label for="name">이름을 입력하세요.</label>
            <input type="text" id="name" name="name" required autofocus placeholder="홍길동">
          </li>
         
          <li>
            <label for="birth">생년월일을 입력하세요.</label>
            <input type="text" id="birth" name="birth" required autofocus placeholder="생년월일을 8자리를 입력하세요">
          </li>
  
          <li>
            <label for="tel">전화번호를 입력하세요.</label>
            <input class="boxS" type="input" id="telno1" name="telno1" maxlength="3" required autofocus placeholder="010"> 
             -  <input class="boxS" type="input" id="telno2" name="telno2" maxlength="4" required autofocus placeholder="중간 4자리">
             -  <input class="boxS" type="input" id="telno3" name="telno3" maxlength="4" required autofocus placeholder="끝 4자리">
          </li>
  
          <li>
            <label for="addr">주소를 입력하세요.</label>
            <input type="text" id="addr" name="addr" required autofocus placeholder="서울특별시 00구 000동 000-0">
          </li>
          <label>약관동의</label>
          <li class="agreement">
            <p class="allAgree"><input type="checkbox" value="전체동의" id="check_all"> 전체동의</p>
            <p><input type="checkbox"  class="normal"> 만 14세 이상입니다<b class="blue"> (필수)</b></p>
            <p><input type="checkbox"  class="normal"> 이용약관<b class="blue"> (필수)</b></p>
            <p><input type="checkbox"  class="normal"> 개인정보수집 및 이용동의<b class="blue"> (필수)</b></p>
            <p><input type="checkbox"  class="normal"> 이벤트, 쿠폰, 특가 알림 메일 및 SMS 등 수신(선택)</p>
          </li>
        </ul>
    <button class="sign_up" type="submit">회원가입하기</button>
      </fieldset>
        <h3 class="gotologin">이미 아이디가 있으신가요? <a href="login.jsp"><b>로그인</b></a></h3>
    
  
  </form>
</section>

<%@ include file="include_footer.jsp" %> 
</body>
</html>