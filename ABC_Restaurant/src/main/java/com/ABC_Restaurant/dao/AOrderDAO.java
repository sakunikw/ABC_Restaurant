package com.ABC_Restaurant.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.Restaurant.Model.Order;

public class AOrderDAO {

    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders";

        try (Connection connection = DBConnector.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {

            while (resultSet.next()) {
                Order order = new Order(
                    resultSet.getString("name"),
                    resultSet.getString("email"),
                    resultSet.getString("phone"),
                    resultSet.getString("foodItem"),
                    resultSet.getString("address"),
                    resultSet.getInt("quantity")
                );
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle exceptions
        }

        return orders;
    }
}
