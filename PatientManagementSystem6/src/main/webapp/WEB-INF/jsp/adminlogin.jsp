<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Admin Login</title>
</head>
<body>
	<br>
	<br>
	<div align="center" class="container"
		style="background-color: #f1f1f1; background-size: 100%">
		<h2 class="display-6">Admin Login</h2>
		<br>
		<table>
			<form:form action="validate" modelAttribute="admincredentials">

				<tr>
					<td>User Name :</td>
					<td><form:input path="username" /></td>
				</tr>

				<tr>
					<td class="col-auto">Password :</td>
					<td class="col-auto"><form:password path="password" /></td>
				</tr>
				
				<tr>
					<td><input class="btn btn-success" type="submit" value="Login"></td>&nbsp;&nbsp;
					<td><input class="btn btn-info" type="reset" value="Clear"></td>
				</tr>

			</form:form>
		</table>
		<br>
		<br>

	</div>
</body>
</html>




