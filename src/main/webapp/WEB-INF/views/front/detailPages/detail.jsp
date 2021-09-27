
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ysw02
  Date: 2021-01-31
  Time: 오후 7:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        html,body{width:100%; height: 100%;margin:0; padding:0;}
        .footer{margin-top: 80%;}
        .notice-box{background-color: #f0f0f0; width:80%; border-width: 3px; border-style:solid; border-color: #0c1427; position: absolute; left: 10%;}
        #close{float:right;display:inline-block;padding:20px 45px;font-weight: 700;text-shadow: 0 1px 0 #fff;font-size: 3.3rem; }
        #close:hover{border: 0;cursor:pointer;opacity:.75; }
        .window_title{font-size: 50px; text-align: center; font-weight:bold; padding-top: 80px; color: #0c1427;}
        .window_img{float:left; padding-left: 3%; margin-right: 4%;}
        .window_infor{float:left; padding-top:15%; font-size:30px; font-weight:500; color: #0c1427;}
        .apply{width:100%; background-color: #B6BDD7; text-align: center;}
        .apply:hover{background-color: #4E5467;}
        .detail_content{float:left; padding-left:3%; padding-top:3%;font-size:25px; font-weight:bold; color: #0c1427;}
        .detail_content p{color:#0c1427; font-size:23px; font-weight: 500; padding-bottom: 40px;}
    </style>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Jack Blogger</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="${path}/resources/front/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="${path}/resources/front/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="${path}/resources/front/css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="${path}/resources/front/images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="${path}/resources/front/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <%--<!-- styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="assets/css/prettyphoto.css" rel="stylesheet">
    <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="assets/css/flexslider.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/color/default.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=droid+serif:400,600,400italic|open+sans:400,600,700" rel="stylesheet">

    <!-- fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
--%>
</head>
<!-- body -->
<body class="main-layout" style="background-color:#E9EBF3;">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="${path}/resources/front/images/loading.gif" alt="" /></div>
</div>

<div class="notice-box" style="background-color: white;">
    <span id="close" onclick="this.parentNode.style.display = 'none';">&times;</span>
    <div class="window_title">[대외활동] 인문 360 온라인 모니터링단 1기 모집</div>
    <hr>
    <div class="content">
        <div class="window_img"><img src="${path}/resources/front/images/window_img.jpg" width="600" height="600" alt="#"></div>
        <div class="window_infor"><pre>
분      야
활  동  명
주최, 주관
접 수 기 간
        </pre></div>
        <div class="window_infor"><pre>
: 기타
: 2021 부산국제트래블마트 서포터즈
: 부산광역시/부산광역시관광협회
: 2021.09.02(목) ~ 09.08(금)
        </pre>
            <div class="apply">
                <a href="about.html" style="color: white;">apply to</a>
            </div>
        </div>
    </div>
    <div class="detail_content">
        <p style="font-size: 30px; font-weight: 550; color: #0c1427;">상세내용</p>
        ○ 활동 내용
        <p>
            인문360 사이트 및 콘텐츠 모니터링
            월 1회 모니터링 보고서 제출
            인문360 사이트: https://inmun360.culture.go.kr/</p>

        ○ 자격요건
        <p>
            인문 콘텐츠에 관심을 가지고 적극적으로 참여를 희망하는 자</p>

        ○ 지원방법
        <p>
            네이버폼 설문 응답
            지원 링크: http://naver.me/5s9pMnZ1</p>

        ○ 활동일정
        <p>
            모집기간: 9.1.(수) ~ 9.13.(월)
            선정발표: 9.24.(금)</p>
    </div>
</div>
<!-- Javascript files-->
<script src="${path}/resources/front/js/jquery.min.js"></script>
<script src="${path}/resources/front/js/popper.min.js"></script>
<script src="${path}/resources/front/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/front/js/jquery-3.0.0.min.js"></script>
<script src="${path}/resources/front/js/plugin.js"></script>
<!-- Scrollbar Js Files -->
<script src="${path}/resources/front/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${path}/resources/front/js/custom.js"></script>

<a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-48 active"></i></a>
<!--
      <script src="assets/js/jquery.js"></script>
      <script src="assets/js/raphael-min.js"></script>
      <script src="assets/js/jquery.easing.1.3.js"></script>
      <script src="assets/js/bootstrap.js"></script>
      <script src="assets/js/google-code-prettify/prettify.js"></script>
      <script src="assets/js/jquery.elastislide.js"></script>
      <script src="assets/js/jquery.prettyPhoto.js"></script>
      <script src="assets/js/jquery.flexslider.js"></script>
      <script src="assets/js/jquery-hover-effect.js"></script>
      <script src="assets/js/animate.js"></script>-->
</body>
</html>