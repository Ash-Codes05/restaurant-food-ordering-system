
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String customerName = request.getParameter("customerName");
    String food = request.getParameter("food");

    int quantity = 0;
    int total = 0;
    boolean valid = true;

    try {
        quantity = Integer.parseInt(request.getParameter("quantity"));
        total = Integer.parseInt(request.getParameter("total"));

        if (quantity < 1 || quantity > 20 || total < 0) {
            valid = false;
        }
    } catch (Exception e) {
        valid = false;
    }

    if (customerName == null || customerName.trim().isEmpty()
        || food == null || food.trim().isEmpty()) {
        valid = false;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foodie - Order Confirmation</title>

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

        .confirmation {
            max-width: 550px;
            margin: 100px auto;
            padding: 40px;
            background: white;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 3px 15px #ddd;
        }

        .check {
            font-size: 65px;
            color: #27ae60;
            margin-bottom: 20px;
        }

        h1 {
            color: #d35400;
            margin-bottom: 15px;
        }

        p {
            margin: 12px 0;
            font-size: 17px;
        }

        .home-btn {
            display: inline-block;
            background: #ff9f43;
            color: #222;
            padding: 13px 25px;
            margin-top: 25px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .error {
            color: red;
        }
    </style>
</head>

<body>

<div class="confirmation">

<% if (valid) { %>

    <div class="check">&#10004;</div>

    <h1>Order Confirmed!</h1>

    <p>Thank you, <strong><%= customerName.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;") %></strong>!</p>

    <p>Your order has been placed successfully.</p>

    <p>Food Item: <strong><%= food.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;") %></strong></p>

    <p>Quantity: <strong><%= quantity %></strong></p>

    <p>Total Amount: <strong>&#8377;<%= total %></strong></p>

    <a href="index.jsp" class="home-btn">Back to Home</a>

<% } else { %>

    <h1>Invalid Confirmation</h1>
    <p class="error">Please place a valid order first.</p>
    <a href="order.jsp" class="home-btn">Place Order</a>

<% } %>

</div>

</body>
</html>
