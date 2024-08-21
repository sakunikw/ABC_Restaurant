<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Reservations - ABC Restaurant</title>
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
        <a href="AdminUserManage.jsp" class="nav-link">Manage Users</a>
        <a href="AdminManageMenu.jsp" class="nav-link">Manage Menus</a>
        <a href="AdminManageReservation.jsp" class="nav-link">View Reservations</a>
        <a href="AdminReports.jsp" class="nav-link">Reports</a>
        <a href="AdminSettings.jsp" class="nav-link">Settings</a>
        <a href="logout.jsp" class="nav-link">Logout</a>
    </div>

    <div class="main-content">
        <h2>Manage Reservations</h2>
        <table>
            <thead>
                <tr>
                    <th>Reservation ID</th>
                    <th>Customer Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Table</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example Reservation Row -->
                <tr>
                    <td>1</td>
                    <td>Jane Smith</td>
                    <td>2024-08-20</td>
                    <td>19:00</td>
                    <td>Table 5</td>
                    <td>Confirmed</td>
                    <td>
                        <a href="view_reservation_details.jsp?id=1" class="btn">View</a>
                        <a href="cancel_reservation.jsp?id=1" class="btn">Cancel</a>
                    </td>
                </tr>
                <!-- Add more reservation rows as needed -->
            </tbody>
        </table>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

</body>
</html>
