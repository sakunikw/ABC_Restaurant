<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Order Details - ABC Restaurant</title>
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
    .order-details {
        margin-bottom: 20px;
    }
    .order-details h3 {
        margin-bottom: 10px;
        font-size: 18px;
    }
    .order-details table {
        width: 100%;
        border-collapse: collapse;
    }
    .order-details table, th, td {
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
        <h2>Order Details</h2>
        <!-- Example Order Details -->
        <div class="order-details">
            <h3>Order #12345</h3>
            <table>
                <tr>
                    <th>Customer Name</th>
                    <td>John Doe</td>
                </tr>
                <tr>
                    <th>Order Date</th>
                    <td>2024-08-19</td>
                </tr>
                <tr>
                    <th>Total Amount</th>
                    <td>$55.00</td>
                </tr>
                <tr>
                    <th>Status</th>
                    <td>Pending</td>
                </tr>
            </table>

            <h3>Items Ordered</h3>
            <table>
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Example Item Row -->
                    <tr>
                        <td>Cheeseburger</td>
                        <td>2</td>
                        <td>$10.00</td>
                        <td>$20.00</td>
                    </tr>
                    <tr>
                        <td>Fries</td>
                        <td>1</td>
                        <td>$5.00</td>
                        <td>$5.00</td>
                    </tr>
                    <!-- Add more item rows as needed -->
                </tbody>
            </table>
        </div>

        <a href="manage_orders.jsp" class="btn">Back to Orders</a>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

</body>
</html>
