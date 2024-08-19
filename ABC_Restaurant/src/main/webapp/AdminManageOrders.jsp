<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Orders - ABC Restaurant</title>
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
    .order-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    .order-table, th, td {
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
    .view-details-btn {
        background-color: #007bff; /* Blue */
    }
    .view-details-btn:hover {
        background-color: #0056b3; /* Darker blue */
    }
    .update-status-btn {
        background-color: #28a745; /* Green */
    }
    .update-status-btn:hover {
        background-color: #218838; /* Darker green */
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
        <a href="admin_dashboard.jsp" class="nav-link">Dashboard</a>
        <a href="manage_users.jsp" class="nav-link">Manage Users</a>
        <a href="manage_menus.jsp" class="nav-link">Manage Menus</a>
        <a href="view_reservations.jsp" class="nav-link">View Reservations</a>
        <a href="manage_orders.jsp" class="nav-link">Manage Orders</a>
        <a href="reports.jsp" class="nav-link">Reports</a>
        <a href="settings.jsp" class="nav-link">Settings</a>
        <a href="logout.jsp" class="nav-link">Logout</a>
    </div>

    <div class="main-content">
        <h2>Manage Orders</h2>
        <table class="order-table">
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Order Date</th>
                    <th>Total Amount</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example Order Row -->
                <tr>
                    <td>12345</td>
                    <td>John Doe</td>
                    <td>2024-08-19</td>
                    <td>$55.00</td>
                    <td>Pending</td>
                    <td>
                        <a href="view_order_details.jsp?id=12345" class="btn view-details-btn">View Details</a>
                        <a href="update_order_status.jsp?id=12345" class="btn update-status-btn">Update Status</a>
                    </td>
                </tr>
                <!-- Add more order rows as needed -->
            </tbody>
        </table>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

</body>
</html>
