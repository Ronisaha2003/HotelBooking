<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ page import="com.hotel.model.ImageHotel" %>
<html>
<head>
    <title>Edit Hotel</title>
    <style>
        body, html {
            margin: 0;
            height: 100%;
            background-repeat: no-repeat;
            padding: 0;           
            background-size: cover;
            background-position: center;
            color: white;
            font-family: Arial, sans-serif;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            margin: 50px auto;
            max-width: 800px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: rgba(255, 255, 255, 0.3);
        }

        tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.2);
        }

        a {
            color: #1E90FF;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
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
    </style>
</head>
<body style="background: url('<%= request.getContextPath() %>/images/hotel3.jpg')">
  <div class="container">
    <h2>Edit Hotel</h2>
    <%
        ImageHotel imageHotel = (ImageHotel) request.getAttribute("imageHotel");
        if (imageHotel == null) {
            out.println("<h3>Hotel not found.</h3>");
        } else {
    %>
    <form action="/hotellist/edit/<%= imageHotel.getId() %>" method="post">
        Hotel Name: <input type="text" name="hotelName" value="<%= imageHotel.getHotelName() %>" required><br>
        Location: <input type="text" name="hotelLocation" value="<%= imageHotel.getHotelLocation() %>" required><br>
        Amount: <input type="number" step="0.01" name="amount" value="<%= imageHotel.getAmount() %>" required><br>
        <input type="submit" value="Update">
    </form>
    <a href="/hotellist">Back to List</a>
    <%
        }
    %>
  </div>
</body>
</html>
