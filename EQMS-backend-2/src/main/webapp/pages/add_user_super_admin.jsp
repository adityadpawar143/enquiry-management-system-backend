<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>EQMS - User Add</title>
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
			<li class="nav-item"><a class="nav-link collapsed"
				href="dashboard_super_admin"> <i class="bi bi-grid"></i> <span>Dashboard
						(SA)</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-bar-chart"></i><span>Admin</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="setting"> <i class="bi bi-circle"></i><span>Setting
						</span>
					</a></li>
					<li><a href="section_master"> <i class="bi bi-circle"></i><span>Section
								Master</span>
					</a></li>
					<li><a href="content_master"> <i class="bi bi-circle"></i><span>Content
								Master </span>
					</a></li>
				</ul></li>

			<li class="nav-item"><a class="nav-link collapse show"
				data-bs-target="#charts-nav3" data-bs-toggle="collapse" href="#">
					<i class="bi bi-card-list"></i><span>Masters</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav3" class="nav-content collapse show "
					data-bs-parent="#sidebar-nav">
					<li><a href="search_user_super_admin" class="active"> <i
							class="bi bi-circle"></i><span>Manage User</span>
					</a></li>
					<li><a href="search_product_super_admin"> <i
							class="bi bi-circle"></i><span>Product Master</span>
					</a></li>
				</ul></li>



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
			<h1>User Accounts</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="dashboard_super_admin">Master</a></li>
					<li class="breadcrumb-item"><a href="search_user_super_admin">User
							List</a></li>
					<li class="breadcrumb-item active">Add</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->



		<section class="section dashboard">


			<div class="row">

				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<!-- <h5 class="card-title">Multi Columns Form</h5> -->

							<!-- Multi Columns Form -->
							<form action="addUserSuperAdmin" method="post" class="row g-3 mt-2">

								<div class="text-center">
									<label class="form-label text-primary"><b>Super-Admin</b>
										Create Company. Add Company-Admin.</label> <br>
									<label class="form-label text-primary"><b>Company-Admin</b>
										Manage Company Details. Add Team-Member. </label> <br>
									<label class="form-label text-primary"><b>Team-Member</b>
										Add and Follow-up Enquiry.</label> <br> <label
										class="form-label text-primary">System should maintain
										login activities log with IP address and used id.</label>
								</div>
								<div class="col-md-6">
									<label for="inputState" class="form-label">Account Type</label>
									<select id="inputState" class="form-select" name="userType">
										<option disabled selected>- SELECT -</option>
										<option value="Super-Admin">Super-Admin</option>
										<option value="Admin">Admin</option>
										<option value="L1-Member">L1-Member</option>
										<option value="L2-Member">L2-Member</option>
										<option value="L3-Member">L3-Member</option>
									</select>
								</div>

								<div class="col-md-6">
									<label for="inputState" class="form-label">Role</label> <select
										id="inputState" class="form-select" name="userRole">
										<option disabled selected>- SELECT -</option>
										<option value="Admin">Admin</option>
										<option value="Team-Leader">Team-Leader</option>
										<option value="Team-Member">Team-Member</option>
										<option value="None">None</option>
									</select>
								</div>

								<div class="col-md-12">
									<label for="inputName5" class="form-label">Company Name
										(Assigned By Admin)</label> 
										<select id="inputState" class="form-select" name="userCompanyName">
										<option disabled selected>- SELECT -</option>
										<c:forEach var="e" items="${companyList}">
											<option value="${e.organizationName}">${e.organizationName}</option>
										</c:forEach>
									</select>
								</div>
								<div class="col-md-8">
									<label for="inputName5" class="form-label">Person Name</label>
									<input type="text" name="userPersonName" class="form-control"
										id="inputName5" placeholder="Enter Person Name" required>
								</div>
								<div class="col-md-4">
									<label for="inputZip" class="form-label">PRN No. <span
										class="text-primary"> *System Generated</span></label> <input
										type="text" name="userPRN" class="form-control" id="randomNumberInput" readonly>
								</div>
								<div class="col-md-4">
									<label for="inputEmail5" class="form-label">Mobile</label> <input
										type="text" name="userMobile" class="form-control"
										id="inputEmail5" placeholder="Enter Mobile" required>
								</div>
								<div class="col-md-4">
									<label for="inputPassword5" class="form-label">Email</label> <input
										type="email" name="userEmail" class="form-control"
										id="inputPassword5" placeholder="Enter Email" required>
								</div>
								<div class="col-md-4">
									<label for="inputPassword5" class="form-label">Password</label> <input
										type="password" name="userPassword" class="form-control"
										id="inputPassword5" placeholder="Enter Password" required>
								</div>
								<div class="col-12">
									<label for="inputAddress5" class="form-label">Address</label> <input
										type="text" name="userAddress" class="form-control"
										id="inputAddres5s" placeholder="Enter Address">
								</div>
								<div class="col-md-4">
									<label for="inputCity" class="form-label">City</label> <input
										type="text" name="userCity" class="form-control"
										id="inputCity" placeholder="Enter City">
								</div>
								<div class="col-md-4">
									<label for="inputState" class="form-label">State</label> <select
										id="inputState" name="userState" class="form-select">
										<option selected>Choose State..</option>
										<option value="Andhra Pradesh">Andhra Pradesh</option>
										<option value="Arunachal Pradesh">Arunachal Pradesh</option>
										<option value="Assam">Assam</option>
										<option value="Bihar">Bihar</option>
										<option value="Chhattisgarh">Chhattisgarh</option>
										<option value="Goa">Goa</option>
										<option value="Gujarat">Gujarat</option>
										<option value="Haryana">Haryana</option>
										<option value="Himachal_pradesh">Himachal Pradesh</option>
										<option value="Jharkhand">Jharkhand</option>
										<option value="Karnataka">Karnataka</option>
										<option value="Kerala">Kerala</option>
										<option value="Madhya_pradesh">Madhya Pradesh</option>
										<option value="Maharashtra">Maharashtra</option>
										<option value="Manipur">Manipur</option>
										<option value="Meghalaya">Meghalaya</option>
										<option value="Mizoram">Mizoram</option>
										<option value="Nagaland">Nagaland</option>
										<option value="0disha">Odisha</option>
										<option value="Punjab">Punjab</option>
										<option value="Rajasthan">Rajasthan</option>
										<option value="Sikkim">Sikkim</option>
										<option value="Tamil_nadu">Tamil Nadu</option>
										<option value="Telangana">Telangana</option>
										<option value="Tripura">Tripura</option>
										<option value="Uttar_pradesh">Uttar Pradesh</option>
										<option value="Uttarakhand">Uttarakhand</option>
										<option value="West_bengal">West Bengal</option>
										<option value="Chandigarh">Chandigarh</option>
										<option value="Daman_and_diu">Daman and Diu</option>
										<option value="Delhi">Delhi</option>
										<option value="Lakshadweep">Lakshadweep</option>
									</select>
								</div>
								<div class="col-md-4">
									<label for="inputZip" class="form-label">Zip</label> <input
										type="text" name="userZipcode" class="form-control" id="inputZip">
								</div>

								<div class="col-md-4">
									<label for="inputCity" class="form-label">Aadhar No.</label> <input
										type="text" name="userAadhar" class="form-control" id="inputCity" placeholder="XXXX XXXX XXXX">
								</div>
								<div class="col-md-4">
									<label for="inputState" class="form-label">PAN No.</label> <input
										type="text" name="userPan" class="form-control" id="inputCity" placeholder="XXXXX0000X">
								</div>
								<div class="col-md-4">
									<label for="inputZip" class="form-label">GST No.</label> <input
										type="text" name="userGST" class="form-control" id="inputZip" placeholder="Enter GST Number">
								</div>
								<div class="col-12">
									<label for="inputAddress5" class="form-label">Remark</label> <input
										type="text" name="userRemark" class="form-control" id="inputAddres5s" placeholder="Enter Remark">
								</div>
								<div class="row mt-3 mb-3">
									<div
										class="col-md-12 bg-secondary text-light text-center pt-3 pb-2 mb-3">
										<label for="inputState" class="form-label">Upload
											Documents</label>
									</div>
									<div class="col-md-4">
										<!-- <label for="inputState" class="form-label">Document Name</label> -->
										<select id="inputState" name="userProof" class="form-select" required>
											<option selected>- SELECT -</option>
											<option value="Aadhar card">Adhar Card</option>
											<option value="Pan card">PAN Card</option>
										</select>
									</div>

									<div class="col-md-8">
										<!-- <label for="inputState" class="form-label">Upload Document</label> -->
										<input class="form-control" name="userDoc" type="file" id="formFile" required>
									</div>
								</div>
								<div class="text-center">
									<input type="submit" class="btn btn-primary" value="Save"> <a type="reset"
										class="btn btn-secondary" href="search_user_super_admin">Cancel</a>
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
	<script>
// Function to generate a random 8-digit number
function generateRandomNumber() {
  // Generate a random number between 10000000 and 99999999 (inclusive)
  var randomNumber = Math.floor(10000000 + Math.random() * 90000000);
  // Update the value of the input field with the generated random number
  document.getElementById("randomNumberInput").value = randomNumber;
}

// Call the function when the page loads to generate an initial random number
generateRandomNumber();
</script>
</body>

</html>