
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
        .full blog_cont p{color:#0c1427; font-size:23px; font-weight: 500; padding-bottom: 40px;}
        html,body{width: 100%; height: 100%;}
        .detail_content{font-weight:600;}
        .apply{width:100%; background-color: #B6BDD7; text-align: center; margin-top: 20px;}
        .apply:hover{background-color: #697087;}
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
<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="${path}/resources/front/images/loading.gif" alt="" /></div>
</div>
<!-- end loader -->
<!-- header -->
<jsp:include page="${path}/WEB-INF/views/front/header.jsp"/>
<!-- end header -->
<div class="Marketing-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="Marketingheading">
                    <h3 style="font-size: 40px; text-align: center; font-weight: 550; color: #0c1427;">Detail</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- section -->
<div class="section layout_padding dark_bg" style="background-color:#E9EBF3;">
    <div class="container">
        <div class="row" >
            <div class="col-md-6" style="display: inline-block;">
                <img src="${path}/resources/front/images/test_sunny.jpg" width="500" height="600" alt="#" />
            </div>
            <div class="col-md-6" style="color: #f0f0f0;">
                <div class="full blog_cont" style=" float: left;">
                    <h3 class="white_font" style="font-size: 40px; float: left; ">[대외활동] 인문 360 온라인 모니터링단 1기 모집</h3>
                    <div class="content" >
                        <div class="window_font" style="color: #0c1427;  float: left; font-size:20px; font-weight:700; float: left; padding-top:60px;">
                            <div>분      야</div>
                            <div>활  동  명</div>
                            <div>주최, 주관</div>
                            <div>접 수 기 간</div>
                        </div>
                        <div class="window_infor" style="color: #0c1427;float: left; padding-left:40px;font-size:20px; font-weight:700; padding-top:60px;float: left;">
                            <div>기타</div>
                            <div>2021 부산국제트래블마트 서포터즈</div>
                            <div>부산광역시/부산광역시관광협회</div>
                            <div>2021.09.02(목) ~ 09.08(금)</div>
                            <div class="apply" style="float: left;">
                                <a href="https://www.besunny.com/main/sunny/notice/mainNoticeView.do" style="color: white;">apply to</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
<!-- end section -->

<!-- section -->
<div class="section layout_padding">
    <div class="container">

        <div class="row">
            <div class="col-md-6">
                <div class="full blog_cont" style="font-size:25px; font-weight:bold; color: #0c1427;">
                    <p style="font-size: 30px; font-weight: 550; color: #0c1427;">Detail</p>
                    <br>
                    ○ 활동 내용
                    <p class="detail_content">
                        인문360 사이트 및 콘텐츠 모니터링
                        월 1회 모니터링 보고서 제출
                        인문360 사이트: https://inmun360.culture.go.kr/</p>
                    <br>
                    ○ 자격요건
                    <p class="detail_content">
                        인문 콘텐츠에 관심을 가지고 적극적으로 참여를 희망하는 자</p>
                    <br>
                    ○ 지원방법
                    <p class="detail_content">
                        네이버폼 설문 응답
                        지원 링크: http://naver.me/5s9pMnZ1</p>
                    <br>
                    ○ 활동일정
                    <p class="detail_content">
                        모집기간: 9.1.(수) ~ 9.13.(월)
                        선정발표: 9.24.(금)</p>
                </div>
            </div>
            <div class="col-md-6">

            </div>

        </div>
    </div>
</div>
<!-- footer -->
<footer>
    <div class="container" >
        <div class="row">
            <div class="col-lg-4 col-md-6" >
                <div class="footer_thanks">
                    <h1>THANK YOU</h1>
                    <p>Only for Kangnam university students</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="footer_links" >
                    <h3>Position</h3>
                    <p>Front 201904014 김다은, 201904054 서다혜<br>
                        Back  201904009 구나영, 201904055 성창규<br>
                        Data  201904131 황진영</p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
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