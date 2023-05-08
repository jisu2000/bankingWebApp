<!DOCTYPE html>
<%@page import="Entities.User"%>
<html>
<head>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
    }

    .spinner {
  border: 16px dotted #f3f3f3; /* modified border style */
  border-top: 16px dotted #4CAF50; /* modified border style */
  border-radius: 50%;
  width: 120px;
  height: 120px;
  animation: spin 2s linear infinite;
  margin: 0 auto;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

    @keyframes spin {
      0% { transform: translate(-50%, -50%) rotate(0deg); }
      100% { transform: translate(-50%, -50%) rotate(360deg); }
    }

    .balance {
      display: none;
      font-size: 24px;
      margin-top: 20px;
      color: #4CAF50;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
    }

    .blink {
      animation: blink 1s linear infinite;
    }

    @keyframes blink {
      0% { opacity: 1; }
      50% { opacity: 0; }
      100% { opacity: 1; }
    }
  </style>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.5/dist/sweetalert2.min.css">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.5/dist/sweetalert2.all.min.js"></script>
</head>
<body style="background-image: url(https://wallpaperaccess.com/full/670557.jpg);">

<div class="spinner"></div>
<div class="balance blink">Fetching balance...</div>
	<% User user=(User)request.getAttribute("user"); %>
<script>
setTimeout(function() {
  document.querySelector('.spinner').style.display = 'none';
  document.querySelector('.balance').style.display = 'block';

  setTimeout(function() {
    Swal.fire({
      title: 'Balance Fetched Successfully',
      icon: 'success',
      timer: 3000,
      timerProgressBar: true,
      position: 'center'
    });
  }, 1000);

}, 4000);

setTimeout(function() {
  document.querySelector('.balance').classList.remove('blink');
  document.querySelector('.balance').innerHTML = 'Your balance is <strong><%=user.getBalance()%>/-</strong>';
}, 8000);
</script>

</body>
</html>
