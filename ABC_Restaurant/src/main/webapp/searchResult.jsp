<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>
    <ul>
        <c:forEach var="service" items="${services}">
            <li>${service}</li>
        </c:forEach>
    </ul>
    <a href="Home.jsp">Back to Home</a>
</body>
</html>
