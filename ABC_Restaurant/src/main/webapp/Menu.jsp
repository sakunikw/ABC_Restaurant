<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Menu</title>
    <style>
        /* Include the same styles as in Home.jsp */

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

        /* Menu Page Specific Styles */
        .menu-section {
            background-color: #fff;
            padding: 60px 20px;
            margin: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s;
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
        }

        .menu-section:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .menu-section h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
        }

        .menu-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #ccc;
        }

        .menu-item:last-child {
            border-bottom: none;
        }

        .menu-item h3 {
            font-size: 1.5em;
            color: #e67e22;
        }

        .menu-item p {
            font-size: 1em;
            color: #555;
        }

        .menu-item .price {
            font-size: 1.2em;
            color: #27ae60;
            font-weight: bold;
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

    <nav>
        <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="Menu.jsp">Menu</a></li>
            
            <li><a href="AboutUs.jsp">About Us</a></li>
            <li class="dropdown">
                <a href="#">Services</a>
                <div class="dropdown-content">
                    <a href="Order.jsp">Order</a>
                    <a href="Reservation.jsp">Reservation</a>
                    <a href="delivery.jsp">Delivery</a>
                    <a href="OtherServices.JSP">Other</a>
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

    <section class="menu-section">
        <h2>Our Menu</h2>
        
        <div class="menu-item">
            <div>
                <h3>Grilled Chicken Salad</h3>
                <p>Fresh greens topped with grilled chicken, served with a light vinaigrette.</p>
            </div>
            <div class="price">$12.99</div>
        </div>

        <div class="menu-item">
            <div>
                <h3>Spaghetti Carbonara</h3>
                <p>Classic Italian pasta with creamy sauce, pancetta, and parmesan cheese.</p>
            </div>
            <div class="price">$14.99</div>
        </div>

        <div class="menu-item">
            <div>
                <h3>Margherita Pizza</h3>
                <p>Traditional pizza with fresh tomatoes, mozzarella cheese, and basil.</p>
            </div>
            <div class="price">$10.99</div>
        </div>

        <div class="menu-item">
            <div>
                <h3>Beef Burger</h3>
                <p>Juicy beef patty with lettuce, tomato, cheese, and special sauce.</p>
            </div>
            <div class="price">$11.99</div>
        </div>

        <div class="menu-item">
            <div>
                <h3>Chocolate Lava Cake</h3>
                <p>Rich chocolate cake with a gooey center, served with vanilla ice cream.</p>
            </div>
            <div class="price">$7.99</div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
        <p><a href="Contact.jsp">Contact Us</a> | <a href="Privacy.jsp">Privacy Policy</a></p>
    </footer>

</body>

</html>
