<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Settings - ABC Restaurant</title>
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
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }
    .form-group input[type="text"], .form-group input[type="email"], .form-group input[type="number"], .form-group textarea {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }
    .form-group textarea {
        resize: vertical;
    }
    .form-group button {
        background-color: #333; /* Dark gray */
        color: #fff;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .form-group button:hover {
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
        <h2>Settings</h2>
        <form action="update_settings.jsp" method="post">
            <div class="form-group">
                <label for="restaurantName">Restaurant Name</label>
                <input type="text" id="restaurantName" name="restaurantName" value="ABC Restaurant" required>
            </div>
            <div class="form-group">
                <label for="contactEmail">Contact Email</label>
                <input type="email" id="contactEmail" name="contactEmail" value="info@abcrestaurant.com" required>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number</label>
                <input type="text" id="phoneNumber" name="phoneNumber" value="(123) 456-7890" required>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" rows="3" required>123 Restaurant St, Food City, FC 12345</textarea>
            </div>
            <div class="form-group">
                <label for="openingHours">Opening Hours</label>
                <input type="text" id="openingHours" name="openingHours" value="Mon-Sun: 10:00 AM - 10:00 PM" required>
            </div>
            <div class="form-group">
                <button type="submit">Save Changes</button>
            </div>
        </form>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
</div>

</body>
</html>
