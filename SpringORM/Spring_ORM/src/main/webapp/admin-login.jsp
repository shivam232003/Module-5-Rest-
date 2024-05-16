<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<title>Admin Login</title>
</head>
<body>
	
	
	<div class="container">
		<h1>Admin Login Page</h1>
		<form action="AdminController" method="post">
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Email</label>
				<input type="email" name="email" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password
					</label> <input type="text" name="password" class="form-control"
					id="exampleInputPassword1">
			</div>
			<input type="submit" class="btn btn-primary" value="login" name="action"/>
		</form>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>