package com.Restaurant.Service;

import com.Restaurant.Model.Reservation;
import com.ABC_Restaurant.dao.ReservationDao;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

public class ReservationServiceTest {

    private ReservationService reservationService;
    private ReservationDao reservationDAOMock;

    @BeforeEach
    public void setUp() {
        // Create a fresh mock implementation of ReservationDAO for each test
        reservationDAOMock = new ReservationDao() {
            private List<Reservation> reservations = new ArrayList<>();

            @Override
            public boolean saveReservation(Reservation reservation) {
                return reservations.add(reservation);
            }

            @Override
            public List<Reservation> getAllReservations() {
                // Return a copy of the reservations list to ensure no external modification
                return new ArrayList<>(reservations);
            }
        };

        // Initialize ReservationService and inject the mock DAO
        reservationService = new ReservationService();
        reservationService.setReservationDao(reservationDAOMock); // Ensure this setter exists in ReservationService
    }

    @Test
    public void testSaveReservation() {
        Reservation reservation = createReservation(1, "John Doe", "johndoe@example.com", "1234567890", "2024-09-01", "18:00:00", 4, "Vegetarian", 0);

        boolean isSaved = reservationService.makeReservation(reservation);
        assertTrue(isSaved, "The reservation should be saved successfully.");
    }

    @Test
    public void testGetAllReservations() {
        // Clear reservations from the mock DAO
        ((ArrayList<Reservation>) reservationDAOMock.getAllReservations()).clear();

        // Create and add reservations
        Reservation reservation1 = createReservation(1, "John Doe", "johndoe@example.com", "1234567890", "2024-09-01", "18:00:00", 4, "Vegetarian", 0);
        Reservation reservation2 = createReservation(2, "Jane Smith", "janesmith@example.com", "0987654321", "2024-09-02", "19:00:00", 2, "Gluten-free", 0);

        reservationService.makeReservation(reservation1);
        reservationService.makeReservation(reservation2);

        // Retrieve all reservations
        List<Reservation> reservations = reservationService.getAllReservations();
        
        // Debug print to ensure the method returns correct data
        System.out.println("Reservations in getAllReservations: " + reservations);

        // Assert the number of reservations
        assertEquals(2, reservations.size(), "There should be two reservations in the list.");
        assertTrue(reservations.contains(reservation1), "The list should contain the first reservation.");
        assertTrue(reservations.contains(reservation2), "The list should contain the second reservation.");
    }

    private Reservation createReservation(int id, String name, String email, String phone, String date, String time, int numGuests, String requests, int confirmed) {
        Reservation reservation = new Reservation();
        reservation.setId(id);
        reservation.setName(name);
        reservation.setEmail(email);
        reservation.setPhone(phone);
        reservation.setReservationDate(Date.valueOf(date));
        reservation.setReservationTime(Time.valueOf(time));
        reservation.setNumGuests(numGuests);
        reservation.setSpecialRequests(requests);
        reservation.setConfirmed(confirmed);
        return reservation;
    }
}
