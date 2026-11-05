
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Foodie - Food Menu</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #fffaf3;
            color: #333;
        }

        header {
            background: #252525;
            color: white;
            padding: 20px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h2 {
            color: #ff9f43;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }

        h1 {
            text-align: center;
            color: #d35400;
            margin: 35px 0 10px;
        }

        .subtitle {
            text-align: center;
            margin-bottom: 30px;
        }

        .menu-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
            padding: 20px 8%;
        }

        .food-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 3px 12px #ddd;
            text-align: center;
            padding-bottom: 20px;
        }

        .food-card img {
            width: 100%;
            height: 170px;
            object-fit: cover;
        }

        .food-card h3 {
            margin: 15px 0 8px;
        }

        .food-card p {
            color: #666;
            margin: 8px;
        }

        .price {
            color: #d35400;
            font-size: 20px;
            font-weight: bold;
        }

        .order-btn {
            display: inline-block;
            background: #ff9f43;
            color: #222;
            text-decoration: none;
            padding: 10px 22px;
            border-radius: 5px;
            margin-top: 12px;
        }

        footer {
            background: #252525;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 30px;
        }
    </style>
</head>

<body>

<header>
    <h2>Foodie</h2>
    <nav>
        <a href="index.jsp">Home</a>
        <a href="menu.jsp">Menu</a>
        <a href="order.jsp">Order</a>
    </nav>
</header>

<h1>Our Delicious Menu</h1>
<p class="subtitle">Choose your favourite food!</p>

<div class="menu-container">

    <div class="food-card">
        <img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600" alt="Burger">
        <h3>Cheese Burger</h3>
        <p>Fresh burger with cheese and vegetables.</p>
        <div class="price">&#8377;120.00</div>
        <a href="order.jsp" class="order-btn">Order Now</a>
    </div>

    <div class="food-card">
        <img src="https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600" alt="Pizza">
        <h3>Margherita Pizza</h3>
        <p>Delicious pizza with cheese and toppings.</p>
        <div class="price">&#8377;250.00</div>
        <a href="order.jsp" class="order-btn">Order Now</a>
    </div>

    <div class="food-card">
        <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600" alt="Pizza">
        <h3>Veg Pizza</h3>
        <p>Fresh vegetables with tasty cheese.</p>
        <div class="price">&#8377;200.00</div>
        <a href="order.jsp" class="order-btn">Order Now</a>
    </div>

    <div class="food-card">
        <img src="https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=600" alt="Grilled Food">
        <h3>Grilled Sandwich</h3>
        <p>Hot and crispy vegetable sandwich.</p>
        <div class="price">&#8377;100.00</div>
        <a href="order.jsp" class="order-btn">Order Now</a>
    </div>

</div>

<footer>
    <p>© 2026 Foodie Restaurant | All Rights Reserved</p>
</footer>

</body>
</html>
