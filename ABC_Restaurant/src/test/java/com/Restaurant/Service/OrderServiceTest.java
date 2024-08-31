package com.Restaurant.Service;

import com.Restaurant.Model.Order;
import com.ABC_Restaurant.dao.OrderDao;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class OrderServiceTest {

    private OrderService orderService;
    private OrderDao orderDaoMock;

    @BeforeEach
    public void setUp() {
        // Mock implementation of OrderDao
        orderDaoMock = new OrderDao() {
            private List<Order> orders = new ArrayList<>();

            @Override
            public boolean saveOrder(Order order) {
                return orders.add(order);
            }

            @Override
            public List<Order> getAllOrders() {
                return new ArrayList<>(orders);
            }

            @Override
            public List<Order> searchOrders(String query) {
                List<Order> result = new ArrayList<>();
                for (Order order : orders) {
                    if (order.getFoodItem().contains(query) || 
                        order.getName().contains(query) || 
                        order.getEmail().contains(query)) {
                        result.add(order);
                    }
                }
                return result;
            }
        };

        // Initialize OrderService and inject the mock DAO
        orderService = new OrderService();
        orderService.setOrderDao(orderDaoMock);
    }

    @Test
    public void testPlaceOrder() {
        Order order = new Order("John Doe", "john.doe@example.com", "1234567890", "Pizza", "123 Main St", 2);

        boolean isCreated = orderService.placeOrder(order);
        assertTrue(isCreated, "The order should be placed successfully.");
    }

   

    

    @Test
    public void testPlaceOrderWithNullFields() {
        Order order = new Order(null, "test.user@example.com", "9876543210", "Pasta", "Unknown", 0);

        boolean isCreated = orderService.placeOrder(order);
        assertTrue(isCreated, "The order should be created successfully even with null name.");
    }

   
}
