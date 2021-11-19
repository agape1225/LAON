
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
      <%--<header>
         <!-- header inner -->
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-3 logo_section">
                  <div class="full">
                     <div class="center-desk">
                        <div class="logo"> <a href="index.jsp"><img src="${path}/resources/front/images/logo.png" alt="#"></a> </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-9">
                  <div class="menu-area">
                     <div class="limit-box">
                        <nav class="main-menu">
                           <ul class="menu-area-main">
                              <li class="active">
                                 <a href="/">Home</a>
                              </li>
                              <li>
                                 <a href="/activities">대외활동</a>
                              </li>
                              <li>
                                 <a href="/competition">공모전</a>
                              </li>
                              <li>
                                 <a href="/onCampus">교내활동</a>
                              </li>
                              <li>
                                 <a href="/news">교내소식</a>
                              </li>
                           </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </header>--%>
         <!-- end header inner -->
      <!-- end header -->
      <!-- revolution slider -->
      <div class="banner-slider">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-7">
                  <div id="slider_main" class="carousel slide" data-ride="carousel">
                     <!-- The slideshow -->
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <img src="${path}/resources/front/images/banner1.PNG" alt="#" />
                            <%--<img class="bannerImg" src="${banner1.poster}"/>--%>
                        </div>
                        <div class="carousel-item">
                           <img src="${path}/resources/front/images/banner2.PNG" alt="#" />
                            <%--<img class="bannerImg" src="${banner2.poster}"/>--%>
                        </div>
                     </div>
                     <!-- Left and right controls -->
                     <a class="carousel-control-prev" href="#slider_main" data-slide="prev">
                     <i class="fa fa-angle-left" aria-hidden="true"></i>
                     </a>
                     <a class="carousel-control-next" href="#slider_main" data-slide="next">
                     <i class="fa fa-angle-right" aria-hidden="true"></i>
                     </a>
                  </div>
               </div>
               <div class="col-md-5">
                  <div class="full slider_cont_section">
                     <h4>More Featured in</h4>
                     <h3>대외활동</h3>
                     <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look</p>
                     <div class="button_section">
                        <a href="about.html">apply to</a>
                        <a href="contact.html">search more</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end revolution slider -->
      <div class="slider card">
      <!-- slider card -->
          <section class="pt-5 pb-5">
              <div class="container">
                  <div class="row">
                      <div class="col-6">
                          <h3 class="mb-3">대외활동</h3>
                      </div>
                      <div class="col-6 text-right">
                          <a class="glyphicon glyphicon-menu-left mb-3 mr-1" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                              <i class="fa fa-arrow-left"></i>
                          </a>
                          <a class="glyphicon glyphicon-menu-right mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                              <i class="fa fa-arrow-right"></i>
                          </a>
                      </div>
                      <div class="col-12">
                          <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
                              <div class="carousel-inner">
                                  <div class="carousel-item active">
                                      <div class="row">

                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1532781914607-2031eca2f00d?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=7c625ea379640da3ef2e24f20df7ce8d">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>

                                              </div>
                                          </div>
                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1517760444937-f6397edcbbcd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=42b2d9ae6feb9c4ff98b9133addfb698">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1532712938310-34cb3982ef74?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3d2e8a2039c06dd26db977fe6ac6186a">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>
                                              </div>
                                          </div>

                                      </div>
                                  </div>
                                  <div class="carousel-item">
                                      <div class="row">

                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1532771098148-525cefe10c23?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=3f317c1f7a16116dec454fbc267dd8e4">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>

                                              </div>
                                          </div>
                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1532715088550-62f09305f765?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ebadb044b374504ef8e81bdec4d0e840">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1506197603052-3cc9c3a201bd?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=0754ab085804ae8a3b562548e6b4aa2e">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>
                                              </div>
                                          </div>

                                      </div>
                                  </div>
                                  <div class="carousel-item">
                                      <div class="row">

                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=ee8417f0ea2a50d53a12665820b54e23">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>

                                              </div>
                                          </div>
                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1532777946373-b6783242f211?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=8ac55cf3a68785643998730839663129">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                                                  </div>
                                              </div>
                                          </div>
                                          <div class="col-md-4 mb-3">
                                              <div class="card">
                                                  <img class="img-fluid" alt="100%x280" src="https://images.unsplash.com/photo-1532763303805-529d595877c5?ixlib=rb-0.3.5&amp;q=80&amp;fm=jpg&amp;crop=entropy&amp;cs=tinysrgb&amp;w=1080&amp;fit=max&amp;ixid=eyJhcHBfaWQiOjMyMDc0fQ&amp;s=5ee4fd5d19b40f93eadb21871757eda6">
                                                  <div class="card-body">
                                                      <h4 class="card-title">Special title treatment</h4>
                                                      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </section>
      </div>
      <!-- footer -->
      <footer>
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-md-6">
                  <div class="footer_thanks">
                     <h1>THANK YOU</h1>
                     <p>Only for Kangnam university students</p>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6">
                  <div class="footer_links">
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
<%--
      <script src="assets/js/jquery.js"></script>
      <script src="assets/js/raphael-min.js"></script>
      <script src="assets/js/jquery.easing.1.3.js"></script>
      <script src="assets/js/bootstrap.js"></script>
      <script src="assets/js/google-code-prettify/prettify.js"></script>
      <script src="assets/js/jquery.elastislide.js"></script>
      <script src="assets/js/jquery.prettyPhoto.js"></script>
      <script src="assets/js/jquery.flexslider.js"></script>
      <script src="assets/js/jquery-hover-effect.js"></script>
      <script src="assets/js/animate.js"></script>--%>
   </body>
</html>