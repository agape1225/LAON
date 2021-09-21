
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NobleUI Responsive Bootstrap 4 Dashboard Template</title>
    <!-- core:css -->
    <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/core/core.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <!-- end plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="${path}/resources/admin/assets/fonts/feather-font/css/iconfont.css">
    <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="${path}/resources/admin/assets/css/demo_1/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="${path}/resources/admin/assets/images/favicon.png"/>
</head>
<body class="sidebar-dark">
<div class="main-wrapper">

    <!-- partial:../../partials/_sidebar.html -->

    <jsp:include page="${path}/WEB-INF/views/admin/include/admin_navbar.jsp"/>
    <div class="page-wrapper">

        <!-- partial:../../partials/_navbar.html -->
        <jsp:include page="${path}/WEB-INF/views/admin/include/admin_sidebar.jsp"/>
        <!-- partial -->

        <div class="page-content">

            <nav class="page-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Tables</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Data Table</li>
                </ol>
            </nav>

            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Data Table</h6>
                            <p class="card-description">Read the <a href="https://datatables.net/" target="_blank">
                                Official DataTables Documentation </a>for a full list of instructions and other options.
                            </p>
                            <div class="table-responsive">
                                <table id="dataTableExample" class="table">
                                    <thead>
                                    <tr>
                                        <th>번호</th>
                                        <th>포스터</th>
                                        <th>내용</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach varStatus="i" var="item" items="${banners}">

                                        <tr>
                                            <td>${item.num}</td>
                                            <td><button class="btn btn-primary" onclick="window.open('${path}/${item.poster}')">이미지 보기</button></td>
                                            <td>
                                                <div class="btn-group" role="group" aria-label="Basic example">
                                                    <button class="btn btn-primary" onclick="location.href='/admin/update_banner?number=${item.num}'">수정</button>
                                                    <button class="btn btn-secondary" onclick="if(confirm('정말 삭제하시겠습니까?')){location.href='/admin/delete_banner.do?number=${item.num}';} else {return false;}">삭제</button>
                                                </div>
                                            </td>
                                            <td>${item.paragraph}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- partial:../../partials/_footer.html -->
        <footer class="footer d-flex flex-column flex-md-row align-items-center justify-content-between">
            <p class="text-muted text-center text-md-left">Copyright © 2020 <a href="https://www.nobleui.com"
                                                                               target="_blank">NobleUI</a>. All rights
                reserved</p>
            <p class="text-muted text-center text-md-left mb-0 d-none d-md-block">Handcrafted With <i
                    class="mb-1 text-primary ml-1 icon-small" data-feather="heart"></i></p>
        </footer>
        <!-- partial -->
    </div>
</div>

<!-- core:js -->
<script src="${path}/resources/admin/assets/vendors/core/core.js"></script>
<!-- endinject -->
<!-- plugin js for this page -->
<script src="${path}/resources/admin/assets/vendors/datatables.net/jquery.dataTables.js"></script>
<script src="${path}/resources/admin/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
<!-- end plugin js for this page -->
<!-- inject:js -->
<script src="${path}/resources/admin/assets/vendors/feather-icons/feather.min.js"></script>
<script src="${path}/resources/admin/assets/js/template.js"></script>
<!-- endinject -->
<!-- custom js for this page -->
<script src="${path}/resources/admin/assets/js/data-table.js"></script>
<!-- end custom js for this page -->
</body>
</html>