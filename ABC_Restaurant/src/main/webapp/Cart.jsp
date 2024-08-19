<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Cart</title>
    <style>
        /* Include your existing styles here */
        /* Add your CSS code from the previous message */
    </style>
</head>

<body>

    <nav>
        <!-- Navigation content as before -->
    </nav>

    <section class="order-section">
        <h2>Your Cart</h2>
        <div class="order-content" id="cartContent">
            <p>No items in cart.</p>
        </div>
    </section>

    <footer>
        <!-- Footer content as before -->
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const cart = JSON.parse(localStorage.getItem('cart')) || [];
            const cartContent = document.getElementById('cartContent');
            
            if (cart.length === 0) {
                cartContent.innerHTML = '<p>No items in cart.</p>';
                return;
            }

            let cartHtml = '<table><thead><tr><th>Name</th><th>Email</th><th>Phone</th><th>Food Item</th><th>Address</th><th>Quantity</th></tr></thead><tbody>';
            cart.forEach(item => {
                cartHtml += `<tr>
                    <td>${item.name}</td>
                    <td>${item.email}</td>
                    <td>${item.phone}</td>
                    <td>${item.foodItem}</td>
                    <td>${item.address}</td>
                    <td>${item.quantity}</td>
                </tr>`;
            });
            cartHtml += '</tbody></table>';

            cartContent.innerHTML = cartHtml;
        });
    </script>

</body>

</html>
