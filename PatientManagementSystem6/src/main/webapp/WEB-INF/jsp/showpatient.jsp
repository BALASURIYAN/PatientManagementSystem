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

<title>Show Patient by Id page</title>
</head>
<body>

	<div align="center" class="container-lg">
		<br>
		<br>
		<h1>Patient Mr/Mrs ${patient.name} Details:</h1>
		<br>
		<br>
		<table class="table table-striped table-hover table-bordered"
			border="1">
			<tr>
				<td>Patient ID :</td>
				<td>${patient.id}</td>
			</tr>
			<tr>
				<td>Patient Gender :</td>
				<td>${patient.gender}</td>
			</tr>
			<tr>
				<td>Consultation/General Checkup :</td>
				<td>${patient.consultation}</td>
			</tr>
			<tr>
				<td>Doctor Name :</td>
				<td>${patient.doctorName}</td>
			</tr>
			<tr>
				<td>Date of Appointment:</td>
				<td>${patient.date}</td>
			</tr>
		</table>





		<div>
</body>
</html>