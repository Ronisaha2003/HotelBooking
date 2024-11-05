<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.hotel.model.ImageHotel" %>
<!DOCTYPE html>


<html>
<head>
    <title>Delete Hotel</title>
     <style>
        body, html {
            margin: 0;
            height: 100%;
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

        p {
            text-align: center; /* Center text */
        }

        a {
            display: block; /* Block display for links */
            text-align: center; /* Center links */
            margin-top: 20px;
            color: #1E90FF; /* Link color */
            text-decoration: none; /* Remove underline from links */
        }

        a:hover {
            text-decoration: underline; /* Underline links on hover */
        }
    </style>
</head>
<body style="background: url('<%= request.getContextPath() %>/images/hotel3.jpg')">
<div class="container">
<h2>Delete Hotel</h2>
<%
    ImageHotel imageHotel = (ImageHotel) request.getAttribute("imageHotel");
    if (imageHotel != null) {
%>
    <p>Are you sure you want to delete the following hotel?</p>
    <ul>
        <li>Hotel Name: <%= imageHotel.getHotelName() %></li>
        <li>Location: <%= imageHotel.getHotelLocation() %></li>
        <li>Amount: <%= imageHotel.getAmount() %></li>
    </ul>
    <form action="/hotellist/delete/<%= imageHotel.getId() %>" method="post">
        <input type="submit" value="Yes, Delete">
    </form>
    <a href="/hotellist">Cancel</a>

<%
    } else {
%>
    <p>Hotel not found.</p>
    <a href="/hotellist">Back to List</a>
<%
    }
%>
    </div>
</body>
</html>
