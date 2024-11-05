<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Booknest.com</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        /* Full-screen background image */
        body, html {
            height: 100%;
            margin: 0;
        }

        .bg-image {
            /* Background image */
         
            /* Full height */
            height: 100%;
            /* Center and scale the image */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        

        /* Custom styling for navbar */
        .navbar {
            background-color: rgba(0, 0, 0, 0.8); /* Dark background with opacity */
        }

        .navbar-nav .nav-link {
            color: white !important; /* White navbar links */
        }

        .dropdown-menu {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent dropdown background */
        }
         .overlay-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: white;
        }

        .overlay-text h1 {
            font-size: 2rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
    </style>
</head>
<body>
    <!-- Background image container -->
    <div class="bg-image">
        <!-- Navbar with Bootstrap -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="#">BOOKNEST</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
               <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Admin
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/admin">Sign up</a>
                            <a class="dropdown-item" href="/log">Login</a>
                            <div class="dropdown-divider"></div>
                            
                        </div>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/main">SignUp</a>
                    </li>
                    
                    
                   
                </ul>
            </div>
        </nav>
          <div class="overlay-text">
            <h1>WELCOME TO BOOKNEST</h1>
        </div>
       
         <img src="images/hotel2.jpg" alt="Snow"  width="100%" height="100%">
           
        <!-- Page content goes here -->
       
    </div>
  

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>