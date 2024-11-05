<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hotel.model.ImageHotel" %>
<!DOCTYPE html>

<html>
<head>
    <title>Hotel List</title>
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body,html {
            margin: 0;
             height:100%;
            background-repeat: no-repeat;
          
            padding: 0;
            background-image: url('images/hotel3.jpg'); /* Background image */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background */
            color: white; /* Text color */
            font-family: Arial, sans-serif; /* Font family */
        }

        .container {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background for contrast */
            padding: 20px;
            margin: 50px auto; /* Center the container */
            max-width: 800px; /* Set maximum width for readability */
            border-radius: 10px; /* Rounded corners */
        }

        h2 {
            text-align: center; /* Center the title */
        }

        table {
            width: 100%; /* Full width */
            border-collapse: collapse; /* Merge table borders */
            margin: 20px 0; /* Margin for spacing */
        }

        th, td {
            padding: 12px; /* Padding for cells */
            text-align: left; /* Align text to the left */
        }

        th {
            background-color: rgba(255, 255, 255, 0.3); /* Slightly transparent header */
        }

        tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.2); /* Light gray for even rows */
        }

        a {
            color: #1E90FF; /* Link color */
            text-decoration: none; /* Remove underline from links */
        }

        a:hover {
            text-decoration: underline; /* Underline links on hover */
        }
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
           
        }

        .overlay-text h1 {
            font-size: 4rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
    </style>
    
</head>

<body>
     <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="#">BOOKNEST</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/base">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>
                </ul>
            </div>
        </nav>

    <div class="container">
   
        <h2>Hotel List</h2>
        <table border="1" class="table table-striped table-bordered text-center">
            <tr>
                <th>Hotel Name</th>
                <th>Location</th>
                <th>Amount</th>
                <th>Actions</th>
            </tr>
            <%
                // Retrieve the list of hotels from the request scope
                List<ImageHotel> hotels = (List<ImageHotel>) request.getAttribute("hotels"); 

                if (hotels != null && !hotels.isEmpty()) { // Check if the list is not null or empty
                    for (ImageHotel hotel : hotels) {
            %>
            <tr>
                <td><%= hotel.getHotelName() %></td>
                <td><%= hotel.getHotelLocation() %></td>
                <td><%= hotel.getAmount() %></td>
                <td>
                    <a href="/hotellist/edit/<%= hotel.getId() %>">Edit</a> | 
                    <a href="/hotellist/delete/<%= hotel.getId() %>" onclick="return confirm('Are you sure you want to delete this hotel?');">Delete</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="4">No hotels found.</td> <!-- Display message if no hotels exist -->
            </tr>
            <%
                }
            %>
        </table>
        <a href="/hotellist/add">Add New Hotel</a> <!-- Link to create a new hotel -->
    </div>
</body>
</html>
