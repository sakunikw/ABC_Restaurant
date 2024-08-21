package com.Restaurant.Model;

public class Order {
    private String name;
    private String email;
    private String phone;
    private String foodItem;
    private String address;
    private int quantity;

    public Order(String name, String email, String phone, String foodItem, String address, int quantity) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.foodItem = foodItem;
        this.address = address;
        this.quantity = quantity;
    }

    // Getters and Setters for each field
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFoodItem() {
        return foodItem;
    }

    public void setFoodItem(String foodItem) {
        this.foodItem = foodItem;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
