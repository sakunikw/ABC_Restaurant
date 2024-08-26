package com.RestaurantController;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ABC_Restaurant.dao.ContactMessageDao;
import com.Restaurant.Model.ContactMessage;


public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        ContactMessage contactMessage = new ContactMessage(name, email, message);
        ContactMessageDao dao = new ContactMessageDao();
        
        boolean success = dao.saveContactMessage(contactMessage);

        if (success) {
            response.sendRedirect("contact_success.jsp");
        } else {
            response.sendRedirect("contact_error.jsp");
        }
    }
}
