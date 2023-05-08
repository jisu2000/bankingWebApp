<!DOCTYPE html>
<html>
  <head>
    <title>Message Sent Successfully</title>
    <style>
      .success-container {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
      }

      .success-message {
        font-size: 2rem;
        font-weight: bold;
        text-align: center;
        animation-name: success-animation;
        animation-duration: 2s;
        animation-fill-mode: forwards;
        opacity: 0;
        transform: translateY(-50%);
      }

      @keyframes success-animation {
        0% {
          opacity: 0;
          transform: translateY(-50%);
        }
        100% {
          opacity: 1;
          transform: translateY(0%);
        }
      }
    </style>
  </head>
  <body style="background-image: url(https://wallpaperaccess.com/full/1567855.jpg);">
    <div class="success-container">
      <div class="success-message" style="color: green;">
        Your message has been sent successfully!
      </div>
    </div>

    <script>
        // Wait for 7 seconds (7000 milliseconds) before redirecting
        setTimeout(function () {
          window.location.href = "/banking/";
        },4000);
      </script>

  </body>
</html>
