
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%!
    private String escapeHtml(String value) {
        if (value == null) return "";
        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#39;");
    }
%>
<%
    String customerName = request.getParameter("customerName");
    String phone = request.getParameter("phone");
    String food = request.getParameter("food");

    int quantity = 1;
    int price = 0;
    boolean valid = true;

    try {
        quantity = Integer.parseInt(request.getParameter("quantity"));

        if (quantity < 1 || quantity > 20) {
            valid = false;
        }
    } catch (Exception e) {
        valid = false;
    }

    if ("Burger".equals(food)) {
        price = 120;
    } else if ("Margherita Pizza".equals(food)) {
        price = 250;
    } else if ("Veg Pizza".equals(food)) {
        price = 200;
    } else if ("Sandwich".equals(food)) {
        price = 100;
    } else {
        valid = false;
    }

    if (customerName == null || customerName.trim().isEmpty()
        || phone == null || !phone.matches("[0-9]{10}")) {
        valid = false;
    }

    int total = price * quantity;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foodie - Billing</title>

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
        }

        header h2 {
            color: #ff9f43;
        }

        .bill-container {
            max-width: 550px;
            margin: 50px auto;
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

        .bill-row {
            display: flex;
            justify-content: space-between;
            padding: 15px 0;
            border-bottom: 1px solid #eee;
        }

        .total {
            color: #d35400;
            font-size: 23px;
            font-weight: bold;
            margin-top: 15px;
        }

        button {
            width: 100%;
            padding: 14px;
            margin-top: 25px;
            background: #ff9f43;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .error {
            color: red;
            text-align: center;
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
    <h2>Foodie Restaurant</h2>
</header>

<div class="bill-container">

<% if (valid) { %>

    <h1>Order Bill</h1>

    <div class="bill-row">
        <span>Customer Name</span>
        <strong><%= escapeHtml(customerName) %></strong>
    </div>

    <div class="bill-row">
        <span>Phone Number</span>
        <strong><%= escapeHtml(phone) %></strong>
    </div>

    <div class="bill-row">
        <span>Food Item</span>
        <strong><%= escapeHtml(food) %></strong>
    </div>

    <div class="bill-row">
        <span>Price</span>
        <strong>&#8377;<%= price %></strong>
    </div>

    <div class="bill-row">
        <span>Quantity</span>
        <strong><%= quantity %></strong>
    </div>

    <div class="bill-row total">
        <span>Total Amount</span>
        <span>&#8377;<%= total %></span>
    </div>

    <form action="confirmation.jsp" method="get">
        <input type="hidden" name="customerName"
               value="<%= escapeHtml(customerName) %>">
        <input type="hidden" name="food"
               value="<%= escapeHtml(food) %>">
        <input type="hidden" name="quantity"
               value="<%= quantity %>">
        <input type="hidden" name="total"
               value="<%= total %>">

        <button type="submit">Confirm Order</button>
    </form>

<% } else { %>

    <h1>Invalid Order</h1>
    <p class="error">Please go back and enter valid order details.</p>

    <a href="order.jsp">Return to Order Page</a>

<% } %>

</div>

<footer>
    <p>© 2026 Foodie Restaurant | All Rights Reserved</p>
</footer>

</body>
</html>
