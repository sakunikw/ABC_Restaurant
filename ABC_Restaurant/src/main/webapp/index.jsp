<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Home</title>
    <style>
        /* Reset some default styles */
        body, h1, h2, h3, p, ul {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }
        body {
            line-height: 1.6;
            color: #333;
            background-color: #f4f4f4;
        }
        /* Navigation Bar */
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 8px 15px;
        }
        .navbar a:hover {
            background-color: #575757;
            border-radius: 4px;
        }
        /* Hero Section */
        .hero {
            background-image: url('images/hero-bg.jpg');
            background-size: cover;
            background-position: center;
            height: 500px;
            color: white;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .hero h1 {
            font-size: 50px;
            margin-bottom: 10px;
        }
        .hero p {
            font-size: 20px;
            margin-bottom: 20px;
        }
        .hero .btn {
            background-color: #ff5733;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
        }
        .hero .btn:hover {
            background-color: #c70039;
        }
        /* Overview Section */
        .overview {
            padding: 50px 20px;
            background-color: #fff;
            text-align: center;
        }
        .overview h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        .overview p {
            font-size: 18px;
            margin-bottom: 20px;
            line-height: 1.8;
        }
        /* Services Section */
        .services {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 50px 20px;
            background-color: #f8f8f8;
        }
        .service-item {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .service-item img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .service-item h3 {
            font-size: 24px;
            margin-top: 15px;
            margin-bottom: 10px;
        }
        .service-item p {
            font-size: 16px;
            line-height: 1.6;
        }
        /* Footer */
        .footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <a href="home.jsp" class="navbar-brand">ABC Restaurant</a>
        <div>
            <a href="menu.jsp">Menu</a>
            <a href="reservation.jsp">Reservation</a>
            <a href="query.jsp">Contact Us</a>
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero">
        <h1>Welcome to ABC Restaurant</h1>
        <p>Your gateway to a delightful culinary experience</p>
        <a href="menu.jsp" class="btn">Explore Our Menu</a>
    </header>

    <!-- Overview Section -->
    <section class="overview">
        <h2>About Us</h2>
        <p>ABC Restaurant is a renowned chain offering the best in local and international cuisine. With multiple locations across Sri Lanka, we bring you a dining experience like no other.</p>
        <p>Our restaurants are equipped with modern facilities and a cozy atmosphere, perfect for family dinners, business meetings, or a quick lunch.</p>
    </section>

    <!-- Services Section -->
    <section class="services">
        <div class="service-item">
            <img src="images/dine-in.jpg" alt="Dine-In Service">
            <h3>Dine-In</h3>
            <p>Enjoy our exquisite dishes in a warm and welcoming environment. Book your table today!</p>
        </div>
        <div class="service-item">
            <img src="images/delivery.jpg" alt="Delivery Service">
            <h3>Delivery</h3>
            <p>Get your favorite meals delivered right to your doorstep, hot and fresh.</p>
        </div>
        <div class="service-item">
            <img src="images/catering.jpg" alt="Catering Service">
            <h3>Catering</h3>
            <p>We offer top-notch catering services for events of any size, with customized menus.</p>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
    </footer>
</body>
</html>
