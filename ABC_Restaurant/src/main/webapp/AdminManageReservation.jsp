<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Manage Reservations</title>
    <style>
        /* Add styles similar to your previous pages for consistency */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f0f0;
            color: #444;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #34495e;
            color: #ecf0f1;
            padding: 20px;
            text-align: center;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #34495e;
            color: #ecf0f1;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .action-buttons {
            display: flex;
            gap: 10px;
        }

        .action-buttons form {
            display: inline;
        }

        .btn {
            background-color: #27ae60;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            text-align: center;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #2ecc71;
        }

        .btn-danger {
            background-color: #c0392b;
        }

        .btn-danger:hover {
            background-color: #e74c3c;
        }

        .btn-success {
            background-color: #3498db;
        }

        .btn-success:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <h1>Admin - View Orders</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Date</th>
                <th>TIME</th>
                <th>NUM of GUESTS</th>
             
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    // Establish connection to the database
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_restaurant", "root", "Soc735@#");

                    // Retrieve orders from the database
                    String sql = "SELECT * FROM reservationsnew";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);

                    // Display orders in the table
                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String email = rs.getString("email");
                        String phone = rs.getString("phone");
                        String date = rs.getString("reservation_date");
                        String time = rs.getString("reservation_time");
                        int num_guests = rs.getInt("num_guests");
                        

                        out.println("<tr>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + name + "</td>");
                        out.println("<td>" + email + "</td>");
                        out.println("<td>" + phone + "</td>");
                        out.println("<td>" + date + "</td>");
                        out.println("<td>" + time + "</td>");
                        out.println("<td>" + num_guests + "</td>");
                        
                        out.println("<td class='action-buttons'>");
                        out.println("<form action='ConfirmOrderServlet' method='post'>");
                        out.println("<input type='hidden' name='id' value='" + id + "'>");
                        out.println("<button type='submit' class='btn btn-success'>Confirm</button>");
                        out.println("</form>");
                        out.println("<form action='DeleteOrderServlet' method='post'>");
                        out.println("<input type='hidden' name='id' value='" + id + "'>");
                        out.println("<button type='submit' class='btn btn-danger'>Delete</button>");
                        out.println("</form>");
                        out.println("</td>");
                        out.println("</tr>");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    // Close resources
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </tbody>
    </table>

</body>
</html>
