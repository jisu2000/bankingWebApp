<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII" isErrorPage="true"%><!DOCTYPE html>

<head>
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
        }
        
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 50px 20px;
            text-align: center;
        }
        
        h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
            opacity: 0;
            animation: fade-in 1s forwards;
        }
        
        p {
            font-size: 18px;
            color: #146707;
            margin-bottom: 30px;
            opacity: 0;
            animation: fade-in 1s forwards;
            
        }
        
        .animation {
            width: 200px;
            height: 200px;
            margin-bottom: 30px;
            opacity: 0;
            animation: fade-in 1s forwards;
        }
        
        @keyframes fade-in {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h1 style="color: red;">Oops! Something went wrong.</h1>
        <p>We apologize for the inconvenience.</p>
        <p> Try to login again Your security is of utmost importance to us, and we take every measure to ensure it.</p>
        <img src="https://i.pinimg.com/736x/66/e6/ab/66e6abd3327a7e5ba5374fe8377bdae8.jpg" alt="Cartoon Image" class="animation">
        <p>Please try again later.</p>
    </div>
</body>
</html>
