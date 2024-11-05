<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="com.hotel.model.hotel" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
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
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            margin: 50px auto;
            max-width: 800px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>User List</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>User Name</th>
            <th>User Last Name</th>
            <th>User Email</th>
            <th>User Phone Number</th>
            <th>Actions</th>
        </tr>
        <%
            List<hotel> users = (List<hotel>) request.getAttribute("users");

            if (users != null && !users.isEmpty()) {
                for (hotel user : users) {
        %>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getName() %></td>
            <td><%= user.getLastname() %></td>
            <td><%= user.getEmail() %></td>
            <td><%= user.getPhno() %></td>
            <td>
               
                <form action="/userlist/delete/<%= user.getId() %>" method="post" style="display:inline;">
                    <input type="submit" value="Delete" onclick="return confirm('Are you sure you want to delete this user?');">
                </form>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No users found.</td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
