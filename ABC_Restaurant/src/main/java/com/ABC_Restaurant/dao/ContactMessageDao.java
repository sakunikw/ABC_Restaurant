package com.ABC_Restaurant.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Restaurant.Model.ContactMessage;

public class ContactMessageDao {
    public boolean saveContactMessage(ContactMessage contactMessage) {
        String sql = "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)";
        
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            
            statement.setString(1, contactMessage.getName());
            statement.setString(2, contactMessage.getEmail());
            statement.setString(3, contactMessage.getMessage());

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

