<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Order</title>
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
                 background: url('images/gallery3.jpg') no-repeat center center fixed;
            background-size: cover;
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

        /* Order Page Specific Styles */
        .order-section {
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

        .order-section:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .order-section h2 {
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
        }

        .order-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .order-form {
            width: 100%;
            max-width: 600px;
            margin: 20px 0;
        }

        .order-form input[type="text"],
        .order-form input[type="email"],
        .order-form input[type="number"],
        .order-form select,
        .order-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .order-form button {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 12px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .order-form button:hover {
            background-color: #2ecc71;
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
             <li><a href="Cart.jsp">MyCart</a></li>
            <li class="dropdown">
                <a href="#">Services</a>
                <div class="dropdown-content">
                    <a href="Order.jsp">Order</a>
                    <a href="SignIn.jsp">Reservation</a>
                    <a href="delivery.jsp">Delivery</a>
                    <a href="OtherServices.jsp">Other</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="#">More</a>
                <div class="dropdown-content">
                    <a href="Gallery.jsp">Gallery</a>
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

    <section class="order-section">
        <h2>Place Your Order</h2>
        <div class="order-content">
            
           <form class="order-form" id="orderForm" action="NewOrder" method="post">



            
    <input type="text" name="name" id="name" placeholder="Your Name" required>
    <input type="email" name="email" id="email" placeholder="Your Email" required>
    <input type="text" name="phone" id="phone" placeholder="Your Phone Number" required>
    <select name="foodItem" id="foodItem" required>
        <option value="" disabled selected>Select a Dish</option>
        <option value="dish1">Dish 1</option>
        <option value="dish2">Dish 2</option>
        <option value="dish3">Dish 3</option>
        <!-- Add more dishes as needed -->
    </select>
    <textarea name="address" id="address" rows="5" placeholder="Delivery Address" required></textarea>
    <input type="number" name="quantity" id="quantity" placeholder="Quantity" required min="1">
    <button type="submit">Submit Order</button>
</form>

        </div>
    </section>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

    <script>
        function addToCart() {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const foodItem = document.getElementById('foodItem').value;
            const address = document.getElementById('address').value;
            const quantity = document.getElementById('quantity').value;

            if (name && email && phone && foodItem && address && quantity) {
                const cartItem = {
                    name,
                    email,
                    phone,
                    foodItem,
                    address,
                    quantity
                };

                let cart = JSON.parse(localStorage.getItem('cart')) || [];
                cart.push(cartItem);
                localStorage.setItem('cart', JSON.stringify(cart));
                alert('Item added to cart!');
            } else {
                alert('Please fill in all fields.');
            }
        }
    </script>

</body>

</html>
