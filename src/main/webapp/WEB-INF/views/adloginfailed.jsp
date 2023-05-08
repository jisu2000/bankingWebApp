
<!DOCTYPE html>
<html>
<head>
    <title>validating</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .spinner {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>
    <div class="spinner">
        <i class="fa fa-spinner fa-spin fa-3x fa-fw"></i>
    </div>
    <script>
        setTimeout(function() {
            document.querySelector('.spinner').style.display = 'none';
            swal("Error", "Admin ID or password is incorrect", "error");
        }, 3000);
    </script>
    
    
    <script>
      // Wait for 7 seconds (7000 milliseconds) before redirecting
      setTimeout(function () {
        window.location.href = "/banking/admin";
      },6000);
    </script>
</body>
</html>
