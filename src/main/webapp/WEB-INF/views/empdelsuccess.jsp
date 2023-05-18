<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Deleted</title>
<script
	src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
<style>
#user {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 48px;
	font-weight: bold;
	color: red;
}
</style>
</head>
<body
	style="background-image: url(https://img.freepik.com/free-vector/abstract-business-professional-background-banner-design-multipurpose_1340-16856.jpg);">
	<div id="user">Employee Deleted</div>

	<script>
		// Function to delete user
		function deleteUser() {
			// Your code to delete the user goes here

			// Show SweetAlert2 message
			Swal.fire({
				title : "Success!",
				text : "Employee has been successfully deleted.",
				icon : "success",
				timer : 6000, // automatically close the alert after 2 seconds
				showConfirmButton : false
			// remove the "OK" button
			});
		}

		// Start the animation
		setTimeout(function() {
			document.getElementById("user").style.opacity = 0;
			setTimeout(function() {
				document.getElementById("user").style.display = "none";
				deleteUser(); // call the function to delete the user
			}, 1000);
		}, 1000);
	</script>

	<style>
h1 {
	position: relative;
	animation-name: slide-from-right;
	animation-duration: 2s;
}

@
keyframes slide-from-right {from { left:100%;
	
}

to {
	left: 0%;
}
}
</style>



	<div class="container text-center">
		<div class="container text-center" style="width: fit-content">
			<div class="alert alert-danger" role="alert">742747 Removed!!</div>
		</div>
		<%
		Integer id = null;
		Object idObj = request.getAttribute("id");
		if (idObj instanceof Integer) {
			id = (Integer) idObj;
		} else if (idObj instanceof String) {
			try {
				id = Integer.parseInt((String) idObj);
			} catch (NumberFormatException e) {
				// handle the exception
			}
		} ;
		%>

		<div class="container text-center">
			<h1 style="color: orange">
				All details of
				<%=id%>
				has been successfully removed
			</h1>
		</div>
	</div>


	<script>
		// Wait for 7 seconds (7000 milliseconds) before redirecting
		setTimeout(function() {
			window.location.href = "/banking/adminsuccess";
		}, 4000);
	</script>






</body>
</html>
