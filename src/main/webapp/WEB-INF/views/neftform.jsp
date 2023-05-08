<!doctype html>
<%@page import="org.springframework.ui.Model"%>
<%@page import="Entities.User"%>
<%@page isELIgnored="false"%>

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

<title>Hello, world!</title>
</head>
<body>

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



	<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background-color: #0C4160;
	padding: 30px 10px;
}

.card {
	max-width: 500px;
	margin: auto;
	color: black;
	border-radius: 20 px;
}

p {
	margin: 0px;
}

.container .h8 {
	font-size: 30px;
	font-weight: 800;
	text-align: center;
}

.btn.btn-primary {
	width: 100%;
	height: 70px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 15px;
	background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%);
	border: none;
	transition: 0.5s;
	background-size: 200% auto;
}

.btn.btn.btn-primary:hover {
	background-position: right center;
	color: #fff;
	text-decoration: none;
}

.btn.btn-primary:hover .fas.fa-arrow-right {
	transform: translate(15px);
	transition: transform 0.2s ease-in;
}

.form-control {
	color: white;
	background-color: #223C60;
	border: 2px solid transparent;
	height: 60px;
	padding-left: 20px;
	vertical-align: middle;
}

.form-control:focus {
	color: white;
	background-color: #0C4160;
	border: 2px solid #2d4dda;
	box-shadow: none;
}

.text {
	font-size: 14px;
	font-weight: 600;
}

::placeholder {
	font-size: 14px;
	font-weight: 600;
}
</style>


	<script>
		
	</script>

	<%
	User user = (User) request.getAttribute("user");
	%>


	<form action="${pageContext.request.contextPath}/neftprocess"
		method="post">
		<div class="container p-0">
			<div class="card px-4">
				<p class="h8 py-3">Payment Details</p>
				<div class="row gx-3">
					<div class="col-12">
						<div class="d-flex flex-column">
							<p class="text mb-1">Account Number</p>
							<input class="form-control mb-3" type="number"
								placeholder="Enter Acoount Number Carefully" name="accountno">
						</div>
					</div>
					<div class="col-12">
						<div class="d-flex flex-column">
							<p class="text mb-1">IFSC</p>
							<input class="form-control mb-3" type="text"
								placeholder="Enter IFSC" name="ifsc">
						</div>
					</div>

					<div class="col-6">
						<div class="d-flex flex-column">
							<p class="text mb-1">Amount</p>
							<input class="form-control mb-3 pt-2 " type="number"
								placeholder="Enter Amount" name="amt">
						</div>
					</div>
					<div class="col-12">
						<div class="container text-center">
							<button type="submit" class="btn btn-primary"
								style="width: fit-content;">Pay now</button>
						</div>
					</div>


					<input type="hidden" value="<%=user.getUserId()%>" name="id">
				</div>
			</div>
		</div>
	</form>




</body>
</html>