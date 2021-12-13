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

<title>Updation Page</title>
</head>
<body>

	<div align="center" class="container-lg">

		<h2 style="color: red">Patient Updation Form</h2>
		<br>
		<br>

		<table>
			<form:form action="/updatedetails" modelAttribute="patient">

				<tr>
					<td>ID :</td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td>Patient Name :</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td><form:radiobutton path="gender" value="Male" label="Male" />
						<form:radiobutton path="gender" value="female" label="Female" /></td>
				</tr>
				<tr>
					<td>Consulation/General Checkup :</td>
					<td><form:checkbox path="consultation" value="Consultation"
							label="Consulation"></form:checkbox> <form:checkbox
							path="consultation" value="General Checkup"
							label="General Checkup"></form:checkbox></td>
				</tr>
				<tr>
					<td>Doctor Name :</td>
					<td><form:select path="doctorName">
							<form:option value="Dr.Lakshamanan" />
							<form:option value="Dr.Rajkumar" />
							<form:option value="Dr.Vignesh" />
						</form:select></td>
				</tr>
				<tr>
					<td>Date of appointment:</td>
					<td><form:input type="date" path="date" /></td>
				</tr>


				<!-- 		<tr>
					<td>Patient Photo :</td>
					<td><input type="file" name="patientPic"></td>
				</tr>   -->

				<tr>
					<td><input type="submit" value="Update Patient"></td>
					<td><input type="reset" value="Clear"></td>
				</tr>

			</form:form>
		</table>

	</div>

</body>
</html>