<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Sign In</title>
    <link rel="stylesheet" href="signIn.css">
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2>Sign In</h2>
            <form action="process_signin.jsp" method="post">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>

                <button type="submit">Sign In</button> <a href="Reservation.jsp"></a></p>
                <p>Don't have an account? <a href="SignUpPage.jsp">Sign up here</a></p>
            </form>
        </div>
    </div>
</body>
</html>
