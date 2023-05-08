<!DOCTYPE html>
<%@page import="Entities.User"%>
<html>
  <head>
    <title>User Account Balance</title>
    <style>
      /* Center the spinner */
      .spinner-container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }
      /* Create the spinner */
      .spinner {
        border: 4px solid rgba(0, 0, 0, 0.1);
        border-top: 4px solid #333;
        border-radius: 50%;
        width: 30px;
        height: 30px;
        animation: spin 1s linear infinite;
      }
      /* Hide the account info until it's loaded */
      .account-info {
        display: none;
        text-align: center;
        font-size: 24px;
      }
      /* Define the spinner animation */
      @keyframes spin {
        to {
          transform: rotate(360deg);
        }
      }
    </style>
  </head>
  <body style="background-image: url(https://wallpaper-house.com/data/out/4/wallpaper2you_33223.jpg);">
  <%User user= (User)request.getAttribute("user"); %>
    <div class="spinner-container">
      <div class="spinner"></div>
    </div>
    <div class="account-info">
      <h1 style="color: red;">Account Number <span id="username"></span></h1>
      <p style="color: blue;">Balance is: <span id="balance"></span>/-</p>
    </div>
    <script>
      // Simulate an API call to fetch user account info
      setTimeout(() => {
        const account = {
          username: "<%=user.getAccNo()%>",
          balance: <%=user.getBalance()%>,
        };
        // Update the UI with the account info
        document.getElementById("username").textContent = account.username;
        document.getElementById("balance").textContent = account.balance;
        // Hide the spinner and show the account info
        document.querySelector(".spinner-container").style.display = "none";
        document.querySelector(".account-info").style.display = "block";
      }, 2000); // Adjust the delay time to simulate a slower or faster API response
    </script>
  </body>
</html>
