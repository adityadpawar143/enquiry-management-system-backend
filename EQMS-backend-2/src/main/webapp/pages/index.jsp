<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>EQMS</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

 <div class="container text-center mt-5 py-5">

    <img src="./assets/img/eqms_logo.JPG" class="img-fluid mx-auto">
  </div>

  <div class="container text-center py-3">
    <div>
      <h4>Admin Panel</h4>
    </div>
    <div class="row mt-3">
      <div class="col-3"></div>
      <div class="col-6"></div>
      <div class="col-3"></div>
    </div>
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
        <form action="/checkLogin" method="post">
          <div class="form-group">
            <!-- <label for="email">Email Address</label> -->
            <input type="text" name="userEmail" class="form-control" placeholder="Enter email" id="email">
          </div>
          <div class="form-group">
            <!-- <label for="pwd">Password</label> -->
            <input type="password" name="userPassword" class="form-control" placeholder="Enter password" id="pwd">
          </div>
          <input type="submit" class="btn btn-primary center" value="Login">
    
        </form>
      </div>
      <div class="col-md-3"></div>
    </div>
    <div class="row">
      <div class="col-md-6 mx-auto">
        <div class="row">
          <div class="col-md-12 text-left">
            <a href="dashboard_super_admin"><b class="text-primary">Super Admin</b></a>
            Manage master data product and setting | Delete product | Delete follow-up | Add admin user
          </div>
          <div class="col-md-12 text-left">
            <a href="dashboard_admin"><b class="text-primary">Admin</b></a>
            Add new user | Assign user role | Edit product details | Reset L1/L2/L3 password
          </div>
          <div class="col-md-12 text-left">
            <a href="dashboard_L1"><b class="text-primary">Member L1</b></a> 
            Assign or transfer enquiry
          </div>
          <div class="col-md-12 text-left">
            <a href="dashboard_L2"><b class="text-primary">Member L2</b></a> 
           Add follow-up | View enquiry details with follow-up history
          </div>
          <div class="col-md-12 text-left">
            <a href="dashboard_L3"><b class="text-primary">Member L3</b></a>
            Add enquiry | View added enquiries |
            Import enquiry excel sheet
          </div>
        </div>
      </div>
    </div>
  </div>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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