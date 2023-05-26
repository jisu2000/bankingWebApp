<!doctype html>
<%@page import="Entities.Manager"%>

<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" errorPage="error.jsp"%>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css">



<title>Hello, world!</title>
<style>
.wrapper-inner>div>a:hover {
	text-decoration: none;
}
</style>
</head>
	
	<%
	 Manager admin= (Manager)session.getAttribute("admin");
	
	%>
<body
	style="background-image: url('https://4kwallpapers.com/images/wallpapers/dark-background-abstract-background-network-3d-background-7680x4320-8324.png');">


	<div class>

		<nav class="navbar navbar-expand-lg navbar-dark bg-success">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>


					<li style="margin-left: 50vw; margin-top: .5vw;">
						<p style="color: yellow;">Hi! <%=admin.getManagerName() %></p>
					</li>

					</li>

					<li>
						<div style="margin-left: 10vw;">
							<a href="logout" class="btn btn-danger"> Logout <span
								class="oi oi-account-logout"></span>
							</a>




						</div>
					</li>
				</ul>
			</div>
		</nav>

	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>

	<div class="container text-center wrapper">
		<div class="d-flex justify-content-center wrapper-inner"
			style="margin-top: 5vw;">
			<div class="container">
				<a href="addemployee"
					class="card card-body bg-success text-light text-center">
					<h5 class="card-title">Add Employee</h5>
					<p class="card-text">Click to add an Employee</p>
				</a>
			</div>
			<div class="container">
				<a href="showallemp"
					class="card card-body bg-primary text-light text-center">
					<h5 class="card-title">Show All Employee</h5>
					<p class="card-text">Click to show all Employee</p>
				</a>
			</div>
			<div class="container">
				<a href="searchemp"
					class="card card-body bg-warning text-light text-center">
					<h5 class="card-title">Search a Employee</h5>
					<p class="card-text">Click to find a Employee</p>
				</a>
			</div>
			<div class="container">
				<a href="deleteemp"
					class="card card-body bg-danger text-light text-center">
					<h5 class="card-title">Delete Employee</h5>
					<p class="card-text">Click to Delete a Employee</p>
				</a>
			</div>
			<div class="container">
				<a href="updateemp"
					class="card card-body bg-info text-light text-center">
					<h5 class="card-title">Update Employee</h5>
					<p class="card-text">Click Here To Update Details</p>
				</a>

			</div>

			<div class="container">
				<a href="showallmsg"
					class="card card-body bg-secondary text-light text-center">
					<h5 class="card-title">Show all Messages</h5>
					<p class="card-text">Click Here To see all Public Messages</p>
				</a>

			</div>
		</div>
	</div>



	</div>

	<style>
@media ( min-width : 40em) {
	.wrapper-inner {
		display: grid !important;
		grid-template-columns: 30vw 30vw;
		gap: 2rem;
	}
}

@media ( max-width : 40em) {
	.wrapper {
		margin-bottom: 5rem;
	}
	.wrapper-inner {
		display: grid !important;
		gap: 2rem;
	}
	.wrapper-inner>div {
		width: 90vw !important;
	}
	.wrapper-inner>div>a {
		width: 100% !important;
	}
	.wrapper-inner>div>a:hover {
		text-decoration: none;
	}
}
</style>


</body>

</html>