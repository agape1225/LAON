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
  <link rel="stylesheet" href="${path}/resources/admin/assets/fonts/feather-font/css/iconfont.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/select2/select2.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/jquery-tags-input/jquery.tagsinput.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/dropzone/dropzone.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/dropify/dist/dropify.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${path}/resources/admin/assets/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.min.css">

  <!-- end plugin css for this page -->
  <!-- inject:css -->

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
              <h6 class="card-title">Banner</h6>
              <form action="/admin/create_banner/insert_banner.do" method="post" enctype="multipart/form-data">

                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">SimpleMDE</h4>
                    <p class="card-description">Read the <a href="https://simplemde.com/" target="_blank"> Official SimpleMDE Documentation </a>for a full list of instructions and other options.</p>
                    <textarea class="form-control" name="paragraph" id="simpleMdeExample" oninput="btn_status()" rows="10"></textarea>
                  </div>
                </div>

                <div class="card-body">
                  <h6 class="card-title">Dropify</h6>
                  <input type="file" id="myDropify" class="border" name="poster" oninput="btn_status()" onchange="fileTypeCheck(this)"/>
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
    if (document.getElementById("simpleMdeExample").value !== '' && document.getElementById("myDropify").value !== '' ) {
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
<script src="${path}/resources/admin/assets/vendors/jquery-validation/jquery.validate.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/inputmask/jquery.inputmask.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/select2/select2.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/dropzone/dropzone.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/dropify/dist/dropify.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/moment/moment.min.js"></script>
<script src="${path}/resources/admin/assets/vendors/tempusdominus-bootstrap-4/tempusdominus-bootstrap-4.js"></script>
<!-- end plugin js for this page -->
<!-- inject:js -->
<script src="${path}/resources/admin/assets/vendors/feather-icons/feather.min.js"></script>
<script src="${path}/resources/admin/assets/js/template.js"></script>
<!-- endinject -->
<!-- custom js for this page -->
<script src="${path}/resources/admin/assets/js/file-upload.js"></script>
<script src="${path}/resources/admin/assets/js/form-validation.js"></script>
<script src="${path}/resources/admin/assets/js/bootstrap-maxlength.js"></script>
<script src="${path}/resources/admin/assets/js/inputmask.js"></script>
<script src="${path}/resources/admin/assets/js/select2.js"></script>
<script src="${path}/resources/admin/assets/js/typeahead.js"></script>
<script src="${path}/resources/admin/assets/js/tags-input.js"></script>
<script src="${path}/resources/admin/assets/js/dropzone.js"></script>
<script src="${path}/resources/admin/assets/js/dropify.js"></script>
<script src="${path}/resources/admin/assets/js/bootstrap-colorpicker.js"></script>
<script src="${path}/resources/admin/assets/js/datepicker.js"></script>
<script src="${path}/resources/admin/assets/js/timepicker.js"></script>
<!-- end custom js for this page -->
</body>
</html>