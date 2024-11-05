<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html >
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    
    .container.button{
    display:inline-block;
    margin-top:20px;
    padding:10px 20px;
    font-size:16px;
    color:#fff;
    background-color:"#007bff";
    border:none;
    border-radius:5px;
    text-decoration:none;
    
    }
    .container.button:hover
    {
     background-color:"#0056b3";
    }
  
    
    </style>
  </head>
  <body>
   <div class="container">
   <h1>Payment Successfully</h1>
  
   <p>Thank You!Your payment has been Processed Successfully </p>
   <p>OrderStatus:CONFIRMED</strong></p>
   <p>You will receive a confirmation email shortly</p>
   <a href="/" class="button">Go to HomePage</a>
   </div>
  </body>
  </html>