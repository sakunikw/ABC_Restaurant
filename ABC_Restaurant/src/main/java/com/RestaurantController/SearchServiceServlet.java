package com.RestaurantController;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ABC_Restaurant.dao.DBConnector;

public class SearchServiceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query");
        ArrayList<String> services = new ArrayList<>();
        
        try (Connection conn = DBConnector.getConnection()) {
            String sql = "SELECT name FROM services WHERE name LIKE ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, "%" + query + "%");
                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {
                        services.add(rs.getString("name"));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        request.setAttribute("services", services);
        request.getRequestDispatcher("/searchResult.jsp").forward(request, response);
    }
}
