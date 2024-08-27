<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Home</title>
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

         h2,h3, h4, h5, h6 {
            font-family: 'Merriweather', serif;
            color: #222;
        }
        h1{
        font-family: 'Merriweather', serif;
            color: white;
        }

        p {
            margin-bottom: 1em;
        }

        /* Navigation Styles */
        nav {
            background-color: #433d44;
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

        /* Header Styles */
        header {
            background: url('images/gallery1.jpg') no-repeat center center/cover;
            color: white;
            padding: 100px 0;
            text-align: center;
            position: relative;
        }

        header .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        header .content {
            position: relative;
            z-index: 2;
        }

        header .logo img {
            max-width: 150px;
            margin-bottom: 20px;
        }

        header h1 {
            font-size: 3em;
            margin: 0;
        }

        header p {
            font-size: 1.2em;
            margin: 20px 0 0;
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
        }

        .section img {
            max-width: 100%;
            height: auto;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Promo Section */
        .promo-section {
            background-color: #e67e22;
            color: white;
            text-align: center;
            padding: 40px 20px;
            border-radius: 10px;
            margin-top: 20px;
            position: relative;
            overflow: hidden;
        }

        .promo-section::before {
            content: "";
            position: absolute;
            top: -50px;
            left: -50px;
            width: 150%;
            height: 150%;
            background: rgba(0, 0, 0, 0.1);
            transform: rotate(-45deg);
            z-index: 1;
        }

        .promo-section * {
            position: relative;
            z-index: 2;
        }

        .promo-section h3 {
            margin-bottom: 20px;
            font-size: 1.5em;
        }

        .promo-section button {
            background-color: #d35400;
            color: white;
            border: none;
            padding: 15px 30px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .promo-section button:hover {
            background-color: #e74c3c;
        }

        /* Query Section */
        .query-section form {
          background-color: #e74c3c;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .query-section label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .query-section input[type="text"],
        .query-section input[type="email"],
        .query-section textarea {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 1em;
            width: 100%;
        }

        .query-section button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        .query-section button:hover {
            background-color: #2980b9;
        }

        /* Featured Dish Section */
        .featured-dish {
         background-color : #ccb8b3;
            text-align: center;
        }

        .featured-dish p {
            font-size: 1.2em;
            margin: 20px 0;
        }

        .featured-dish button {
            background-color: #8e44ad;
            color: white;
            border: none;
            padding: 15px 30px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .featured-dish button:hover {
            background-color: #9b59b6;
        }

        /* Customer Reviews Section */
        .customer-reviews .review {
            background-color: #ecdec9;
            padding: 20px;
            margin: 20px 0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .customer-reviews .review h4 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .customer-reviews .review p {
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        .customer-reviews .review .rating {
            color: #e67e22;
            font-size: 1.2em;
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
        
        /* Sign In Button Styles */
    .signin-btn {
        background-color: #27ae60;
        color: white;
        border: none;
        padding: 10px 20px;
        margin-left: 20px;
        cursor: pointer;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s;
        text-align: center;
        align-self: center;
    }

    .signin-btn:hover {
        background-color: #2ecc71;
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
    <form id="search-form" action="/SearchServiceServlet" method="GET">
        <input type="text" id="search-input" name="query" placeholder="Search...">
        <button type="submit" id="search-button">Search</button>
    </form>
</div>


    <!-- Added Sign In Button -->
    <a href="SignIn.jsp" class="signin-btn">Sign In</a>
</nav>

         
   

    <header>
        <div class="overlay"></div>
        <div class="content">
            
            <h1>Welcome to ABC Restaurant</h1>
            <p>Experience the best dining in the city</p>
        </div>
    </header>

    <section class="section promo-section">
        <h2>Book your table easily!!!</h2>
        <p>Get 20% off on your first booking</p>
        <a href="SignIn.jsp">
    <button>Make a Reservation</button>
</a>

   

    </section>

  

    <section class="section featured-dish">
    <h2>Featured Dish</h2>
    <img src="images/pasta.jpg" alt="Featured Dish">
    <p>Delicious pasta with fresh ingredients</p>
    <!-- Wrap the button inside the anchor tag -->
    <a id="btn" href="Menu.jsp">
        <button id="btn">Check menu</button>
    </a>
</section>


    <section class="section customer-reviews">
        <h2>What Our Customers Say</h2>
        <div class="review">
            <h4>John </h4>
            <p>"The food was absolutely wonderful!"</p>
            <div class="rating">★★★★★</div>
        </div>
        <div class="review">
            <h4>Smith</h4>
            <p>"Best dining experience I've ever had."</p>
            <div class="rating">★★★★★</div>
        </div>
    </section>

    <footer>
        <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

</body>

<script>
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('search-button').addEventListener('click', function() {
        var query = document.getElementById('search-input').value.trim();
        if (query) {
            performSearch(query);
        }
    });

    document.getElementById('search-input').addEventListener('keypress', function(e) {
        if (e.key === 'Enter') {
            document.getElementById('search-button').click();
        }
    });

    function performSearch(query) {
        fetch(`/search?query=${encodeURIComponent(query)}`)
            .then(response => response.json())
            .then(data => {
                displayResults(data);
            })
            .catch(error => console.error('Error:', error));
    }

    function displayResults(data) {
        const resultsContainer = document.getElementById('search-results');
        resultsContainer.innerHTML = '';

        if (data.length === 0) {
            resultsContainer.innerHTML = '<p>No results found.</p>';
        } else {
            data.forEach(item => {
                const resultElement = document.createElement('div');
                resultElement.classList.add('search-result-item');
                resultElement.innerHTML = `
                    <h3>${item.name}</h3>
                    <p>${item.description}</p>
                `;
                resultsContainer.appendChild(resultElement);
            });
        }
    }
});
</script>


</html>
