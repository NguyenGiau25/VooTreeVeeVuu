<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/views/css/index.css">
<script src="https://kit.fontawesome.com/e2b57de48e.js"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e2b57de48e.js"
	crossorigin="anonymous"></script>
<link href="/views/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/views/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<style>
.sidebar {
	background-color: #0099FF;
}

* {
	font-size: large;
}

label {
	color: black;
}
</style>
<script src="https://kit.fontawesome.com/e2b57de48e.js"
	crossorigin="anonymous"></script>
<title>User Management Form</title>
</head>
<body id="page-top">
	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="navbar-nav sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="/admin/index">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">VooTreeVeeVuu</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/admin/index"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Quản trị</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i><span>CRUD</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Các loại phần:</h6>
						<a class="collapse-item" href="/admin/hotel">Khách sạn</a> <a
							class="collapse-item" href="/admin/room">Phòng</a> <a
							class="collapse-item" href="/admin/roomtype">Loại phòng</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link" href="/admin/user">
					<i class="fas fa-fw fa-solid fa-user"></i><span>Người dùng</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Thống kê</div>

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i><span>Biểu đồ</span>
			</a>
				<div id="collapseOne" class="collapse"
					aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Chọn loại:</h6>
						<a class="collapse-item ps-1" href="/admin/thongke-theoKS">1.
							Thống kê doanh thu<br>theo khách sạn
						</a> <a class="collapse-item ps-1" href="/admin/thongke-topKS">2.
							Top khách sạn<br>được đặt nhiều
						</a>
					</div>
				</div></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link"
				href="/admin/booking-history"> <i class="fas fa-fw fa-table"></i>
					<span>Lịch sử booking</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<li class="nav-item"><a class="nav-link" href="/home"> <i
					class="fas fa-fw fa-home"></i> <span>Về trang chủ</span>
			</a></li>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a class="nav-link"
							href="/profile/edit-profile"><span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Welcome,<span
									class="text-primary"> ${useracc.lastName}
										${useracc.firstName}</span></span> </a></li>
						<div class="topbar-divider d-none d-sm-block"></div>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link text-danger" href="/logout">Logout</a></li>
					</ul>
				</nav>
				<!-- End of Topbar -->

				<!-- Content -->
				<div class="ps-3 pe-3">
					<div class="w-100" style="height: auto;">
						<div class="col-6">
							<h4 class="fw-bold">THÔNG TIN LOẠI PHÒNG</h4>
						</div>
						<div class="row p-4 m-4 mt-4"
							style="background-color: white; border-radius: 15px;">
							<form:form class="row g-3 mt-3" action="/admin/user-form/save"
								modelAttribute="user" enctype="multipart/form-data">
								<div class="col-md-12">
									<label for="email" class="form-label fw-bold">Email:</label>
									<form:input class="form-control" path="email" readonly="true" />
								</div>
								<div class="col-md-12">
									<label for="firstName" class="form-label fw-bold">First
										Name: </label>
									<form:input class="form-control" path="firstName"
										readonly="true" />
								</div>
								<div class="col-12">
									<label for="lastName" class="form-label fw-bold">Last
										Name: </label>
									<form:input class="form-control" path="lastName"
										readonly="true" />
								</div>
								<div class="col-md-6">
									<label for="phoneNum" class="form-label fw-bold">Phone
										Number: </label>
									<form:input class="form-control" path="phoneNum"
										readonly="true" />
								</div>
								<div class="col-md-6">
									<label for="gender" class="form-label fw-bold">Gender </label><br>
									<form:radiobuttons path="gender" items="${gender}"
										delimiter=" " class="form-check-inline ms-3" />
								</div>
								<div class="col-md-6">
									<label for="birthdate" class="form-label fw-bold">Birth
										date: </label>
									<form:input class="form-control" path="birthdate"
										readonly="true" />
								</div>
								<div class="col-md-6">
									<label for="status" class="form-label fw-bold">Status:
									</label><br>
									<form:radiobuttons path="status" items="${status}"
										delimiter=" " class="form-check-inline ms-3" />
								</div>
								<br>
								<div class="col-12">
									<button type="submit" class="btn btn-primary float-end">Save</button>
									<a type="reset" href="/admin/user-form"
										class="btn btn-secondary float-end me-2">Reset</a>
								</div>
								<div style="font-weight: bold; color: red; text-align: center;">${message}</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="/views/vendor/jquery/jquery.min.js"></script>
	<script src="/views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/views/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/views/css/sb-admin-2.min.js"></script>
</body>
</html>