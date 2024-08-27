<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Menu - ABC Restaurant</title>
<style>
    html, body {
        height: 100%;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        display: flex;
        flex-direction: column;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f5f5f5; /* Light gray */
    }
    .container {
        display: flex;
        flex: 1;
        min-height: 100vh;
    }
    .sidebar {
        width: 250px;
        background-color: #333; /* Dark gray */
        color: #fff;
        padding: 20px;
        box-shadow: 2px 0 4px rgba(0,0,0,0.2);
        display: flex;
        flex-direction: column;
    }
    .sidebar h2 {
        color: #fff;
        font-size: 20px;
        margin-bottom: 20px;
    }
    .sidebar .nav-link {
        display: block;
        color: #ddd; /* Light gray */
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 4px;
        margin-bottom: 12px;
        transition: background-color 0.3s, color 0.3s;
    }
    .sidebar .nav-link:hover {
        background-color: #444; /* Slightly lighter gray */
        color: #fff;
    }
    .main-content {
        flex: 1;
        padding: 20px;
        background-color: #fff; /* White */
        margin-left: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .header, .footer {
        background-color: #111; /* Black */
        color: #fff;
        padding: 15px 0;
        text-align: center;
    }
    .footer {
        margin-top: auto;
    }
    h1, h2 {
        margin: 0;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #333; /* Dark gray */
        color: #fff;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2; /* Light gray */
    }
    .btn {
        display: inline-block;
        padding: 6px 12px;
        margin: 2px;
        border: none;
        border-radius: 4px;
        color: #fff;
        background-color: #333; /* Dark gray */
        text-decoration: none;
        text-align: center;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .btn:hover {
        background-color: #444; /* Slightly lighter gray */
    }
    .add-item-btn {
        background-color: #4CAF50; /* Green */
        margin-bottom: 20px;
    }
    .add-item-btn:hover {
        background-color: #45a049; /* Darker green */
    }
</style>
</head>
<body>

<div class="header">
    <h1>ABC Restaurant Admin Dashboard</h1>
</div>

<div class="container">
    <div class="sidebar">
        <h2>Admin Menu</h2>
        <a href="AdminDashboard.jsp" class="nav-link">Dashboard</a>
        <a href="AdminManageUsers.jsp" class="nav-link">Manage Users</a>
         <a href="AdminManageOrders.jsp" class="nav-link">Manage orders</a>
        <a href="AdminManageMenu.jsp" class="nav-link">Manage Menus</a>
         <a href="AdminManageMessege.jsp" class="nav-link">Manage Messages</a>
        <a href="AdminManageReservation.jsp" class="nav-link">View Reservations</a>
        <a href="AdminReports.jsp" class="nav-link">Reports</a>
        <a href="AdminSettings.jsp" class="nav-link">Settings</a>
        <a href="logout.jsp" class="nav-link">Logout</a>
    </div>

    <div class="main-content">
        <h2>Manage Menu</h2>
        <a href="AdminAddMenu.jsp" class="btn add-item-btn">Add New Item</a>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Category</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Connection conn = null;
                    PreparedStatement stmt = null;
                    ResultSet rs = null;
                    try {
                        // Establish connection to the database
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_restaurant", "root", "Soc735@#");

                        // Retrieve menu items from the database
                        String sql = "SELECT * FROM menu";
                        stmt = conn.prepareStatement(sql);
                        rs = stmt.executeQuery();

                        // Display menu items in the table
                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            String description = rs.getString("description");
                            double price = rs.getDouble("price");
                            String category = rs.getString("category");

                            out.println("<tr>");
                            out.println("<td>" + id + "</td>");
                            out.println("<td>" + name + "</td>");
                            out.println("<td>" + description + "</td>");
                            out.println("<td>" + price + "</td>");
                            out.println("<td>" + category + "</td>");
                            out.println("<td class='action-buttons'>");
                            out.println("<form action='EditMenuServlet' method='post' style='display:inline;'>");
                            out.println("<input type='hidden' name='id' value='" + id + "'>");
                            out.println("<button type='submit' class='btn'>Edit</button>");
                            out.println("</form>");
                            out.println("<form action='DeleteMenuServlet' method='post' style='display:inline;'>");
                            out.println("<input type='hidden' name='id' value='" + id + "'>");
                            out.println("<button type='submit' class='btn'>Delete</button>");
                            out.println("</form>");
                            out.println("</td>");
                            out.println("</tr>");
                        }

                    } catch (SQLException e) {
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
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

</body>
</html>
