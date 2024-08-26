package com.Restaurant.Service;

import java.util.List;

import com.ABC_Restaurant.dao.ReservationDao;
import com.Restaurant.Model.Reservation;

public class ReservationService {
    private ReservationDao reservationDao;

    // Constructor to initialize ReservationDao
    public ReservationService() {
        this.reservationDao = new ReservationDao();
    }

    // Method to handle making a reservation
    public boolean makeReservation(Reservation reservation) {
        try {
            // Attempt to save the reservation
            reservationDao.addReservation(reservation);
            return true;
        } catch (Exception e) {
            // Log the exception and handle it appropriately
            e.printStackTrace();
            return false;
        }
    }

    // Additional methods to handle other business logic

    // Method to confirm a reservation
    public boolean confirmReservation(int reservationId) {
        try {
            reservationDao.confirmReservation(reservationId);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to delete a reservation
    public boolean deleteReservation(int reservationId) {
        try {
            reservationDao.deleteReservation(reservationId);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // Method to retrieve all reservations
    public List<Reservation> getAllReservations() {
        return reservationDao.getAllReservations();
    }

    // Method to get a reservation by ID
    public Reservation getReservationById(int reservationId) {
        return reservationDao.getReservationById(reservationId);
    }
}
