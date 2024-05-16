<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="dao.UserDao"%>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page import="model.Admin"%>
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
		Admin a = (Admin) session.getAttribute("admin");
	%>
	<%
		UserDao dao;
		List<User> list = dao.getAllUser();
	%>
	<table class="table">
	<h1>All Users</h1>
		<thead>
			<tr>
				<th scope="col">#id</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Email</th>
				<th scope="col">Mobile</th>
				<th scope="col">Password</th>
				<th scope="col">Gender</th>
				<th scope="col">Profile_pic</th>
				<th scope="col">Status</th>
			</tr>
		</thead>
		
		<tbody>
			<%for(User u : list){ %>
			<tr>
				<th scope="row"><%=u.getId() %></th>
				<td><%=u.getFname() %></td>
				<td><%=u.getLname() %></td>
				<td><%=u.getEmail() %></td>
				<td><%=u.getContact() %></td>
				<td><%=u.getPassword() %></td>
				<td><%=u.getGender() %></td>
				<td><%=u.getProfile_pic() %></td>
				<td><a href="" class="btn btn-danger">Delete</a></td>
			</tr>
			<%} %>
		</tbody>
	</table>







	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>