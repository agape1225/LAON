<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021-09-27
  Time: 오후 8:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ysw02
  Date: 2021-01-31
  Time: 오후 7:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
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
</header>