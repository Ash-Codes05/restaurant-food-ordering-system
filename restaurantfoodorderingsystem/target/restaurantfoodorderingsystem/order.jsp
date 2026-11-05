
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foodie - Place Your Order</title>

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

        .order-container {
            max-width: 550px;
            margin: 40px auto;
            background: white;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 3px 15px #ddd;
        }

        h1 {
            text-align: center;
            color: #d35400;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin: 15px 0 8px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 14px;
            margin-top: 25px;
            background: #ff9f43;
            color: #222;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #e67e22;
            color: white;
        }

        footer {
            background: #252525;
            color: white;
            text-align: center;
            padding: 20px;
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

<div class="order-container">

    <h1>Place Your Order</h1>

    <form action="billing.jsp" method="get">

        <label>Customer Name</label>
        <input type="text" name="customerName"
               placeholder="Enter your name" required>

        <label>Phone Number</label>
        <input type="tel" name="phone"
               placeholder="Enter your phone number"
               pattern="[0-9]{10}" required>

        <label>Select Food Item</label>
        <select name="food" required>
            <option value="">-- Choose Food --</option>
            <option value="Burger">Cheese Burger - ₹120</option>
            <option value="Margherita Pizza">Margherita Pizza - ₹250</option>
            <option value="Veg Pizza">Veg Pizza - ₹200</option>
            <option value="Sandwich">Grilled Sandwich - ₹100</option>
        </select>

        <label>Quantity</label>
        <input type="number" name="quantity"
               min="1" max="20" value="1" required>

        <button type="submit">Proceed to Billing</button>

    </form>

</div>

<footer>
    <p>© 2026 Foodie Restaurant | All Rights Reserved</p>
</footer>

</body>
</html>

