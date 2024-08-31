package com.ABC_Restaurant.dao;

import com.Restaurant.Model.Reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReservationDao {

    // Method to add a new reservation
    public void addReservation(Reservation reservation) {
        String sql = "INSERT INTO ReservationsNew (name, email, phone, reservation_date, reservation_time, num_guests, special_requests, confirmed) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, reservation.getName());
            stmt.setString(2, reservation.getEmail());
            stmt.setString(3, reservation.getPhone());
            stmt.setDate(4, reservation.getReservationDate());
            stmt.setTime(5, reservation.getReservationTime());
            stmt.setInt(6, reservation.getNumGuests());
            stmt.setString(7, reservation.getSpecialRequests());
            stmt.setInt(8, reservation.getConfirmed());

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to get all reservations
    public List<Reservation> getAllReservations() {
        List<Reservation> reservations = new ArrayList<>();
        String sql = "SELECT * FROM ReservationsNew";

        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Reservation reservation = new Reservation();
                reservation.setId(rs.getInt("id"));
                reservation.setName(rs.getString("name"));
                reservation.setEmail(rs.getString("email"));
                reservation.setPhone(rs.getString("phone"));
                reservation.setReservationDate(rs.getDate("reservation_date"));
                reservation.setReservationTime(rs.getTime("reservation_time"));
                reservation.setNumGuests(rs.getInt("num_guests"));
                reservation.setSpecialRequests(rs.getString("special_requests"));
                reservation.setConfirmed(rs.getInt("confirmed"));

                reservations.add(reservation);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return reservations;
    }

    // Method to confirm a reservation
    public void confirmReservation(int id) {
        String sql = "UPDATE ReservationsNew SET confirmed = 1 WHERE id = ?";

        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete a reservation
    public void deleteReservation(int id) {
        String sql = "DELETE FROM ReservationsNew WHERE id = ?";

        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to get a reservation by ID
    public Reservation getReservationById(int id) {
        String sql = "SELECT * FROM ReservationsNew WHERE id = ?";
        Reservation reservation = null;

        try (Connection conn = DBConnector.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    reservation = new Reservation();
                    reservation.setId(rs.getInt("id"));
                    reservation.setName(rs.getString("name"));
                    reservation.setEmail(rs.getString("email"));
                    reservation.setPhone(rs.getString("phone"));
                    reservation.setReservationDate(rs.getDate("reservation_date"));
                    reservation.setReservationTime(rs.getTime("reservation_time"));
                    reservation.setNumGuests(rs.getInt("num_guests"));
                    reservation.setSpecialRequests(rs.getString("special_requests"));
                    reservation.setConfirmed(rs.getInt("confirmed"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return reservation;
    }

	public boolean saveReservation(Reservation reservation) {
		// TODO Auto-generated method stub
		return false;
	}
}
