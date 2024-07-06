<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - Enquiry Assign</title>
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
			<a href="dashboard_admin" class="logo d-flex align-items-center">
				<img src="assets/img/logo.png" alt=""> <span
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

			<li class="nav-item"><a class="nav-link" href="dashboard_admin">
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
					<li><a href="search_user_admin"> <i class="bi bi-circle"></i><span>Manage
								User</span>
					</a></li>
					<li><a href="search_product_admin"> <i
							class="bi bi-circle"></i><span>Product Master</span>
					</a></li>
				</ul></li>

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-bar-chart"></i><span>Enquiry</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="add_enquiry_admin"> <i class="bi bi-circle"></i><span>Add
								Enquiry</span>
					</a></li>
					<li><a> <i class="bi bi-circle"></i><span>Import
								Excel Data</span>
					</a></li>
					<li><a href="follow_up_admin"> <i class="bi bi-circle"></i><span>Enquiry
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
					<li><a href="enquiry_report_admin"> <i
							class="bi bi-circle"></i><span>Added Data Report</span>
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
			<h1>Assign Enquiry</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="dashboard_admin">Home</a></li>
					<li class="breadcrumb-item active">Assign Enquiry</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->



		<section class="section dashboard">


			<div class="row">

				<!-- Left side columns #shrikant changed 8 to 12 -->
				<div class="col-lg-12">
					<!-- Start: Assign Block -->
					<form action="addEnquiryAssignAdmin" method="post">
						<input type="hidden" value="${getEnquiry.enquiryId}"
							name="enquiryId"> <input type="hidden"
							value="${getEnquiry.enquiryDate}" name="enquiryDate"> <input
							type="hidden" value="${getEnquiry.enquirySource}"
							name="enquirySource"> <input type="hidden"
							value="${getEnquiry.enquiryType}" name="enquiryType"> <input
							type="hidden" value="${getEnquiry.enquiryCustomerName}"
							name="enquiryCustomerName"> <input type="hidden"
							value="${getEnquiry.enquiryCustomerMobile}"
							name="enquiryCustomerMobile"> <input type="hidden"
							value="${getEnquiry.enquiryCustomerAddress}"
							name="enquiryCustomerAddress"> <input type="hidden"
							value="${getEnquiry.enquiryProductName}"
							name="enquiryProductName"> <input type="hidden"
							value="${getEnquiry.enquiryRemark}" name="enquiryRemark">
						<input type="hidden" value="${getEnquiry.enquiryFollowUpDate}"
							name="enquiryFollowUpDate"> <input type="hidden"
							value="${getEnquiry.enquiryFollowUpRemark}"
							name="enquiryFollowUpRemark"> <input type="hidden"
							value="${getEnquiry.enquiryFollowUpType}"
							name="enquiryFollowUpType"> <input type="hidden"
							value="${getEnquiry.enquiryNextFollowUp}"
							name="enquiryNextFollowUp"> <input type="hidden"
							value="${getEnquiry.enquiryStatus}" name="enquiryStatus">
						<input type="hidden" value="${getEnquiry.enquiryCreatedBy}"
							name="enquiryCreatedBy"> <input type="hidden"
							value="Admin" name="enquiryFollowUpBy">
						<div class="row border p-3">
							<div>
								<label class="form-label text-primary">*If AssignedTo=NA
									>> Action: Assign Else Follow-up Count>0 Then Ation:Transfer</label>
							</div>
							<div class="col-md-2">
								<label for="inputCity" class="form-label">Assign Date</label> <input
									type="date" name="enquiryAssignDate"
									value="${getEnquiry.enquiryAssignDate}" class="form-control"
									id="currentDate">
							</div>

							<div class="col-md-4">
								<label for="inputState" class="form-label">Assign To</label> <select
									id="inputState" class="form-select" name="enquiryAssignTo">
									<option selected value="${getEnquiry.enquiryAssignTo}">${getEnquiry.enquiryAssignTo}</option>
									<c:forEach var="e" items="${userList}">
										<option value="${e.userType}">${e.userType}</option>
									</c:forEach>
								</select>
							</div>


							<div class="col-md-4">
								<label for="inputCity" class="form-label">Remark</label> <input
									type="text" name="enquiryAssignRemark" value="${getEnquiry.enquiryAssignRemark}" class="form-control"
									id="inputCity">
							</div>

							<div class="col-md-2">

								<input type="submit" class="btn btn-primary mt-4" value="Assign">

							</div>
						</div>
					</form>
					<!-- End: Assign Block -->

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

								<!-- <div class="col-2 label">Email</div>
                    <div class="col-4">Web Designer</div>
                    <div class="col-2 label">State</div>
                    <div class="col-4">MH</div> -->
								<div class="col-2 label">Mobile</div>
								<div class="col-4">
									<b>${getEnquiry.enquiryCustomerMobile}</b>
								</div>
								<div class="col-2 label">Address</div>
								<div class="col-4">
									<b>${getEnquiry.enquiryCustomerAddress}</b>
								</div>
							</div>

							<div class="col-lg-12">
								<div class="card mt-3">
									<!-- 
									<div class="card-body">

										
										<table class="table table-hover">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Product Description</th>
													<th scope="col">Remark</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="e" items="${P1}">
													<tr>
														<th scope="row">${e.productId}</th>
														<td>${e.productName}+ ${e.productCategory1} +
															${e.productCategory2}</td>
														<td>${e.productDescription}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>
									 -->
								</div>

							</div>

						</div>
					</div>
					<!-- End Left side columns -->



				</div>

				<div class="row">

					<div class="col-lg-12">
						<div class="card mt-0">
							<div class="card-body">
								<h5 class="card-title">Follow-up Details</h5>

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
							</div>
						</div>


					</div>


				</div>
			</div>
			<!-- End Left side columns -->

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