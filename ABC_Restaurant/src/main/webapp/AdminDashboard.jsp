<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - ABC Restaurant</title>
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
    .dashboard-card {
        background-color: #333;
        color: #fff;
        border-radius: 8px;
        padding: 20px;
        margin-bottom: 20px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .dashboard-card h3 {
        margin-top: 0;
    }
    .card-content {
        font-size: 18px;
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
        <a href="reports.jsp" class="nav-link">Reports</a>
        <a href="settings.jsp" class="nav-link">Settings</a>
        <a href="logout.jsp" class="nav-link">Logout</a>
    </div>

    <div class="main-content">
        <h2>Welcome, Admin!</h2>
        <div class="dashboard-card">
            <h3>Overview</h3>
            <div class="card-content">
                <p>Here's a quick overview of the current status:</p>
                <!-- Add summary or quick stats here -->
            </div>
        </div>
        <div class="dashboard-card">
            <h3>Recent Reservations</h3>
            <div class="card-content">
                <p>View the latest reservations and their details.</p>
                <!-- Add reservation details here -->
            </div>
        </div>
        <div class="dashboard-card">
            <h3>System Alerts</h3>
            <div class="card-content">
                <p>Check for any system alerts or important notifications.</p>
                <!-- Add alert details here -->
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

</body>
</html>
