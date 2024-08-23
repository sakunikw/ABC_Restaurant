package com.RestaurantController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ABC_Restaurant.dao.OrderDao;
import com.Restaurant.Model.Order;


public class NewOrder extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String foodItem = request.getParameter("foodItem");
        String address = request.getParameter("address");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Order order = new Order(name, email, phone, foodItem, address, quantity);
        OrderDao orderDao = new OrderDao();
        orderDao.saveOrder(order);

        response.sendRedirect("orderSuccess.jsp");
    }
}
