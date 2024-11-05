<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hotel.model.Booking" %> <!-- Ensure this import is correct -->

<!DOCTYPE html>
<html>
<head>
    <title>User Booking List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
           
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background */
            color: white; /* Text color */
            background-repeat: no-repeat;
            height: 100vh; /* Full height of the viewport */
            margin: 0; /* Remove default margin */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: grey;
        }
        h2 {
            text-align: center;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent background for contrast */
            padding: 20px;
            margin: 50px auto; /* Center the container */
            max-width: 800px; /* Set maximum width for readability */
            border-radius: 10px; /* Rounded corners */
        }
    </style>
</head>
<body  style="background: url('<%= request.getContextPath() %>/images/hotel3.jpg')">
<div class="container">
    <h2>User Booking List</h2>
    <table>
        <tr>
            <th>Booking ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Amount</th>
            <th>Status</th>
        </tr>
        <%
            List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");

            if (bookings != null && !bookings.isEmpty()) {
                for (Booking booking : bookings) {
        %>
        <tr>
            <td><%= booking.getBookingId() %></td>
            <td><%= booking.getName() %></td>
            <td><%= booking.getEmail() %></td>
            <td><%= booking.getPhno() %></td>
            <td><%= booking.getAmount() %></td>
            <td><%= booking.getBookingStatus() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No bookings found.</td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
