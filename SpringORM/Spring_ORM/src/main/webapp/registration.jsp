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

<title>Registration</title>
</head>
<body>

	<div class="container">
		<h1 class="text-center">Registration Form</h1>
		<form action="UserContoller" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">First
					Name</label> <input type="text" name="fname" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Last
					Name</label> <input type="text" name="lname" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Email</label>
				<input type="email" name="email" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Mobile
				</label> <input type="text" name="mobile" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password
					</label> <input type="text" name="password" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Gender
					</label><br> <input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="female">Female
					<input type="radio" name="gender" value="other">Other
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Profile Pic
					</label> <input type="file" name="image" class="form-control"
					id="exampleInputPassword1">
			</div>
			<input type="submit" class="btn btn-primary" value="register" name="action"/>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>