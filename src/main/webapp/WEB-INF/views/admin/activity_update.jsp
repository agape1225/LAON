<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <!-- partial -->

  <div class="page-wrapper">

    <!-- partial:../../partials/_navbar.html -->
    <jsp:include page="${path}/WEB-INF/views/admin/include/admin_sidebar.jsp"/>
    <!-- partial -->

    <div class="page-content">

      <nav class="page-breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Forms</a></li>
        </ol>
      </nav>

      <div class="row">
        <div class="col-md-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h6 class="card-title">Activity</h6>
              <form action="/admin/update_activity/update.do" method="post" enctype="multipart/form-data">
                <input type="hidden" value="${activity.num}" name="num">
                <div class="form-group">
                  <label for="exampleInputText2">NAME</label>
                  <input type="text" oninput="btn_status()" class="form-control"
                         id="exampleInputText2"
                         placeholder="Activity Name" name="name" value="${activity.name}">
                </div>

                <div class="form-group">
                  <label for="exampleInputText1">CATEGORY</label>
                  <select style="color: black" id="exampleInputText1" name="category" oninput="btn_status()">
                    <option value="서포터즈">서포터즈</option>
                    <option value="기자단">기자단</option>
                    <option value="멘토링">멘토링</option>
                    <option value="교내활동">교내활동</option>
                    <option value="공모전">공모전</option>
                    <option value="인턴쉽">인턴쉽</option>
                    <option value="대외활동">대외활동</option>
                  </select>
                </div>

                <div class="form-group">
                  <label for="exampleInputText2">TARGET</label>
                  <input type="text" oninput="btn_status()" class="form-control"
                         id="exampleInputText3"
                         placeholder="target" name="target" value="${activity.target}">
                </div>

                <div class="form-group">
                  <label for="exampleInputText2">Dead Line</label>
                  <input type="date" oninput="btn_status()" class="form-control"
                         id="exampleInputDate"
                         placeholder="date" name="date" value="${activity.date}">
                </div>

                <div class="form-group">
                  <label for="exampleInputText2">LINK</label>
                  <input type="text" oninput="btn_status()" class="form-control"
                         id="exampleInputText4"
                         placeholder="link" name="link" value="${activity.link}">
                </div>

                <div class="form-group">
                  <label for="exampleInputText2">BENEFITS</label>
                  <input type="text" oninput="btn_status()" class="form-control"
                         id="exampleInputText5"
                         placeholder="benefits" name="benefits" value="${activity.benefits}">
                </div>

                <div class="form-group">
                  <label for="exampleInputText2">HOST</label>
                  <input type="text" oninput="btn_status()" class="form-control"
                         id="exampleInputText6"
                         placeholder="host" name="host" value="${activity.host}">
                </div>

                <div class="form-group">
                  <label for="exampleInputText2">DETAIL</label>
                  <input type="text" oninput="btn_status()" class="form-control"
                         id="exampleInputText7"
                         placeholder="detail" name="detail" value="${activity.detail}">
                </div>

                <div class="form-group">
                  <label>Poster upload</label>
                  <input type="file" oninput="btn_status()" name="poster" id="exampleImage1"
                  <%--                                           class="file-upload-default" accept="image/*">--%>
                         class="file-upload-default" accept="image/*" onchange="fileTypeCheck(this)">
                  <div class="input-group col-xs-12">
                    <input type="text" class="form-control file-upload-info"
                           id="exampleInputImage1"
                           disabled=""
                           placeholder="Upload Image">
                    <span class="input-group-append">
                      <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                    </span>
                  </div>
                </div>

                <button class="btn btn-primary" type="submit" id="sub_btn" disabled="disabled">등록
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>

    </div>

    <!-- partial:../../partials/_footer.html -->

    <!-- partial -->

  </div>
</div>

<script>

  function btn_status() {
    if (document.getElementById("exampleInputText1").value !== '' &&
            document.getElementById("exampleInputText2").value !== '' &&
            document.getElementById("exampleInputText3").value !== '' &&
            document.getElementById("exampleInputText4").value !== '' &&
            document.getElementById("exampleInputText5").value !== '' &&
            document.getElementById("exampleInputText6").value !== '' &&
            document.getElementById("exampleInputDate").value !== '' &&
            document.getElementById("exampleImage1").value !== '') {
      document.getElementById("sub_btn").disabled = false;
    } else {
      document.getElementById("sub_btn").disabled = true;
    }
  }

  function fileTypeCheck(obj) {

    pathpoint = obj.value.lastIndexOf('.');
    filepoint = obj.value.substring(pathpoint + 1, obj.length);
    filetype = filepoint.toLowerCase();

    if (filetype == 'jpg' || filetype == 'gif' || filetype == 'png' || filetype == 'jpeg' || filetype == 'bmp') {
      return true;
    } else {
      alert('옳지 않은 파일형식입니다.');
      parentObj = obj.parentNode
      node = parentObj.replaceChild(obj.cloneNode(true), obj);
      return false;
    }
  }
</script>
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
<script src="${path}/resources/admin/assets/js/file-upload.js"></script>
<!-- end custom js for this page -->
</body>
</html>