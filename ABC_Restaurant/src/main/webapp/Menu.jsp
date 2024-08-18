
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Menu</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="mobile.css">

</head>
<body>
    
    <input type="checkbox" id="mobile-menu-toggle">
    <label for="mobile-menu-toggle" id="mobile-icon">&#9776;</label>
    <nav>
        <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="#">Menu</a></li>
           
            <li><a href="#">About Us</a></li>
            <li class="dropdown">
                <a href="#">Services</a>
                <div class="dropdown-content">
                    <a href="#">Order</a>
                    <a href="Reservation.jsp">Reservation</a>
                    <a href="#">Delivery</a>
                    <a href="#">Other</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="#">More</a>
                <div class="dropdown-content">
                    <a href="#">Gallery</a>
                    <a href="#">Events</a>
                    <a href="#">Contact</a>
                </div>
            </li>
        </ul>
        <div class="nav-search">
            <input type="text" placeholder="Search...">
            <button>Search</button>
        </div>
    </nav>
    <header>
        <h1>ABC Restaurant - Menu </h1>
    </header>
   
    

    <div class="menu-container">
        <div class="menu-container">
            <div class="food-item">
                <img src="menuIMG/ukrainian-dill-potatoes.jpg" alt="Burger">
                <div class="details">
                    <h3>Ukrainian Potatoes</h3>
                    <p>A comforting delight in Ukrainian cuisine, often enjoyed as crispy "Deruny" potato. </p>
                    <div class="details-sub">
                        <span class="price">$20</span>
                        <a href="order.html"> <button>Order</button> </a>
                        
                    </div>
                </div>
            </div>

        <<div class="food-item">
            <img src="menuIMG/bread &eggs.jpg" alt="Burger">
            <div class="details">
                <h3>Bread &eggs</h3>
                <p>Savor our classic pairing: artisanal bread and farm-fresh eggs, a breakfast masterpiece.</p>
                <div class="details-sub">
                    <span class="price">$15</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/eclair.jpg" alt="Burger">
            <div class="details">
                <h3>Eclair</h3>
                <p> Elegant pastry filled with velvety cream, a sweet indulgence for delightful moments.</p>
                <div class="details-sub">
                    <span class="price">$8</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/fried-rice.jpg" alt="Burger">
            <div class="details">
                <h3>Fried-rice</h3>
                <p>Stir-fried perfection, a symphony of flavors with fresh veggies and savory spices.</p>
                <div class="details-sub">
                    <span class="price">$13</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/Healthy bowl.jpg" alt="Burger">
            <div class="details">
                <h3>Healthy bowl</h3>
                <p> Wholesome goodness in a bowl, a vibrant medley of nutritious ingredients.</p>
                <div class="details-sub">
                    <span class="price">$9</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/kimchi-fried.jpg" alt="Burger">
            <div class="details">
                <h3>Kimchi-fried</h3>
                <p> A zesty twist to fried rice, blending the bold flavors of kimchi for a unique experience.</p>
                <div class="details-sub">
                    <span class="price">$11</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/pancakes with honey&berries copy.jpg" alt="Pancakes">
            <div class="details">
                <h3>Pancakes with honey </h3>
                <p> Fluffy pancakes drizzled with golden honey, a sweet start or delightful dessert.</p>
                <div class="details-sub">
                    <span class="price">$9</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/pasta.jpg" alt="Burger">
            <div class="details">
                <h3>Pasta</h3>
                <p>: Al dente pasta, bathed in rich, flavorful sauces, a classic Italian indulgence.</p>
                <div class="details-sub">
                    <span class="price">$20</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/roasted chicken.jpg" alt="Burger">
            <div class="details">
                <h3>Roasted chicken</h3>
                <p>Juicy, succulent chicken, perfectly roasted for an exquisite dining experience.</p>
                <div class="details-sub">
                    <span class="price">$15</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/salmon dish.jpg" alt="Burger">
            <div class="details">
                <h3>Salmon dish</h3>
                <p> Grilled or baked salmon, a delectable choice for seafood enthusiasts, rich in omega-3.</p>
                <div class="details-sub">
                    <span class="price">$15</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/Thai chicken soup.jpg" alt="Burger">
            <div class="details">
                <h3>Thai chicken soup</h3>
                <p>A comforting bowl of aromatic Thai spices and tender chicken, a soul-soothing delight.</p>
                <div class="details-sub">
                    <span class="price">$9</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/yellow rice.jpg" alt="Burger">
            <div class="details">
                <h3>Yellow rice</h3>
                <p> Fragrant, turmeric-infused rice, a vibrant accompaniment to elevate your meal.</p>
                <div class="details-sub">
                    <span class="price">$12</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/vege salad.jpg" alt="Burger">
            <div class="details">
                <h3>Vege salad</h3>
                <p> Crisp, fresh veggies harmonize in a colorful, healthy salad, a burst of flavors.</p>
                <div class="details-sub">
                    <span class="price">$5</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/special breakfast dish.jpg" alt="Burger">
            <div class="details">
                <h3>Special breakfast dish</h3>
                <p> A chef's delight, a breakfast masterpiece crafted with love and unique flavors.</p>
                <div class="details-sub">
                    <span class="price">$8</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/strawberry-dessert.jpg" alt="Burger">
            <div class="details">
                <h3>Strawberry-dessert</h3>
                <p> Luscious strawberry sweetness, a delightful finale to your dining experience.</p>
                <div class="details-sub">
                    <span class="price">$5</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/meatballs.jpg" alt="Burger">
            <div class="details">
                <h3>Meatballs</h3>
                <p>Savory spheres of perfection, a hearty and satisfying choice for meat lovers.</p>
                <div class="details-sub">
                    <span class="price">$10</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <<div class="food-item">
            <img src="menuIMG/bread &eggs.jpg" alt="Burger">
            <div class="details">
                <h3>Bread &eggs</h3>
                <p>Savor our classic pairing: artisanal bread and farm-fresh eggs, a breakfast masterpiece.</p>
                <div class="details-sub">
                    <span class="price">$15</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>
        <div class="food-item">
            <img src="menuIMG/eclair.jpg" alt="Burger">
            <div class="details">
                <h3>Eclair</h3>
                <p> Elegant pastry filled with velvety cream, a sweet indulgence for delightful moments.</p>
                <div class="details-sub">
                    <span class="price">$8</span>
                    <a href="order.html"> <button>Order</button> </a>
                </div>
            </div>
        </div>


    </div>
    

    
</body>



<style>
    h1{
        color: black;
    }
    body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
}

header {
    background-color: #333;
    color: rgb(11, 0, 0);
    text-align: center;
    padding: 15px;
}

.menu-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    margin: 20px;
}

.food-item {
    position: relative;
    overflow: hidden;
    width: 300px;
    height: 400px;
    background-color: #fff;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    margin: 20px;
    transition: transform 0.3s ease-in-out;
}

.food-item:hover {
    transform: scale(1.05);
}

.food-item img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 15px 15px 0 0;
}

.details {
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 0 0 15px 15px;
}

.details h3 {
    margin: 0 0 10px;
    font-size: 1.5em;
    color: #333;
}

.details p {
    color: #555;
}

.details-sub {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.price {
    color: #27ae60;
    font-weight: bold;
    font-size: 1.2em;
}

button {
    padding: 10px 15px;
    background-color: #27ae60;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #218c53;
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

    
</style>
</html>
