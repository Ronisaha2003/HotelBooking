<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Hotel</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Ensure the background image covers the full viewport */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
          
            background-size: cover;
        }

        /* Semi-transparent container for form */
        .bg-color {
            background-color: rgba(0, 0, 0, 0.5); /* Adjust transparency as needed */
            color: white;
            padding: 20px;
            margin: 50px auto;
            max-width: 600px; /* Adjust width for better readability */
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #ffffff;
        }

        input[type="text"], input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #1E90FF;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            color: #1E90FF;
            text-decoration: none;
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body style="background: url('<%= request.getContextPath() %>/images/hotel3.jpg')">
 
    <div class="bg-color">
        <h2>Add New Hotel</h2>
        <form action="/hotellist/add" method="post">
            Hotel Name: <input type="text" name="hotelName" required><br>
            Location: <input type="text" name="hotelLocation" required><br>
            Amount: <input type="number" step="1" name="amount" required><br>
            <input type="submit" value="Submit">
        </form>
        <a href="/hotellist">Back to List</a>
    </div>
</body>
</html>

