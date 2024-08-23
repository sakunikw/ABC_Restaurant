package com.ABC_Restaurant.dao;

import com.Restaurant.Model.Reservation;
import com.ABC_Restaurant.dao.DBConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationDao {
    public boolean saveReservation(Reservation reservation) {
        String sql = "INSERT INTO reservations (name, email, phone, date, time, guests, special_requests) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, reservation.getName());
            stmt.setString(2, reservation.getEmail());
            stmt.setString(3, reservation.getPhone());
            stmt.setString(4, reservation.getDate());
            stmt.setString(5, reservation.getTime());
            stmt.setInt(6, reservation.getGuests());
            stmt.setString(7, reservation.getSpecialRequests());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
