<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_restaurant", "root", "Soc735@#");

        // Check if admin
        String adminQuery = "SELECT * FROM admins WHERE username = ? AND password = ?";
        ps = conn.prepareStatement(adminQuery);
        ps.setString(1, email);
        ps.setString(2, password);
        rs = ps.executeQuery();

        if (rs.next()) {
            // Redirect to admin dashboard
            response.sendRedirect("AdminDashboard.jsp");
        } else {
            // Check if regular user
            String userQuery = "SELECT * FROM users WHERE email = ? AND password = ?";
            ps = conn.prepareStatement(userQuery);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                // Redirect to restaurant public page
                response.sendRedirect("Reservation.jsp");
            } else {
                out.println("Invalid email or password. Please try again.");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
