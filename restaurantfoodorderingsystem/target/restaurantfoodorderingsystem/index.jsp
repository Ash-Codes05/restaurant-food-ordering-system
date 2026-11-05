
<!DOCTYPE html>
<html>
<head>
    <title>Foodie - Restaurant</title>
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
            background-color: #fffaf3;
            color: #333;
        }

        header {
            background-color: #252525;
            color: white;
            padding: 20px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h2 {
            color: #ff9f43;
            font-size: 28px;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
        }

        .hero {
            min-height: 420px;
            background: linear-gradient(90deg, #2b211c, #8b4328);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 40px 20px;
        }

        .hero h1 {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 25px;
        }

        .hero a {
            background-color: #ff9f43;
            color: #222;
            padding: 13px 28px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .about {
            text-align: center;
            padding: 55px 20px;
        }

        .about h2 {
            color: #d35400;
            margin-bottom: 15px;
        }

        footer {
            background-color: #252525;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
    <link rel="stylesheet" href="css/style.css">
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

    <section class="hero">
        <h1>Delicious Food, Delivered Fresh!</h1>

        <p>Enjoy tasty meals prepared with love.</p>

        <a href="menu.jsp">Explore Our Menu</a>
    </section>

    <section class="about">
        <h2>Welcome to Foodie Restaurant</h2>

        <p>
            We serve delicious and fresh food at affordable prices.
            Order your favourite meals easily through our website.
        </p>
    </section>

    <footer>
        <p>© 2026 Foodie Restaurant | All Rights Reserved</p>
    </footer>

</body>
</html>

