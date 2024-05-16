<%@page import="model.User"%>
<%@page import="com.mysql.cj.Session"%>
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

<title>Home</title>
</head>
<body>
	<%
		User u = (User)session.getAttribute("user");
		if(u != null){
	
	%>
	<div class="container">
		<h1 class="text-center">User Profile</h1>
		<form action="UserServlet" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">First
					Name</label> <input type="text" name="fname" value="<%=u.getFname() %>"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Last
					Name</label> <input type="text" name="lname" value="<%=u.getLname() %>"
					class="form-control" id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Email</label>
				<input type="email" name="email" value="<%=u.getEmail() %>"
					class="form-control" id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Mobile
				</label> <input type="text" name="mobile" value="<%=u.getContact() %>"
					class="form-control" id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password
				</label> <input type="text" name="password" value="<%=u.getPassword() %>"
					class="form-control" id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Gender
				</label><br> <input type="radio" name="gender" value="<%=u.getGender()%>">Male
				<input type="radio" name="gender" value="<%=u.getGender()%>">Female <input
					type="radio" name="gender" value="<%=u.getGender()%>">Other
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Profile
					Pic </label> <input type="file" name="image" value="<%=u.getProfile_pic() %>"
					class="form-control" id="exampleInputPassword1">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<% } %>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>