package com.ABC_Restaurant.dao;

import com.Restaurant.Model.Reservation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationDao {
    public void saveReservation(Reservation reservation) throws SQLException {
        Connection connection = DBConnector.getConnection();
        String query = "INSERT INTO reservations (name, email, phone, date, time, guests, special_requests) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1, reservation.getName());
        preparedStatement.setString(2, reservation.getEmail());
        preparedStatement.setString(3, reservation.getPhone());
        preparedStatement.setString(4, reservation.getDate());
        preparedStatement.setString(5, reservation.getTime());
        preparedStatement.setInt(6, reservation.getGuests());
        preparedStatement.setString(7, reservation.getSpecialRequests());
        preparedStatement.executeUpdate();
        DBConnector.closeConnection(connection);
    }
}
