<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>Admin Control Page</title>
</head>
<body>

	<div align="center" class="container-lg">
		<br>
		<br>
		<div align="right">
			<a class="btn btn-primary" href="adminlogout">Logout</a>
		</div>
		<h1>Patient Details</h1>
		<br>
		<br>

		<table class="table table-striped table-hover table-bordered"
			border="1">
			<tr class="table-dark">
				<td>ID</td>
				<td>Patient Name</td>
				<td>Gender</td>
				<td>Consultation/General Checkup</td>
				<td>Doctor Name</td>
				<td>Appointment Date</td>
				<!--  	<td>Patient Photo</td>  -->
				<td>Edit</td>
				<td>Delete</td>
			</tr>



			<c:forEach items="${list}" var="p">
				<tr>
					<td><a href="getbyid/${p.id}">${p.id}</a></td>
					<td>${p.name}</td>
					<td>${p.gender}</td>
					<td>${p.consultation}</td>
					<td>${p.doctorName}</td>
					<td>${p.date}</td>
					<!-- <td><img alt="No Photo" width="100 height=300" src="data:image/jpg;base64,${u.patientPic}"></img></td> -->
					<td><a class="btn btn-info" href="updatepatient/${p.id}">Edit</a></td>
					<td><a class="btn btn-warning" href="deletepatient/${p.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>


	<div align="center" class="container-lg">
		<a href="home" class="btn btn-primary">Navigate to Home Page</a>
	</div>

</body>
</html>