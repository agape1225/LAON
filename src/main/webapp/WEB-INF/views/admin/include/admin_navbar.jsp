<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021-09-18
  Time: 오후 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="sidebar">
    <div class="sidebar-header">
        <a href="/admin" class="sidebar-brand">
            Noble<span>UI</span>
        </a>
        <div class="sidebar-toggler not-active">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <div class="sidebar-body">
        <ul class="nav">

            <li class="nav-item">
                <a href="/admin" class="nav-link">
                    <i class="link-icon" data-feather="box"></i>
                    <span class="link-title">HOME</span>
                </a>
            </li>

            <li class="nav-item nav-category">Main</li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#forms" role="button" aria-expanded="false"
                   aria-controls="forms">
                    <i class="link-icon" data-feather="inbox"></i>
                    <span class="link-title">Activities</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse">
                    <ul class="nav sub-menu" id="form1">
                        <li class="nav-item">
                            <a href="/admin/activity_table" class="nav-link">Activities List</a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/activity_insert" class="nav-link">Activity Create</a>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#forms" role="button" aria-expanded="false"
                   aria-controls="forms">
                    <i class="link-icon" data-feather="inbox"></i>
                    <span class="link-title">Banner</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse">
                    <ul class="nav sub-menu" id="form2">
                        <li class="nav-item">
                            <a href="/admin/banner_table" class="nav-link">Banner List</a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/banner_insert" class="nav-link">Banner Create</a>
                        </li>
                    </ul>
                </div>
            </li>

        </ul>
    </div>
</nav>

<nav class="settings-sidebar">
    <div class="sidebar-body">
        <a href="#" class="settings-sidebar-toggler">
            <i data-feather="settings"></i>
        </a>
        <h6 class="text-muted">Sidebar:</h6>
        <div class="form-group border-bottom">
            <div class="form-check form-check-inline">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="sidebarThemeSettings" id="sidebarLight"
                           value="sidebar-light" checked>
                    Light
                </label>
            </div>
            <div class="form-check form-check-inline">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="sidebarThemeSettings" id="sidebarDark"
                           value="sidebar-dark">
                    Dark
                </label>
            </div>
        </div>
        <div class="theme-wrapper">
            <h6 class="text-muted mb-2">Light Theme:</h6>
            <a class="theme-item active" href="${path}/resources/admin/demo_1/dashboard-one.html">
                <img src="${path}/resources/admin/assets/images/screenshots/light.jpg" alt="light theme">
            </a>
            <h6 class="text-muted mb-2">Dark Theme:</h6>
            <a class="theme-item" href="${path}/resources/admin/demo_2/dashboard-one.html">
                <img src="${path}/resources/admin/assets/images/screenshots/dark.jpg" alt="light theme">
            </a>
        </div>
    </div>
</nav>