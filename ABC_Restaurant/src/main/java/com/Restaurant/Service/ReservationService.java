package com.Restaurant.Service;

import com.ABC_Restaurant.dao.ReservationDao;
import com.Restaurant.Model.Reservation;

public class ReservationService {
    private ReservationDao reservationDao;

    // Constructor to initialize ReservationDao
    public ReservationService() {
        this.reservationDao = new ReservationDao();
    }

    public boolean makeReservation(Reservation reservation) {
        try {
            // Attempt to save the reservation
            return reservationDao.saveReservation(reservation);
        } catch (Exception e) {
            // Log the exception and handle it appropriately
            e.printStackTrace();
            return false;
        }
    }
}
