package com.Restaurant.Service;

import com.ABC_Restaurant.dao.ContactMessageDao;
import com.Restaurant.Model.ContactMessage;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

public class ContactServiceTest {

    private ContactMessageService contactMessageService;
    private ContactMessageDao contactMessageDaoMock;

    @BeforeEach
    public void setUp() {
        // Create a mock implementation of ContactMessageDao
        contactMessageDaoMock = mock(ContactMessageDao.class);

        // Initialize ContactMessageService with the mock DAO
        contactMessageService = new ContactMessageService(contactMessageDaoMock);
    }

    @Test
    public void testSaveContactMessage_Success() {
        // Prepare a ContactMessage object
        ContactMessage contactMessage = new ContactMessage("John Doe", "john@example.com", "Hello!");

        // Define the behavior of the mock
        when(contactMessageDaoMock.saveContactMessage(contactMessage)).thenReturn(true);

        // Test saving the contact message
        boolean isSaved = contactMessageService.saveContactMessage(contactMessage);
        assertTrue(isSaved, "The contact message should be saved successfully.");

        // Verify that saveContactMessage was called with the correct argument
        verify(contactMessageDaoMock).saveContactMessage(contactMessage);
    }

    @Test
    public void testSaveContactMessage_Failure() {
        // Prepare a ContactMessage object
        ContactMessage contactMessage = new ContactMessage("Jane Doe", "jane@example.com", "Help!");

        // Define the behavior of the mock
        when(contactMessageDaoMock.saveContactMessage(contactMessage)).thenReturn(false);

        // Test saving the contact message
        boolean isSaved = contactMessageService.saveContactMessage(contactMessage);
        assertFalse(isSaved, "The contact message should not be saved successfully.");

        // Verify that saveContactMessage was called with the correct argument
        verify(contactMessageDaoMock).saveContactMessage(contactMessage);
    }

    
}
