package com.Restaurant.Service;

import java.util.List;

import com.ABC_Restaurant.dao.OrderDao;
import com.Restaurant.Model.Order;

public class OrderService {
    private OrderDao orderDao;

    // Setter for dependency injection
    public void setOrderDao(OrderDao orderDao) {
        this.orderDao = orderDao;
    }

    public boolean placeOrder(Order order) {
        return orderDao.saveOrder(order);
    }

	public List<Order> getAllOrders() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Order> searchOrders(String string) {
		// TODO Auto-generated method stub
		return null;
	}
}
