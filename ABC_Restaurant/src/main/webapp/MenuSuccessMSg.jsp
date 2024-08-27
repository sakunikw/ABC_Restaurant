<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Item Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .message-container h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .message-container p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .message-container a {
            text-decoration: none;
            color: #fff;
            background-color: #333;
            padding: 10px 20px;
            border-radius: 4px;
        }

        .message-container a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Success!</h1>
        <p>The menu item has been successfully added.</p>
        <a href="AdminManageMenu.jsp">Back to admin menu manage</a>
    </div>
</body>
</html>
