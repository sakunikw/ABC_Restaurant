package com.Restaurant.Service;




import com.ABC_Restaurant.dao.ReservationDao;
import com.Restaurant.Model.Reservation;
import java.sql.SQLException;

public class ReservationService {
    private ReservationDao reservationDAO = new ReservationDao();

    public void makeReservation(Reservation reservation) {
        try {
            reservationDAO.saveReservation(reservation);
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
    }
}
