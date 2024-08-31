package com.Restaurant.Service;



import com.ABC_Restaurant.dao.ReservationDao;
import com.Restaurant.Model.Reservation;

import java.util.List;

public class ResService {
    private ReservationDao reservationDao;

    // Constructor to initialize ReservationDao
    public ResService() {
        this.reservationDao = new ReservationDao();
    }

    // Setter for ReservationDao (used in tests)
    public void setReservationDao(ReservationDao reservationDao) {
        this.reservationDao = reservationDao;
    }

    // Method to handle making a reservation
    public boolean makeReservation(Reservation reservation) {
        try {
            reservationDao.addReservation(reservation);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

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
