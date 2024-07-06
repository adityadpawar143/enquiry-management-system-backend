<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - Add Enquiry</title>
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
			<a href="index.html" class="logo d-flex align-items-center"> <img
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
							L3</span>
				</a>
				<!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li><a class="dropdown-item d-flex align-items-center"
							href="logout_L3"> <i class="bi bi-box-arrow-right"></i> <span>Log
									Out</span>
						</a></li>

					</ul>
					<!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link collapsed"
				href="dashboard_L3"> <i class="bi bi-grid"></i> <span>Dashboard
						(L3)</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link "
				data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>Enquiry</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse show"
					data-bs-parent="#sidebar-nav">
					<li><a href="add_enquiry_L3" class="active"> <i
							class="bi bi-circle"></i><span>Add Enquiry</span>
					</a></li>
					<li><a> <i class="bi bi-circle"></i><span>Import
								Excel Data</span>
					</a></li>
				</ul></li>
			<!-- End Forms Nav -->



		</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Add Enquiry</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="dashboard_L3">Home</a></li>
					<li class="breadcrumb-item">Add Enquiry</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h6></h6>

							<!-- Vertical Form -->
							<form action="addEnquiryL3" method="post" class="row g-3">
								<div class="col-6">
									<label for="inputNanme4" class="form-label">Customer
										Name</label> <input type="text" name="enquiryCustomerName"
										class="form-control" id="inputNanme4">
								</div>
								<div class="col-6">
									<label for="inputEmail4" class="form-label">Enquiry
										Date</label> <input type="date" name="enquiryDate"
										class="form-control" id="currentDate">
								</div>
								<div class="col-6">
									<label for="inputPassword4" class="form-label">Mobile</label> <input
										type="text" name="enquiryCustomerMobile" class="form-control"
										id="inputPassword4">
								</div>
								<div class="col-6">
									<label for="inputPassword4" class="form-label">Enquiry
										Source</label> <select id="inputState" name="enquirySource"
										class="form-select">
										<option selected>Choose...</option>
										<option value="None">None</option>
									</select>
								</div>
								<div class="col-6">
									<label for="inputPassword4" class="form-label">Address</label>
									<input type="text" name="enquiryCustomerAddress"
										class="form-control" id="inputPassword4">
								</div>
								<div class="col-6">
									<label for="inputPassword4" class="form-label">Enquiry
										Type</label> <select id="inputState" name="enquiryType"
										class="form-select">
										<option selected>Choose...</option>
										<option value="None">None</option>
									</select>
								</div>
								<div class="col-6">
									<label for="inputNanme4" class="form-label">Product
										Name + Category 1 + Category 2</label>
										 
										<select id="inputState"
										name="enquiryProductName" class="form-select">
										<option selected disabled>Choose...</option>
										<c:forEach var="e" items="${P1}">
										<option value="${e.productName},${e.productCategory1},${e.productCategory2}">${e.productName} + ${e.productCategory1} + ${e.productCategory2}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-6">
									<label for="inputPassword4" class="form-label">Remark</label> <input
										type="text" name="enquiryRemark" class="form-control"
										id="inputPassword4">
								</div>
								<input type="hidden" name="enquiryAssignDate" value="DD/MM/YYYY">
								<input type="hidden" name="enquiryStatus" value="New">
								<input type="hidden" name="enquiryAssignTo" value="NA">
								<input type="hidden" name="enquiryCreatedBy" value="L3-Member">

								<div class="text-center">
									<input type="submit" class="btn btn-primary" value="Save">
									<a type="reset" class="btn btn-secondary" href="">Cancel</a>
								</div>
							</form>
							<!-- Vertical Form -->

						</div>
					</div>

					<div class="card">
						<div class="card-body">
							<br>
							<p class="text-primary">*Service like insurance has an expiry
								date, so data can be IsExpired, ValidTillDate</p>
							<p class="text-primary">*Required AddedBy column. Data should
								be maintained as per login user.</p>

							<!-- Default Table -->
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Product Details</th>
										<th scope="col">Remark</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="e" items="${enquiry}">
									<tr>
										<th scope="row">${e.enquiryId}</th>
										<td>${e.enquiryProductName}</td>
										<td>${e.enquiryRemark}</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- End Default Table Example -->

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
	<script>
        // Get today's date
        const today = new Date();

        // Format the date as YYYY-MM-DD
        const formattedDate = today.toISOString().split('T')[0];

        // Set the value of the date input to today's date
        document.getElementById('currentDate').value = formattedDate;
    </script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>