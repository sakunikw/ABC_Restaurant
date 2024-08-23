<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Manage Reservations</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .actions a {
            text-decoration: none;
            color: #fff;
            padding: 6px 12px;
            border-radius: 4px;
            background-color: #333;
            transition: background-color 0.3s;
            margin-right: 10px;
        }
        .actions a:hover {
            background-color: #444;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Manage Reservations</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Date</th>
            <th>Time</th>
            <th>Guests</th>
            <th>Special Requests</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RestaurantDB", "root", "Soc735@#");
                Statement statement = connection.createStatement();
                String sql = "SELECT * FROM reservations";
                ResultSet resultSet = statement.executeQuery(sql);

                while (resultSet.next()) {
                    out.println("<tr>");
                    out.println("<td>" + resultSet.getInt("id") + "</td>");
                    out.println("<td>" + resultSet.getString("name") + "</td>");
                    out.println("<td>" + resultSet.getString("email") + "</td>");
                    out.println("<td>" + resultSet.getString("phone") + "</td>");
                    out.println("<td>" + resultSet.getDate("date") + "</td>");
                    out.println("<td>" + resultSet.getTime("time") + "</td>");
                    out.println("<td>" + resultSet.getInt("guests") + "</td>");
                    out.println("<td>" + resultSet.getString("special_requests") + "</td>");
                    out.println("<td>" + resultSet.getString("status") + "</td>");
                    out.println("<td class='actions'>");
                    out.println("<a href='confirmReservation?id=" + resultSet.getInt("id") + "'>Confirm</a>");
                    out.println("<a href='cancelReservation?id=" + resultSet.getInt("id") + "'>Cancel</a>");
                    out.println("</td>");
                    out.println("</tr>");
                }

                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</div>

</body>
</html>
