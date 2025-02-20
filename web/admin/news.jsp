<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://unpkg.com/@webpixels/css@1.1.5/dist/index.css" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css">
        <title>Admin Page</title>
    </head>
    <body>
        <!-- Dashboard -->
        <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary"  >
            <!-- Vertical Navbar -->
            <nav class="navbar show navbar-vertical h-lg-screen navbar-expand-lg px-0 py-3 navbar-light bg-white border-bottom border-bottom-lg-0 border-end-lg" id="navbarVertical">
                <style>
                    .navbar-vertical.navbar-light{
                        background-color: #ff9900c2 !important;
                    }
                </style>

                <div class="container-fluid">
                    <!-- Toggler -->
                    <button class="navbar-toggler ms-n2" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarCollapse" aria-controls="sidebarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!-- Brand -->
                    <a class="navbar-brand py-lg-2 mb-lg-5 px-lg-6 me-0" href="#">
                        <img src="https://dnuni.fpt.edu.vn/wp-content/uploads/2020/02/logo-1.png" alt="..." style="height: 50px; width: 152px"/>
                        <hr style="background-color: while"/>    
                    </a>

                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidebarCollapse">
                        <style>
                            .bi-house::before, .bi-newspaper::before, .bi-journal-bookmark::before, .bi-calendar-event::before, .bi-people::before,
                            .bi-person-square::before, .bi-box-arrow-left::before, .bi-briefcase-fill::before, .bi-person-fill::before
                            {
                                color: black;
                            }
                        </style>

                        <!-- Navigation -->
                        <ul class="navbar-nav">
                            <li class="nav-item">

                                <a class="nav-link " href = "/SE_ITS/MainController?action=goDashBoard">
                                    <i class="bi bi-house"></i> Trang chủ 

                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="<c:url value = "/admin/news.jsp"/>">
                                    <i class="bi bi-newspaper"></i> Tin tức
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/SE_ITS/MainController?action=goEventPage">
                                    <i class="bi bi-briefcase-fill"></i> Tuyển dụng
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/SE_ITS/MainController?action=goEventPage">
                                    <i class="bi bi-calendar-event"></i> Sự kiện
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value = "/admin/major.jsp"/>">
                                    <i class="bi bi-journal-bookmark"></i> Ngành học
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value = "/admin/user.jsp"/>">
                                    <i class="bi bi-person-fill"></i> Người dùng
                                </a>
                            </li>
                        </ul>
                        <!-- Divider -->
                        <hr class="navbar-divider my-5 opacity-20">

                        <!-- Push content down -->
                        <div class="mt-auto"></div>
                        <!-- User (md) -->
                        <ul class="navbar-nav">
                            <!--                            <li class="nav-item">
                                                            <a class="nav-link" href="#">
                                                                <i class="bi bi-person-square"></i> Tài khoản
                                                            </a>
                                                        </li>-->
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="bi bi-box-arrow-left"></i> Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Main content -->
            <div class="h-screen flex-grow-1 overflow-y-lg-auto">
                <!-- Header -->
                <header class="bg-surface-primary border-bottom pt-6">
                    <div class="container-fluid">
                        <div class="mb-npx">
                            <div class="row align-items-center">
                                <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                                    <!-- Title -->
                                    <h1 class="h2 mb-0 ls-tight">Tin Tức</h1>
                                </div>
                                <!-- Actions -->
                                <div class="col-sm-6 col-12 text-sm-end">
                                    <div class="mx-n1">
                                        <a href="createNews.jsp" class="btn d-inline-flex btn-sm btn-primary mx-1">
                                            <span class=" pe-2">
                                                <i class="bi bi-plus"></i>
                                            </span>
                                            <span>Thêm</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!-- Nav -->
                            <br/>
                        </div>
                    </div>
                </header>
                <!-- Main -->
                <main class="py-6 bg-surface-secondary">
                    <div class="container-fluid">

                        <div class="card shadow border-0 mb-7">
                            <div class="card-header">
                                <h5 class="mb-0">Danh sách các bài viết về Tin Tức</h5>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover table-nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th scope="col">Tiêu đề</th>
                                            <th scope="col">Tác giả</th>
                                            <th scope="col">Ngày đăng</th>
                                            <th scope="col">Trạng thái</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img alt="..." src="https://daihoc.fpt.edu.vn/media/2022/01/271540430_4501077100015247_6303337981172623121_n-e1642045911698-373x206.jpeg" class="avatar avatar-sm rounded-circle me-2">
                                                <a class="text-heading font-semibold" href="#">
                                                    SV FPTU TP. HCM nhìn lại hành trình “Brothers & Sisters”
                                                </a>
                                            </td>
                                            <td>
                                                Trần Duy Hưng
                                            </td>
                                            <td>
                                                <!--<img alt="..." src="https://preview.webpixels.io/web/img/other/logos/logo-1.png" class="avatar avatar-xs rounded-circle me-2">-->
                                                <a class="text-heading font-semibold" href="#">
                                                    14/01/2022
                                                </a>
                                            </td>
                                            <!--                                            
                                            -->                                            <td>
                                                <span class="badge badge-lg badge-dot">
                                                    <i class="bg-success"></i>Đã đăng
                                                </span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#" class="btn btn-sm btn-neutral"> <i class="bi bi-pencil"></i></a>
                                                <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                                    <i class="bi bi-trash"></i>
                                                </button>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img alt="..." src="https://scontent.fsgn5-12.fna.fbcdn.net/v/t39.30808-6/271719124_4900691723302883_6013686438905834773_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=cTqz2ihLer0AX_OdDhb&tn=dukyNjARcINWNWzp&_nc_ht=scontent.fsgn5-12.fna&oh=00_AT8hQ4RsD4ovlPcCkJkFbraWNVgd2Oknfmsn5YSxuuomUg&oe=61E8163E" 
                                                     class="avatar avatar-sm rounded-circle me-2">
                                                <a class="text-heading font-semibold" href="#">
                                                    Đại học FPT là trường đại học đầu tiên áp dụng MC ảo
                                                </a>
                                            </td>
                                            <td>
                                                Nguyễn Thành Long
                                            </td>
                                            <td>
                                                <a class="text-heading font-semibold" href="#">
                                                    14/01/2022
                                                </a>
                                            </td>

                                            <td>
                                                <span class="badge badge-lg badge-dot">
                                                    <i class="bg-danger"></i>Đã xóa
                                                </span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#" class="btn btn-sm btn-neutral"> <i class="bi bi-pencil"></i></a>
                                                <button type="button" class="btn btn-sm btn-square btn-neutral text-danger-hover">
                                                    <i class="bi bi-trash"></i>
                                                </button>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="card-footer border-0 py-5">
                                <span class="text-muted text-sm">Showing 10 items out of 250 results found</span>
                            </div>
                        </div>
                    </div>
                </main>
                <footer>
                    <div class="card text-center">
                        <div class="card-footer text-muted">
                            © 2022 Bản quyền thuộc về Nhóm 4.
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>
