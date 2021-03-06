
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
        html,body{width:100%; height: 100%;}
        #foryou{font-size: 50px;font-weight: 700; margin-left: 50px; color:#4E5467;}
        #recent, #imminent
        {background-color: transparent; padding-top: 35px; padding-left:15px; font-weight: bold;}
        #all,#video,#idea,#startup,#engineer,#market,#design,#it,#etc
        {background-color: transparent; padding-top: 35px; padding-right:40px; font-weight: bold;}
        #recent:hover, #imminent:hover,#all:hover,#video:hover,#idea:hover,#startup:hover,#engineer:hover,#market:hover,#design:hover,#it:hover,#etc:hover,.order_num:hover
        {color:#697087;}
        #recent:active, #imminent:active,#all:active,#video:active,#idea:active,#startup:active,#engineer:active,#market:hover,#design:hover,#it:hover,#etc:active,.order_num:active
        {color:#697087;}
        .poster{display: inline-block; margin-bottom:50px;}
        .slider{display: inline-block; padding-left: 55px; width: 24%; height: 50px;}
        .card_bottom{ background-color:#f0f0f0;}
        .card_title{ text-align: left; font-size: 30px; padding-left: 10px; height: 200px;}
        .order{text-align: center;}
        .prebtn,.nextbtn{background-color: transparent; font-size: 20px; color:#4E5467; }
        .order_num{background-color: transparent; font-size: 20px; padding:10px; border: 1px solid #E9EBF3;}

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
<!-- end loader -->
<!-- header -->
<jsp:include page="${path}/WEB-INF/views/front/header.jsp"/>
<!-- end header -->
<!-- revolution slider -->
<div class="top">
    <br>
    <div style="float:left"><h1 id="foryou">For you</h1></div>
    <div style="float:left"><button id="recent">• 최신순</button><button id="imminent">• 마감임박순</button></div>
    <div style="float:right; margin-right: 27px;"><button id="all">전체</button><button id="video">영상/콘텐츠</button><button id="idea">기획/아이디어</button><button id="startup">창업/스타트업</button><button id="engineer">공학/시나리오</button><button id="market">광고/마케팅</button><button id="design">디자인</button><button id="it">IT/SW</button><button id="etc">기타</button></div>
</div>
<!--First slide-->
<div class="poster">
    <c:forEach varStatus="i" var="item" items="${activities}">
        <div class="slider">
            <img class="card_img" src="${item.poster}" width="430" height="50" alt="Card image cap">
            <div class="card_bottom" >
                <div class="card_title" >
                    <p>${item.date}</p><p>${item.name}</p><p>${item.detail}</p>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<%--<br>
<br>
<br>
<br>
<br>
<br>
<div class="poster">
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="poster">
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="poster">
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
    <div class="slider">
        <img class="card_img" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg" width="430" height="50" alt="Card image cap">
        <div class="card_bottom" >
            <div class="card_title" >
                <p>D-DAY</p><p>card_title</p><p>card_field</p>
            </div>
        </div>
    </div>
</div>--%>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="order"><button class="prebtn">&lt</button><button class="order_num">1</button><button class="order_num">2</button><button class="order_num">3</button><button class="order_num">4</button><button class="order_num">5</button><button class="order_num">6</button><button class="order_num">7</button><button class="order_num">8</button><button class="order_num">9</button><button class="nextbtn">&gt</button></div>
<br>
<br>
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