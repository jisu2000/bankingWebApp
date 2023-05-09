<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title> Credited</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css"
    />
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
    style="
      background-image: url(https://img.freepik.com/free-vector/abstract-business-professional-background-banner-design-multipurpose_1340-16856.jpg);
    "
  >
  
    	<% long am=(Long)request.getAttribute("ammount"); %>
  
 
    <div id="spinner"></div>
    <div id="user" style="color: green; display: none;"><%=am %>- Credited</div>

    <style>#spinner {
        border: 16px solid #f3f3f3;
        border-top: 16px solid #3498db;
        border-radius: 50%;
        width: 120px;
        height: 120px;
        animation: spin 6s linear infinite;
        margin: auto;
        position: absolute;
        top: 0; bottom: 0; left: 0; right: 0;
        z-index: 999;
      }
      
      @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
      }
      </style>


      <script>
      window.onload = function() {
        document.getElementById("spinner").style.display = "block"; // show spinner
        setTimeout(removeSpinnerAndShowContent, 4000); // remove spinner after 4 seconds
      }
      
      function removeSpinnerAndShowContent() {
        document.getElementById("spinner").style.display = "none"; // hide spinner
        document.getElementById("user").style.display = "block"; // show user message
      }
      </script>


    <script>
      // Function to delete user
      function deleteUser() {
        // Your code to delete the user goes here

        // Show SweetAlert2 message
        Swal.fire({
          title: "Success!",
          text: "<%=am%>/- has been Credited",
          icon: "success",
          timer: 6000, // automatically close the alert after 2 seconds
          showConfirmButton: false, // remove the "OK" button
        });
      }

      // Start the animation
      setTimeout(function () {
        document.getElementById("user").style.opacity = 0;
        setTimeout(function () {
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

      @keyframes slide-from-right {
        from {
          left: 100%;
        }
        to {
          left: 0%;
        }
      }
    </style>

    <div class="container text-center">
  

      <!-- <div class="container text-center">
        <h1 style="color: orange">
          All details of 872792 has been successfully removed
        </h1>
      </div> -->
    </div>

    <script>
      // Wait for 7 seconds (7000 milliseconds) before redirecting
      setTimeout(function () {
        window.location.href = "/banking/empdashboard";
      },5000);
    </script>
  </body>
</html>
