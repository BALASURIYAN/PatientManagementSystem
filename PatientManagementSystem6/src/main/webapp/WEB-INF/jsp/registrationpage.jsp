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

<title>Patient Registration Page</title>


<style>
.container {
	box-shadow: 1px 2px;
}
</style>
</head>
<body>

	<div align="center" class="container-lg">

		<h2 align="center" class="container p-3 my-3 bg-dark text-white">Patient
			Registration Form</h2>
		<br>
		<br>

		<form:form action="submitform" modelAttribute="patient"
			enctype="multipart/form-data">
			<table>
				<div class="mb-3">
					<tr>
						<td>Patient Name :</td>
						<td><form:input path="name" placeholder="Enter your name"
								required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Gender :</td>
						<td><form:radiobutton path="gender" value="Male" label="Male" />&nbsp;
							<form:radiobutton path="gender" value="female" label="Female" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Consulation/General Checkup :</td>
						<td><form:checkbox path="consultation" value="Consultation"
								label="Consulation"></form:checkbox>&nbsp; <form:checkbox
								path="consultation" value="General Checkup"
								label="General Checkup"></form:checkbox></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Doctor Name :</td>
						<td><form:select path="doctorName" placeholder="Select">
								<form:option value="Select" />
								<form:option value="Dr.Lakshamanan" />
								<form:option value="Dr.Rajkumar" />
								<form:option value="Dr.Vignesh" />
							</form:select></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Date of appointment:</td>
						<td><form:input type="date" path="date"
								placeholder="dd/MM/yyyy" required="true" /></td>
					</tr>
				</div>


				<!--  		<tr>
					<td>Patient Photo :</td>
					<td><input type="file" name="patientPic"></td>
				</tr>         
		-->
				<div class="mb-3">
					<div align="center">
						<tr>

							<td><input class="btn btn-success" type="submit"
								value="Register Patient"></td>
							<td><input class="btn btn-warning" type="reset"
								value="Clear"></td>

						</tr>
					</div>
				</div>
			</table>
		</form:form>

		<div>
</body>
</html>