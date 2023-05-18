<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />

    <style>
      h2 {
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

    <title>Hello, world!</title>
  </head>
  
  <body style="background-image: url(https://cdn.wallpapersafari.com/4/79/unD4fJ.jpg);
    ">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"
    ></script>

<% Integer id= (Integer)request.getAttribute("id") ;%>
    <div class="container text-center" style="width: fit-content">
      <div class="alert alert-danger" role="alert"><%=id %> Not Found!!</div>
    </div>


    

    <div class="container text-center">
      <h2 style="color: green">
        The Id You have mentioned is not present please refine your query !!
      </h2>
    </div>
    
     <script>
      // Wait for 7 seconds (7000 milliseconds) before redirecting
      setTimeout(function () {
        window.location.href = "/banking/adminsuccess";
      },4000);
    </script>
    
    
    
  </body>
</html>
