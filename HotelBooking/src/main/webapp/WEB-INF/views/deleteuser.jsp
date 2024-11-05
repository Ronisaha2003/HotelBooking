<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.hotel.model.hotel" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>
    <style>
        body, html {
            font-family: Arial, sans-serif;
            padding: 0;
            background-image: url('images/hotel3.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            background-repeat: no-repeat;
            height: 100%;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            margin: 50px auto;
            max-width: 600px;
            border-radius: 10px;
        }
        h2 {
            text-align: center;
        }
        .user-details {
            margin-bottom: 20px;
        }
        button {
            padding: 10px 15px;
            margin: 5px;
            cursor: pointer;
            background-color: #1E90FF;
            color: white;
            border: none;
            border-radius: 5px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete User Confirmation</h2>
        <%
            Long userId = Long.valueOf(request.getParameter("id")); // Get user ID from request
            hotel user = (hotel) request.getAttribute("user"); // Get user object from request
            
            if (user == null) {
                out.println("<h3>User not found.</h3>");
            } else {
        %>
        <div class="user-details">
            <p><strong>ID:</strong> <%= user.getId() %></p>
            <p><strong>Name:</strong> <%= user.getName() %></p>
            <p><strong>Last Name:</strong> <%= user.getLastname() %></p>
            <p><strong>Email:</strong> <%= user.getEmail() %></p>
            <p><strong>Phone Number:</strong> <%= user.getPhno() %></p>
        </div>
        <p>Are you sure you want to delete this user?</p>
        <form action="/userlist/delete/<%= user.getId() %>" method="post">
            <button type="submit">Yes, Delete User</button>
            <a href="/userlist" style="text-decoration: none;">
                <button type="button">Cancel</button>
            </a>
        </form>
        <%
            } // End of user check
        %>
    </div>
</body>
</html>

