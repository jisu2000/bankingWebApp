

<!DOCTYPE html>
<%@page import="Entities.Employee"%>






<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.0.0/font/bootstrap-icons.css">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css">







<title>Hello, world!</title>
</head>
<body
	style="background-image: url(https://cdn.wallpapersafari.com/86/59/y0673h.jpg);">


	<%
	Employee emp = (Employee) session.getAttribute("emp");
	%>
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


	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<!-- <a class="navbar-brand" href="#">Navbar</a> -->
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
				<li class="nav-item"><a class="nav-link" href="showyourself">Show
						Yourself</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Account Actions </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="userdeposearch">Deposit</a> <a
							class="dropdown-item" href="userwithsearch">Withdraw</a> <a
							class="dropdown-item" href="showbal">Show Balance</a>

					</div></li>
			</ul>

			<div style="margin-left: 35vw; color: yellow;">
				Hi
				<%=emp.getEmpName()%></div>

			<div style="margin-left: 10vw;">
				<a href="logout" class="btn btn-danger"> Logout <span
					class="oi oi-account-logout"></span>
				</a>




			</div>
		</div>
	</nav>


	<div class="container text-center wrapper">
		<div class="d-flex justify-content-center wrapper-inner"
			style="margin-top: 5vw;">
			<div class="container">
				<a href="addnewaccount"
					class="card card-body bg-success text-light text-center">
					<h5 class="card-title">Open an Account</h5>
					<p class="card-text">Click here to open an Bank Account</p>
				</a>
			</div>
			<div class="container">
				<a href="getallusers"
					class="card card-body bg-primary text-light text-center">
					<h5 class="card-title">Show All Bank Account</h5>
					<p class="card-text">Click to show all Bank Account Details</p>
				</a>
			</div>
			<div class="container">
				<a href="searchuser"
					class="card card-body bg-warning text-light text-center">
					<h5 class="card-title">Find Account Details</h5>
					<p class="card-text">Click to find an account details</p>
				</a>
			</div>
			<div class="container">
				<a href="userdels"
					class="card card-body bg-danger text-light text-center">
					<h5 class="card-title">Delete Account</h5>
					<p class="card-text">Click here to delete a Bank Account</p>
				</a>
			</div>
			<div class="container">
				<a href="upsearch"
					class="card card-body bg-info text-light text-center">
					<h5 class="card-title">Update Account</h5>
					<p class="card-text">Click Here To Update Account</p>
				</a>

			</div>

			<div class="container">
				<a href="getstatement"
					class="card card-body bg-dark text-light text-center">
					<h5 class="card-title">Get Statement</h5>
					<p class="card-text">Click Here To get the Account Statement</p>
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
