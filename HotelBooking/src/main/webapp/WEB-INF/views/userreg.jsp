<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookNest.com</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" 
          rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <title></title>
    <style>
      body, html {
          height: 100%;
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
      }
      
      /* Background image */
      .bg-image {
          /* The image used */
          background-image: url('images/hotel3.jpg');

          /* Full height */
          height: 100%; 

          /* Center and scale the image nicely */
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;
      }

      .container {
          max-width: 600px;
          margin: 50px auto;
          background-color: white;
          padding: 30px;
          border-radius: 8px;
          box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
          position: relative;
          z-index: 2;
          opacity: 0.9;
      }

      label { 
          margin-left: 20px; 
      }

      #datepicker {
          width: 180px;
      }

      #datepicker > span:hover {
          cursor: pointer;
      }

      * {
          text-decoration: none;
      }

      .navbar {
          background: blue;
          font-family: calibri;
          padding-right: 15px;
          padding-left: 15px;
      }

      .navdiv {
          display: flex;
          align-items: center;
          justify-content: space-between;
      }

      .logo a {
          font-size: 35px;
          font-weight: 600;
          color: black;
      }

      li {
          list-style: none;
          display: inline-block;
      }

      li a {
          color: black;
          font-size: 18px;
          font-weight: bold;
          margin-right: 25px;
      }

      button {
          background-color: black;
          margin-left: 10px;
          border-radius: 10px;
          padding: 10px;
          width: 90px;
      }

      button a {
          color: white;
          font-weight: bold;
          font-size: 15px;
      }
    </style>
</head>

<body>

<div class="bg-image">
    <nav class="navbar">
        <div class="navdiv">
            <div class="logo"><a href="#">BOOKNEST</a></div>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/about">About</a></li>
                <li><a href="/contact">Contact</a></li>

                <button><a href="/main">SignUp</a></button>
                <button><a href="/login">Login</a></button>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2>User Registration</h2>
        <form action="/saveUser" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">LastName</label>
                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="LastName">
                </div>
            </div>

            <div>
                <label>Select Date: </label>
                <div id="datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
                    <input class="form-control" type="text" readonly />
                    <span class="input-group-addon">
                        <i class="glyphicon glyphicon-calendar"></i>
                    </span>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="pass" name="pass" placeholder="Password">
                </div>
            </div>

            <div class="form-group">
                <label for="phno">Phone Number</label>
                <input type="tel" class="form-control" id="phno" name="phno" placeholder="Phone">
            </div>

            <div class="form-group">
                <div class="row">
                    <legend class="col-form-label col-sm-2 pt-0">Select Gender</legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="Male" checked>
                            <label class="form-check-label" for="gridRadios1">Male</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="Female">
                            <label class="form-check-label" for="gridRadios2">Female</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="Other">
                            <label class="form-check-label" for="gridRadios3">Other</label>
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script>
    $(function () {
        $("#datepicker").datepicker({ 
            autoclose: true, 
            todayHighlight: true,
        }).datepicker('update', new Date());
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</body>
</html>
