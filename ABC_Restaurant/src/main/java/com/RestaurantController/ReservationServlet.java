package com.RestaurantController;

import com.Restaurant.Model.Reservation;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database URL, username, and password
    private static final String DB_URL = "jdbc:mysql://localhost:3306/abc_restaurant";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Soc735@#";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Extract reservation details from the request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        int guests = Integer.parseInt(request.getParameter("guests"));
        // Note: We are not using specialRequests in this case since it's not in your table schema

        // Create a Reservation object
        Reservation reservation = new Reservation(name, email, phone, date, time, guests, null);

        // Save reservation to the database
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "INSERT INTO reservations (name, email, phone, reservation_date, reservation_time, num_guests) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, reservation.getName());
                stmt.setString(2, reservation.getEmail());
                stmt.setString(3, reservation.getPhone());
                stmt.setDate(4, java.sql.Date.valueOf(reservation.getDate())); // Convert LocalDate to SQL Date
                stmt.setTime(5, java.sql.Time.valueOf(reservation.getTime())); // Convert LocalTime to SQL Time
                stmt.setInt(6, reservation.getGuests());
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors
            response.sendRedirect("Reserror.jsp");
            return;
        }

        // Redirect to a success page
        response.sendRedirect("ResSuccess.jsp");
    }
}
