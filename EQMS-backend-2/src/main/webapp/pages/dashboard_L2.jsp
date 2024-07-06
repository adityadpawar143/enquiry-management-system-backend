<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - L2 Dashboard</title>
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
			<a href="dashboard_L2" class="logo d-flex align-items-center"> <img
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
						<span class="d-none d-md-block dropdown-toggle ps-2">Member
							L2</span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li><a class="dropdown-item d-flex align-items-center"
							href="logout_L2"> <i class="bi bi-box-arrow-right"></i> <span>Log
									Out</span>
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

			<li class="nav-item"><a class="nav-link" href="dashboard_L2">
					<i class="bi bi-grid"></i> <span>Dashboard (L2)</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-bar-chart"></i><span>Enquiry</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="add_enquiry_L2"> <i class="bi bi-circle"></i><span>Add
								Enquiry</span>
					</a></li>
					<li><a href=""> <i class="bi bi-circle"></i><span>Import
								Excel Data</span>
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
					<li><a href="enquiry_report_L2"> <i class="bi bi-circle"></i><span>Added
								Data Report</span>
					</a></li>
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
			<h1>Enquiry Dashboard (L2)</h1>

		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">


				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Sales Card -->
						<div class=" col-md-3">
							<div class="card info-card sales-card">



								<div class="card-body">
									<h5 class="card-title">Total Enquiries</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>${totalenquiries}</h6>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<div class="col-md-3">
							<div class="card info-card sales-card">



								<div class="card-body">
									<h5 class="card-title">New</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>0</h6>

										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="col-md-3">
							<div class="card info-card sales-card">



								<div class="card-body">
									<h5 class="card-title">In Process</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>0</h6>

										</div>
									</div>
								</div>

							</div>
						</div>

						<div class=" col-md-3">
							<div class="card info-card sales-card">



								<div class="card-body">
									<h5 class="card-title">Closed</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>0</h6>

										</div>
									</div>
								</div>

							</div>
						</div>


					</div>
				</div>
				<!-- End Left side columns -->


				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">

							<table class="table datatable">
								<thead>
									<tr>
										<th>#</th>
										<th data-type="date" data-format="DD/MM/YYYY">Date</th>
										<th>Customer Name</th>
										<th>Mobile</th>
										<th>Product Details</th>
										<th scope="col">Assigned Date
											<hr class="py-0 my-0" style="width: 100px;">Status
										</th>
										<th class="text-center">Action</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="e" items="${enquiry}">
									<tr>
										<td><b>${e.enquiryId}</b></td>
										<td>${e.enquiryDate}</td>
										<td>${e.enquiryCustomerName}</td>
										<td>${e.enquiryCustomerMobile}</td>
										<td>${e.enquiryProductName}</td>
										<td>${e.enquiryAssignDate}
											<hr class="py-0 my-0">${e.enquiryStatus}
										</td>

										<td class="text-center"><a href="followup_action_L2?id=${e.enquiryId}">Follow-up</a>
											<hr class="py-0 my-0"> <a href="followup_view_L2?id=${e.enquiryId}">View</a></td>

									</tr>
								</c:forEach>

								</tbody>
							</table>
							<!-- End Table with stripped rows -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

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