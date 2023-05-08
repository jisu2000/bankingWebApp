<!doctype html>
<%@page import="Entities.Statement"%>
<%@page import="java.util.List"%>
<%@page import="Entities.User"%>
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

<title>statements</title>
</head>
<body
	style="background-image: url(https://cdn.wallpapersafari.com/86/59/y0673h.jpg);">

	<%
	User user = (User) request.getAttribute("user");
	List<Statement> statement = (List<Statement>) request.getAttribute("statement");
	%>

	<div class="container text-center">
		<h3 style="color: red;">
			Account no:
			<%=user.getAccNo() %></h3>
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

	<div class="container">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col" style="color: yellow;">Ref No</th>
					<th scope="col" style="color: yellow;">Date</th>
					<th scope="col" style="color: yellow;">Credited</th>
					<th scope="col" style="color: yellow;">Debited</th>
					<th scope="col" style="color: yellow;">Aval</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(Statement st: statement)
					{
					
					%>

				<tr>
					<td style="color: orange;"><%=st.getStId()%></td>
					<td style="color: black;"><%=st.getDate() %></td>
					<td style="color: green;"><%=st.getDiposite() %></td>
					<td style="color: red;"><%=st.getWithdraw() %></td>
					<td style="color: blue;"><%=st.getAval()%>/-</td>

				</tr>
				
				<%
					}
				%>


			</tbody>
		</table>



	</div>
</body>
</html>