<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - Follow-up View</title>
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
			<a href="dashboard_admin" class="logo d-flex align-items-center"> <img
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
						<span class="d-none d-md-block dropdown-toggle ps-2">Admin</span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li><a class="dropdown-item d-flex align-items-center"
							href="logout_admin"> <i class="bi bi-box-arrow-right"></i> <span>Log
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

			<li class="nav-item"><a class="nav-link collapsed" href="dashboard_admin">
					<i class="bi bi-grid"></i> <span>Dashboard (Admin)</span>
			</a></li>
			<!-- End Dashboard Nav -->
			
			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav3" data-bs-toggle="collapse" href="#">
					<i class="bi bi-card-list"></i><span>Masters</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav3" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="search_user_admin"> <i class="bi bi-circle"></i><span>Manage User</span>
					</a></li>
					<li><a href="search_product_admin"> <i
							class="bi bi-circle"></i><span>Product Master</span>
					</a></li>
				</ul></li>

			<li class="nav-item"><a class="nav-link "
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>Enquiry</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse show"
					data-bs-parent="#sidebar-nav">
					<li><a href="add_enquiry_admin" > <i
							class="bi bi-circle"></i><span>Add Enquiry</span>
					</a></li>
					<li><a> <i class="bi bi-circle"></i><span>Import
								Excel Data</span>
					</a></li>
					<li><a href="follow_up_admin" class="active"> <i class="bi bi-circle"></i><span>Enquiry
								Follow-up</span>
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
					<li><a href="enquiry_report_admin"> <i class="bi bi-circle"></i><span>Added
								Data Report</span>
					</a></li>
					<li><a href="enquiry_report_memberwise_admin"> <i
							class="bi bi-circle"></i><span>Added Data Report
								Memberwise</span>
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
      <h1>View Enquiry Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="follow_up_admin">Follow-Up</a></li>
          <li class="breadcrumb-item active">View Enquiry Details</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->



    <section class="section dashboard">


			<div class="row">

				<div class="col-lg-12">
					<div class="">
						<div class="" id="profile-overview">

							<h5 class="card-title">Enquiry Details</h5>

							<div class="row">
								<div class="col-2">
									<div class="label">Enquiry Date</div>
								</div>
								<div class="col-4">
									<b>${getEnquiry.enquiryDate}</b>
								</div>
								<div class="col-2 label">Enquiry Source</div>
								<div class="col-4">
									<b>${getEnquiry.enquirySource}</b>
								</div>
								<div class="col-2">
									<div class="label">Customer Name</div>
								</div>
								<div class="col-4">
									<b>${getEnquiry.enquiryCustomerName}</b>
								</div>
								<div class="col-2">Enquiry Type</div>
								<div class="col-4">${getEnquiry.enquiryType}</div>

								<div class="col-2 label">Mobile</div>
								<div class="col-4">
									<b>${getEnquiry.enquiryCustomerMobile}</b>
								</div>
								<div class="col-2 label">Address</div>
								<div class="col-4">
									<b>${getEnquiry.enquiryCustomerAddress}</b>
								</div>
							</div>



						</div>
					</div>
					<!-- End Left side columns -->



				</div>

				<div class="row">

					<div class="col-lg-12">
						<h5 class="card-title">Enquiry Follow-up Details</h5>
						<div class="card mt-3">
							<div class="card-body">
								<!-- <h5 class="card-title">Table with hoverable rows</h5> -->

								<!-- Table with hoverable rows -->
								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">Follow-up Date</th>
											<th scope="col">Follow-up By</th>
											<th scope="col">Remark</th>
											<th scope="col">Next Follow-up</th>
											<th scope="col">Status</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="e" items="${enquiry}">
											<tr>
												<th scope="row">${e.enquiryId}</th>
												<td>${e.enquiryFollowUpDate}</td>
												<td>${e.enquiryFollowUpBy}</td>
												<td>${e.enquiryFollowUpRemark}</td>
												<td>${e.enquiryNextFollowUp}</td>
												<td>${e.enquiryStatus}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- End Table with hoverable rows -->
								<label class="form-label text-primary">*Follow-up can
									not be edited or deleted.(Admin Restriction)</label>
								<!-- <label class="form-label text-primary">*Closed and canceled equiries can not be edited.</label> -->
							</div>
						</div>

					</div>

				</div>
			</div>
		</section>

  </main><!-- End #main -->

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