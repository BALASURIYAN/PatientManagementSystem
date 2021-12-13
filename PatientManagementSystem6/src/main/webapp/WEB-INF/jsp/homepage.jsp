<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Home Page</title>

<style>
.container {
	box-shadow: 1px 2px;
}

div.polaroid {
	width: 284px;
	padding: 10px 10px 20px 10px;
	border: 1px solid #BFBFBF;
	background-color: white;
	box-shadow: 10px 10px 5px #aaaaaa;
}
</style>
</head>
<body style="background: url(/images/home2.jpg); background-size: 100%">
	<div class="container">
		<div align="center" class="container p-3 my-3 bg-dark text-white">
			<h1 class="display-2">Patient Management System</h1>
			<br>
			<br>
		</div>
		<div align="center">
			<a href="registration" class="btn btn-primary">Patient
				Registration</a>&nbsp;&nbsp; <a href="adminregistration"
				class="btn btn-warning">Admin Registration</a> <a href="adminlogin"
				class="btn btn-info">Admin Login</a>
		</div>
		<br>
		<br>
	</div>

</body>
</html>