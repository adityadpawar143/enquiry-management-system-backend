<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - Content list</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="dashboard_super_admin"
				class="logo d-flex align-items-center"> <img
				src="assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">EQMS</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<!-- End Logo -->



		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">






				<li class="nav-item dropdown pe-3"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <img
						src="assets/img/user.jpg" alt="Profile" class="rounded-circle">
						<span class="d-none d-md-block dropdown-toggle ps-2">Super
							Admin</span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li><a class="dropdown-item d-flex align-items-center"
							href="logout_super_admin"> <i class="bi bi-box-arrow-right"></i>
								<span>Log Out</span>
						</a></li>

					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link"
				href="dashboard_super_admin"> <i class="bi bi-grid"></i> <span>Dashboard
						(SA)</span>
			</a></li>
			<!-- End Dashboard Nav -->
			<li class="nav-item"><a class="nav-link collapse show"
				data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-bar-chart"></i><span>Admin</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse show"
					data-bs-parent="#sidebar-nav">
					<li><a href="setting"> <i class="bi bi-circle"></i><span>Setting
						</span>
					</a></li>
					<li><a href="section_master"> <i class="bi bi-circle"></i><span>Section
								Master</span>
					</a></li>
					<li><a href="content_master" class="active"> <i
							class="bi bi-circle"></i><span>Content Master </span>
					</a></li>
				</ul></li>

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav3" data-bs-toggle="collapse" href="#">
					<i class="bi bi-card-list"></i><span>Masters</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav3" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="search_user_super_admin"> <i
							class="bi bi-circle"></i><span>Manage User</span>
					</a></li>
					<li><a href="search_product_super_admin"> <i
							class="bi bi-circle"></i><span>Product Master</span>
					</a></li>
				</ul></li>


			<!-- End Charts Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav2" data-bs-toggle="collapse" href="#">
					<i class="bi bi-card-list"></i><span>Reports</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav2" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">

					<li><a> <i class="bi bi-circle"></i><span>Dummy
								Report 1</span>
					</a></li>
					<li><a> <i class="bi bi-circle"></i><span>Dummy
								Report 2</span>
					</a></li>
				</ul></li>


		</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Content Master</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="dashboard_super_admin">Master</a></li>
					<li class="breadcrumb-item"><a href="content_master">Content
							List</a></li>
					<li class="breadcrumb-item active">Edit</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->



		<section class="section dashboard">


			<div class="row">

				<!-- Left side columns #shrikant changed 8 to 12 -->
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<!-- <h5 class="card-title">Multi Columns Form</h5> -->

							<!-- Multi Columns Form -->
							<form action="addContent" method="post" class="row g-3 mt-2">
							<input type="hidden" name="contentId" value="${content.contentId}" class="form-control" id="inputName5">
								<div class="col-md-12">
									<label for="inputName5" class="form-label">Section Name</label>
									<select id="inputState" class="form-select" name="contentSectionName">
										<option selected value="${content.contentSectionName}">${content.contentSectionName}</option>
										<c:forEach var="e" items="${sectionlist}">
											<option>${e.sectionName}</option>
										</c:forEach>
										<!-- <option>Other</option> -->
									</select>
								</div>
								<div class="col-md-12">
									<label for="inputName5" class="form-label">Content Name</label>
									<input type="text" name="contentName" value="${content.contentName}" class="form-control" id="inputName5">
								</div>
								<div class="col-md-12">
									<label for="inputEmail5" class="form-label">Description</label>
									<input type="text" name="contentDescription" value="${content.contentDescription}" class="form-control" id="inputEmail5">
								</div>

								<div class="text-center">
									<input type="submit" class="btn btn-primary" value="Save">
									<a type="reset" class="btn btn-secondary" href="content_master">Cancel</a>
								</div>
								<div class="col-md-12">
									<label class="form-label text-primary">*Supplier
										Expence: Vehicle Purchase(default head), Convenience Fee etc.</label><br>
									<label class="form-label text-primary">*General
										Expence: Stationary, Pantry, Cleaning Material, Salary, Office
										Maintainance</label><br> <label class="form-label text-primary">*Vehicle
										Expence: RTO Document, Electrical, Mechanical, Tyre Work, Body
										Cabin Work, Parking, Transportation, Insurance, Other </label> <label
										class="form-label text-primary">*Engine Type:
										BS-III,BS-IV,BS-VI etc.</label><br> <label
										class="form-label text-primary">*Vehicle Type:
										Commertial, Construction Equipment, Farmer Equipment etc.</label> <br>
									<label class="form-label text-primary">*User can add
										new expences but can not delete system defined expences.</label><br>
								</div>
							</form>
							<!-- End Multi Columns Form -->

						</div>
					</div>
				</div>
				<!-- End Left side columns -->



			</div>
		</section>

	</main>

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>EQMS</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			Designed by <a href="https://bootstrapmade.com/">Aditya</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.umd.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>