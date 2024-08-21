package com.ABC_Restaurant.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Restaurant.Model.Order;

public class OrderDao {
    
    public boolean saveOrder(Order order) {
        String sql = "INSERT INTO orders (name, email, phone, foodItem, address, quantity) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnector.getConnection(); 
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, order.getName());
            pstmt.setString(2, order.getEmail());
            pstmt.setString(3, order.getPhone());
            pstmt.setString(4, order.getFoodItem());
            pstmt.setString(5, order.getAddress());
            pstmt.setInt(6, order.getQuantity());

            int affectedRows = pstmt.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
