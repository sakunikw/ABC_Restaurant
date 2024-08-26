package com.RestaurantController;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Restaurant.Model.Reservation;
import com.Restaurant.Service.ReservationService;


public class ReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dateStr = request.getParameter("reservationDate"); // "21/8/2024"
        String timeStr = request.getParameter("reservationTime"); // "08.22 PM"
        String numGuestsStr = request.getParameter("numGuests");
        String specialRequests = request.getParameter("specialRequests");

        // Validate and parse numGuests
        int numGuests = 0;
        if (numGuestsStr != null && !numGuestsStr.isEmpty()) {
            try {
                numGuests = Integer.parseInt(numGuestsStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid number of guests.");
                return;
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Number of guests is required.");
            return;
        }

        // Validate and parse the date
        Date reservationDate = null;
        if (dateStr != null && !dateStr.isEmpty()) {
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                java.util.Date utilDate = sdf.parse(dateStr);
                reservationDate = new Date(utilDate.getTime());
            } catch (ParseException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid date format.");
                return;
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Reservation date is required.");
            return;
        }

        // Validate and parse the time
        Time reservationTime = null;
        if (timeStr != null && !timeStr.isEmpty()) {
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("hh.mm a", Locale.ENGLISH); // "08.22 PM"
                java.util.Date utilTime = sdf.parse(timeStr);
                reservationTime = new Time(utilTime.getTime());
            } catch (ParseException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid time format.");
                return;
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Reservation time is required.");
            return;
        }

        // Create a Reservation object and set the values
        Reservation reservation = new Reservation();
        reservation.setName(name);
        reservation.setEmail(email);
        reservation.setPhone(phone);
        reservation.setReservationDate(reservationDate);
        reservation.setReservationTime(reservationTime);
        reservation.setNumGuests(numGuests);
        reservation.setSpecialRequests(specialRequests);
        reservation.setConfirmed(0);

        // Save the reservation using the ReservationService
        ReservationService reservationService = new ReservationService();
        boolean success = reservationService.makeReservation(reservation);

        if (success) {
            response.sendRedirect("ResSuccess.jsp");
        } else {
            response.sendRedirect("Reserror.jsp");
        }
    }
}
