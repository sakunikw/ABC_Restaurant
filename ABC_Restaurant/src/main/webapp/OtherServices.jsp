<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Other Services</title>
    <style>
        /* Reset Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* General Styles */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f0f0;
            color: #444;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: 'Merriweather', serif;
            color: #222;
        }

        p {
            margin-bottom: 1em;
        }

        /* Navigation Styles */
        nav {
            background-color: #34495e;
            padding: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: sticky;
            top: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav ul {
            list-style: none;
            display: flex;
            align-items: center;
        }

        nav ul li {
            margin: 0 20px;
            position: relative;
        }

        nav ul li a {
            color: #ecf0f1;
            font-weight: bold;
            font-size: 16px;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #e67e22;
        }

        nav ul li::after {
            content: "";
            display: block;
            width: 0;
            height: 2px;
            background: #e67e22;
            transition: width 0.3s;
            margin-top: 5px;
            margin-left: auto;
            margin-right: auto;
        }

        nav ul li:hover::after {
            width: 50%;
        }

        /* Dropdown Menu */
        .dropdown {
            position: relative;
        }

        .dropdown > a::after {
            content: ' ▼';
            font-size: 12px;
            color: #ecf0f1;
            margin-left: 5px;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #34495e;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 12px 16px;
            z-index: 1000;
            border-radius: 5px;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown-content a {
            color: #ecf0f1;
            padding: 10px 20px;
            display: block;
            text-align: left;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #e67e22;
            border-radius: 5px;
        }

        /* Search Bar in Navigation */
        .nav-search {
            display: flex;
            align-items: center;
        }

        .nav-search input[type="text"] {
            padding: 7px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 250px;
            font-size: 14px;
            margin-right: 10px;
        }

        .nav-search button {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 8px 15px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .nav-search button:hover {
            background-color: #2ecc71;
        }

        /* Section Styles */
        .section {
            background-color: #fff;
            padding: 60px 20px;
            margin: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .section:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .section h2 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #34495e;
        }

        .section p {
            font-size: 1.1em;
            color: #555;
            line-height: 1.6;
        }

        /* Other Services Section */
        .services-info {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .services-info h3 {
            font-size: 1.5em;
            color: #34495e;
            margin-bottom: 15px;
        }

        .services-info ul {
            list-style: none;
            padding: 0;
            margin: 20px 0;
        }

        .services-info ul li {
            font-size: 1.1em;
            margin-bottom: 10px;
            color: #555;
        }

        .services-info ul li::before {
            content: '✔';
            color: #27ae60;
            margin-right: 10px;
        }

        /* Image Styles */
        .service-image {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin: 20px 0;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .service-image:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Footer Styles */
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 30px 20px;
            margin-top: 40px;
            border-radius: 0 0 10px 10px;
        }

        footer p {
            margin: 10px 0;
            font-size: 0.9em;
        }

        footer a {
            color: #e67e22;
            transition: color 0.3s;
        }

        footer a:hover {
            color: #f39c12;
        }
    </style>
</head>

<body>

    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="Menu.jsp">Menu</a></li>
            <li><a href="About.jsp">About Us</a></li>
            <li class="dropdown">
                <a href="#">Services</a>
                <div class="dropdown-content">
                    <a href="Order.jsp">Order</a>
                    <a href="Reservation.jsp">Reservation</a>
                    <a href="Delivery.jsp">Delivery</a>
                    <a href="OtherServices.jsp">Other</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="#">More</a>
                <div class="dropdown-content">
                    <a href="#">Gallery</a>
                    <a href="#">Events</a>
                    <a href="Contact.jsp">Contact</a>
                </div>
            </li>
        </ul>
        <div class="nav-search">
            <input type="text" placeholder="Search...">
            <button>Search</button>
        </div>
    </nav>

    <!-- Other Services Section -->
    <section class="section services-info">
        <h2>Other Services</h2>
        <h3>Explore Our Additional Services</h3>
        <p>At ABC Restaurant, we offer a variety of additional services to make your dining experience even better. Check out our special offerings and how we can cater to your needs.</p>

        <div class="service">
            <img src="images/event_catering.jpg" alt="Event Catering" class="service-image">
            <h3>Event Catering</h3>
            <p>Let us take care of your next event with our exceptional catering services. From intimate gatherings to large celebrations, we provide delicious food and excellent service.</p>
        </div>

        <div class="service">
            <img src="images/corporate-events.jpg" alt="Corporate Events" class="service-image">
            <h3>Corporate Events</h3>
            <p>Organize your corporate events with us and enjoy a seamless dining experience. We offer customized menus and services to suit your business needs.</p>
        </div>

        <div class="service">
            <img src="images/special-occasions.jpg" alt="Special Occasions" class="service-image">
            <h3>Special Occasions</h3>
            <p>Celebrate birthdays, anniversaries, and other special occasions at ABC Restaurant. We can help make your celebration memorable with our unique dining experiences.</p>
        </div>

        <div class="service">
            <img src="images/private-dining.jpg" alt="Private Dining" class="service-image">
            <h3>Private Dining</h3>
            <p>Enjoy a private dining experience with your loved ones in a dedicated space. Perfect for family gatherings or intimate dinners.</p>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

</body>

</html>
