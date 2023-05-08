<!DOCTYPE html>
<html>
<head>
    <title>sending...</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <style>
        body {
            text-align: center;
        }

        .container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .spinner {
            border: 16px dotted #f3f3f3;
            border-top: 16px dotted #3498db;
            border-radius: 50%;
            width: 120px;
            height: 120px;
            animation: spin 2s linear infinite;
            margin: 0 auto;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        #sending {
            color: blue;
            font-size: 24px;
            font-style: italic;
            text-shadow: 2px 2px #f3f3f3;
            animation: blinker 1s linear infinite;
        }

        @keyframes blinker {
            50% { opacity: 0; }
        }
    </style>
</head>
<body  style="background-color: black;">

<div class="container">
    <div class="spinner"></div>
    <div id="sending" style="display:none;">Sending Money...</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script>
    setTimeout(function() {
        document.querySelector('.spinner').style.display = 'none';
        document.querySelector('#sending').style.display = 'block';
    }, 4000);

    setTimeout(function() {
        document.querySelector('#sending').style.display = 'none';
        swal("Receiver not found", "", "error");
    }, 8000);
</script>


 <script>
		// Wait for 7 seconds (7000 milliseconds) before redirecting
		setTimeout(function() {
			window.location.href = "/banking/userdashboard";
		}, 9000);
	</script>

</body>
</html>