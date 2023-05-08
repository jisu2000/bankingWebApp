<!DOCTYPE html>
<%@page import="Entities.Employee"%>
<%@page import="java.util.List"%>
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
	crossorigin="anonymous" />

<title>Hello, world!</title>
</head>
<body
	style="background-image: url(https://cdn.wallpapersafari.com/49/90/piUcJ3.jpg);">
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

	<div class="container text-center">
		<h1 style="color: blueviolet">All Employees</h1>
	</div>

	<%
	List<Employee> list = (List<Employee>) request.getAttribute("list");
	%>

	<div class="container" style="margin-top: 3vw">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Employee Name</th>
					<th scope="col">Employee Email</th>
					<th scope="col">Employee Contact</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Employee e : list) {
				%>
				<tr>
					<td><%=e.getEmpId()%></td>
					<td><%=e.getEmpName()%></td>
					<td><%=e.getEmpEmail()%></td>
					<td><%=e.getEmpCont()%></td>
					<td><a href="empsprocess/<%=e.getEmpId()%>"class="btn btn-outline-success">View</a></td>
				</tr>

				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
