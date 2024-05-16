<%@page import="com.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Home Page</title>
</head>
<body>

	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark m-0 p-0">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Spring MVC Form</a>
				<form class="d-flex">
					<a href="register" class="btn btn-outline-light ">Add User</a>
				</form>
			</div>
	</div>
	</div>

	<div class="container">
	<h1 class="mt-5">All Users</h1>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#ID</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Framework</th>
					<th scope="col">Action</th>
					<th scope="col">Edit</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var= "l">
				<tr>
					<th scope="row">${l.id }</th>
					<td>${l.name }</td>
					<td>${l.email }</td>
					<td>${l.framework }	</td>
					<td><a href="query/${l.id }" class="btn btn-info">Query</a></td>
					<td><a href="edit/${l.id }" class="btn btn-primary">Update</a></td>
					<td><a href="delete/${l.id }" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>