<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>BOOKNEST.com</title>
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
    z-index: 2; /* Keeps it above the background */
    opacity: 0.9; /* Slight transparency for the background effect */
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
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2>User Login</h2>
        <h3>${msg}</h3>
        <form action="/userlogin" method="POST">
            <label>Email:</label>
            <input type="email" placeholder="User Email" class="form-control mb-4 col-4" name="email" required>

            <label>Password:</label>
            <input type="password" placeholder="User Password" class="form-control mb-4 col-4" name="pass" required>

            <input type="submit" value="Login">
            <input type="reset" value="Clear">
        </form>
    </div>
</div>
</body>
</html>
