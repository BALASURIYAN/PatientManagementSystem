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

<title>Admin Registration Page</title>


<style>
.container {
	box-shadow: 1px 2px;
}
</style>
</head>
<body>

	<div align="center" class="container-lg">

		<h2 align="center" class="container p-3 my-3 bg-dark text-white">Admin
			Registration Form</h2>
		<br>
		<br>
		<table>
			<form:form action="adminregister" modelAttribute="admin">

				<div class="mb-3">
					<tr>
						<td>Admin Id :</td>
						<td><form:input path="id" placeholder="Enter your Id"
								required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Admin First Name :</td>
						<td><form:input path="firstName"
								placeholder="Enter your first name" required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Admin Last Name :</td>
						<td><form:input path="lastName"
								placeholder="Enter your last name" required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>DOB :</td>
						<td><form:input type="date" path="dob"
								placeholder="Enter your dob" required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Email :</td>
						<td><form:input path="email" placeholder="Enter your email"
								required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Phone Number :</td>
						<td><form:input path="phoneNumber"
								placeholder="Enter your phone number" required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>User Name :</td>
						<td><form:input path="username"
								placeholder="Enter your username" required="true" /></td>
					</tr>
				</div>
				<div class="mb-3">
					<tr>
						<td>Password :</td>
						<td><form:input path="password"
								placeholder="Enter your password" required="true" /></td>
					</tr>
				</div>

				<td><input class="btn btn-success" type="submit"
					value="Register Admin"></td>
				<td><input class="btn btn-warning" type="reset" value="Clear"></td>

				</tr>
				</div>
				</div>

			</form:form>
		</table>

		<div>
</body>
</html>