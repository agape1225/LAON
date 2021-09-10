
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
	<!-- end plugin css for this page -->
	<!-- inject:css -->
	<link rel="stylesheet" href="${path}/resources/admin/assets/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="${path}/resources/admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
	<!-- endinject -->
  <!-- Layout styles -->  
	<link rel="stylesheet" href="${path}/resources/admin/assets/css/demo_1/style.css">
  <!-- End layout styles -->
  <link rel="shortcut icon" href="${path}/resources/admin/assets/images/favicon.png" />
</head>
<body class="sidebar-dark">
	<div class="main-wrapper">
		<div class="page-wrapper full-page">
			<div class="page-content d-flex align-items-center justify-content-center">

				<div class="row w-100 mx-0 auth-page">
					<div class="col-md-8 col-xl-6 mx-auto">
						<div class="card">
							<div class="row">
                <div class="col-md-8 pl-md-0">
                  <div class="auth-form-wrapper px-4 py-5">
                    <a href="#" class="noble-ui-logo d-block mb-2">LAON<span> 관리자 로그인</span></a>
                    <h5 class="text-muted font-weight-normal mb-4">강남대학교 활동 추천 웹</h5>
                    <form class="forms-sample" action="/admin/login/check.do" method="post">
                      <div class="form-group">
                        <label for="exampleInputEmail1">ID</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Email" name="id">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" autocomplete="current-password" placeholder="Password" name="pw">
                      </div>
                        <button type="submit" class="btn btn-outline-primary btn-icon-text mb-2 mb-md-0">로그인</button>
                    </form>
                  </div>
                </div>
              </div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- core:js -->
	<script src="${path}/resources/admin/assets/vendors/core/core.js"></script>
	<!-- endinject -->
  <!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="${path}/resources/admin/assets/vendors/feather-icons/feather.min.js"></script>
	<script src="${path}/resources/admin/assets/js/template.js"></script>
	<!-- endinject -->
  <!-- custom js for this page -->
	<!-- end custom js for this page -->
</body>
</html>