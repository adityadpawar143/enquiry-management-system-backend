<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - Enquiry Follow-up Action</title>
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
			<a href="dashboard_L1" class="logo d-flex align-items-center"> <img
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
							L1</span>
				</a>
				<!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li><a class="dropdown-item d-flex align-items-center"
							href="logout_L1"> <i class="bi bi-box-arrow-right"></i> <span>Log
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

			<li class="nav-item"><a class="nav-link collapsed" href="dashboard_L1">
					<i class="bi bi-grid"></i> <span>Dashboard (L1)</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapse show"
				data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-bar-chart"></i><span>Enquiry</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse show "
					data-bs-parent="#sidebar-nav">
					<li><a href="add_enquiry_L1" > <i class="bi bi-circle"></i><span>Add
								Enquiry</span>
					</a></li>
					<li><a href=""> <i class="bi bi-circle"></i><span>Import
								Excel Data</span>
					</a></li>
					<li><a href="follow_up_L1" class="active"> <i class="bi bi-circle"></i><span>Enquiry
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
					<li><a href="enquiry_report_L1"> <i class="bi bi-circle"></i><span>Added
								Data Report</span>
					</a></li>
					<li><a href="enquiry_report_memberwise_L1"> <i class="bi bi-circle"></i><span>Added
								Data Report Memberwise</span></a></li>
					<li><a href=""> <i class="bi bi-circle"></i><span>Dummy Report 1</span>
					</a></li>
					<li><a href=""> <i class="bi bi-circle"></i><span>Dummy Report 2</span>
					</a></li>
				</ul></li>


		</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

    <div class="pagetitle">
      <h1>Enquiry Follow-Up</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="follow_up_L1.php">Follow Up</a></li>
          <li class="breadcrumb-item active">Follow-Up Action</li>
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
				<form action="addEnquiryFollowUpL1" method="post">
				<div class="row">
					<input type="hidden" value="${getEnquiry.enquiryId}" name="enquiryId">
					<input type="hidden" value="${getEnquiry.enquiryDate}" name="enquiryDate">
					<input type="hidden" value="${getEnquiry.enquirySource}" name="enquirySource">
					<input type="hidden" value="${getEnquiry.enquiryType}" name="enquiryType">
					<input type="hidden" value="${getEnquiry.enquiryCustomerName}" name="enquiryCustomerName">
					<input type="hidden" value="${getEnquiry.enquiryCustomerMobile}" name="enquiryCustomerMobile">
					<input type="hidden" value="${getEnquiry.enquiryCustomerAddress}" name="enquiryCustomerAddress">
					<input type="hidden" value="${getEnquiry.enquiryProductName}" name="enquiryProductName">
					<input type="hidden" value="${getEnquiry.enquiryRemark}" name="enquiryRemark">
					<input type="hidden" value="${getEnquiry.enquiryAssignTo}" name="enquiryAssignTo">
					<input type="hidden" value="${getEnquiry.enquiryAssignRemark}" name="enquiryAssignRemark">
					<input type="hidden" value="${getEnquiry.enquiryCreatedBy}" name="enquiryCreatedBy">
					<input type="hidden" value="${getEnquiry.enquiryAssignDate}" name="enquiryAssignDate">
					<input type="hidden" value="L1-Member" name="enquiryFollowUpBy">
					<div class="col-md-4">
						<label for="inputCity" class="form-label">Follow-up Date</label> <input
							type="date" value="${getEnquiry.enquiryFollowUpDate}" name="enquiryFollowUpDate" class="form-control"
							id="currentDate">
					</div>
					<div class="col-8">
						<label for="inputAddress5" class="form-label">Remark</label> <input
							type="text" name="enquiryFollowUpRemark" value="${getEnquiry.enquiryFollowUpRemark}" class="form-control"
							id="inputAddres5s">
					</div>
					<div class="col-md-4">
						<label for="inputState" class="form-label">Follow-up Type</label>
						<select id="inputState" class="form-select"
							name="enquiryFollowUpType">
							<option selected value="${getEnquiry.enquiryFollowUpType}">${getEnquiry.enquiryFollowUpType}</option>
							<option value="Call">Call</option>
							<option value="WhatsApp">WhatsApp</option>
							<option value="Email">Email</option>
							<option value="Other">Other</option>
						</select>
					</div>


					<div class="col-md-4">
						<label for="inputCity" class="form-label">Next Follow-up
							Date</label> <input type="date" name="enquiryNextFollowUp" value="${getEnquiry.enquiryNextFollowUp}"
							class="form-control" id="inputCity">
					</div>
					<div class="col-md-4">
						<label for="inputState" class="form-label">Enquiry Status</label>
						<select id="inputState" class="form-select" name="enquiryStatus">
							<option selected value="${getEnquiry.enquiryStatus}">${getEnquiry.enquiryStatus}</option>
							<option value="Open">Open</option>
							<option value="In Process">In Process</option>
							<option value="Closed">Closed</option>
						</select>
					</div>
					<div class="col-md-4">
						<input type="submit" class="btn btn-primary mt-4" value="Add Follow-up">
					</div>
				 </div>
				 </form>
				<div class="col-lg-12">
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