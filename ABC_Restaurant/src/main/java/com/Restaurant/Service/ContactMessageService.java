package com.Restaurant.Service;


import com.ABC_Restaurant.dao.ContactMessageDao;
import com.Restaurant.Model.ContactMessage;

public class ContactMessageService {
    private ContactMessageDao contactMessageDao;

    // Constructor
    public ContactMessageService() {
        this.contactMessageDao = new ContactMessageDao();
    }

    // Constructor for dependency injection (useful for testing)
    public ContactMessageService(ContactMessageDao contactMessageDao) {
        this.contactMessageDao = contactMessageDao;
    }

    // Method to save a contact message
    public boolean saveContactMessage(ContactMessage contactMessage) {
        if (contactMessage == null || contactMessage.getName() == null || contactMessage.getEmail() == null || contactMessage.getMessage() == null) {
            throw new IllegalArgumentException("ContactMessage or its fields cannot be null");
        }
        return contactMessageDao.saveContactMessage(contactMessage);
    }
}
