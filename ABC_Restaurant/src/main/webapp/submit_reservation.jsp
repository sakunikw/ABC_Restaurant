<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Submission</title>
    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f0f0;
            color: #444;
            text-align: center;
            padding: 50px;
        }

        h1 {
            color: #27ae60;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
        }

        a {
            display: inline-block;
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #27ae60;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #2ecc71;
        }
    </style>
</head>
<body>
    <h1>Reservation Submission</h1>
    <p>
        <%
            String success = request.getParameter("success");
            if ("true".equals(success)) {
        %>
            Your reservation has been successfully submitted. We will contact you soon to confirm.
        <%
            } else {
        %>
            Sorry, there was an issue with your reservation. Please try again later.
        <%
            }
        %>
    </p>
    <a href="Reservation.jsp">Back to Reservation</a>
</body>
</html>
