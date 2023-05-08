<!doctype html>
<%@page import="java.util.Base64"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Employee"%>
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
<style>
.box-wrapper {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 2rem;
	box-shadow: 2px 2px 5px #cdcaca;
	width: 90vw;
	padding: 2rem;
	margin-bottom: 5rem;
}

.box {
	background-color: rgba(0, 0, 0, 0.03);
	padding: 0.1rem 1rem;
	border: 1px solid transparent;
	border-radius: 2px;
}

.box-header {
	color: rgba(0, 0, 0, 0.5);
}

.box-content {
	color: rgba(0, 0, 0, 0.6);
	font-weight: 600;
}

.employeeImg-wrapper {
	width: max(17vw, 8rem);
	border: 2px solid transparent;
	/* box-shadow: 2px 2px 5px #818181; */
	/* box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;; */
	box-shadow: rgba(17, 17, 26, 0.1) 0px 8px 24px, rgba(17, 17, 26, 0.1)
		0px 16px 56px, rgba(17, 17, 26, 0.1) 0px 24px 80px;
	text-align: center;
	padding: 0.2rem;
	word-break: break-all;
}

.employeeImg {
	width: 100%;
	height: 100%;
	object-fit: cover;
	background-position: center center;
	background-repeat: no-repeat;
}

@media screen and (max-width: 40em) {
	.box-wrapper {
		grid-template-columns: 1fr;
	}
	.box {
		width: 100%;
	}
}
</style>
</head>

<% Employee emp=(Employee)session.getAttribute("emp"); %>

<%
	ArrayList<Integer> imageBytes = emp.getImage();
	byte[] bytes = new byte[imageBytes.size()];
	for (int i = 0; i < imageBytes.size(); i++) {
		bytes[i] = (byte) (int) imageBytes.get(i);
	}
	String base64Encoded = Base64.getEncoder().encodeToString(bytes);
	%>




<body
	style="background-color: rgb(235, 235, 235); display: flex; flex-direction: column; justify-content: center; align-items: center;">
	<div class="container text-center">
		<h1 style="color: green;">Employee details</h1>
	</div>




	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script> -->
	<div class="employeeImg-wrapper"
		style="margin-top: 2vw; margin-bottom: 5rem;">
		<img src="data:image/png;base64,<%=base64Encoded%>" alt="Your Image"
			class="employeeImg"> <span
			style="font-weight: 600; color: #a6a4a4;">img</span>
	</div>
	<div class="box-wrapper">
		<div class="box">
			<span class="box-header">Full name</span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;"><%=emp.getEmpName() %>
			</h3>
		</div>
		<div class="box">
			<span class="box-header">Employee Id</span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;"><%=emp.getEmpId() %>
			</h3>
		</div>
		<div class="box">
			<span class="box-header">Email Id</span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;"><%=emp.getEmpEmail() %>
			</h3>
		</div>
		<div class="box">
			<span class="box-header">Contact No</span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;"><%=emp.getEmpCont() %></h3>
		</div>
		<div class="box special">
			<span class="box-header">Address </span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;"><%=emp.getEmpAdd() %>
			</h3>
		</div>

		<div class="box">
			<span class="box-header">Joining Date</span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;">
				<%=emp.getJoinedDate() %>
			</h3>
		</div>
		<div class="box">
			<span class="box-header">Salary</span>
			<h3 class="box-content"
				style="font-family: 'Times New Roman', Times, serif;">
				<%=emp.getEmpsal() %>/-
			</h3>
		</div>

		<!-- <h3 style="font-family: 'Times New Roman', Times, serif;">Employee Id: 377357 </h3>
    <h3 style="font-family: 'Times New Roman', Times, serif;">Email: spjisu2000@gmail.com </h3>
    <h3 style="font-family: 'Times New Roman', Times, serif;">Contact no: 9734201262 </h3>
    <h3 style="font-family: 'Times New Roman', Times, serif;">Address: Panskura,721139 </h3>
    <h3 style="font-family: 'Times New Roman', Times, serif;">Joining Date: 26-08-2020 </h3>
    <h3 style="font-family: 'Times New Roman', Times, serif;">Salary: 34000</h3> -->


	</div>
</body>

</html>