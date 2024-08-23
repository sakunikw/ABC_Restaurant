package com.Restaurant.Service;

import com.ABC_Restaurant.dao.OrderDao;
import com.Restaurant.Model.Order;

public class OrderService {
    private OrderDao orderDao = new OrderDao();

    public boolean placeOrder(Order order) {
        return orderDao.saveOrder(order);
    }
}
