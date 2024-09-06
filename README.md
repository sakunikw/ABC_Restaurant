ABC Restaurant Web Application

ABC Restaurant is a popular restaurant chain in Sri Lanka. 
This web-based application is designed to streamline restaurant operations, providing customers with features like online reservations, service queries, and staff with tools to manage orders, menus, and payments. 
It also includes administrative functionality for overseeing user roles and generating reports.

Features
Customers
•	Register & Sign In: Users can create an account and log in to access various features.
•	Make Orders: Customers can browse the menu and place orders online.
•	Make Reservations: Reserve tables for a specific date and time.
•	Submit Queries: Send queries or feedback to the restaurant.
Staff
•	Manage Reservations: View, confirm, or delete customer reservations.
•	Manage Orders: Process and update customer orders.
•	Manage Menus: Add, update, and remove menu items.
•	Respond to Queries: Address customer queries and concerns.
•	Process Payments: Handle customer payments for orders and reservations.
•	Manage Users: View and manage customer details.
Admin
•	Oversee Users: Manage all user accounts, including customers and staff.
•	Manage Roles: Assign roles and access permissions (e.g., Admin, Staff, Customer).
•	Generate Reports: Create reports on reservations, orders, and user activity for decision-making.

Technology Stack
•	Frontend: HTML, CSS, JavaScript
•	Backend: Java (JSP, Servlets), Maven
•	Database: MySQL


Set up the database:

•	Create a MySQL database for the application.
•	Import the provided SQL scripts to create necessary tables.
•	Update the database connection settings in the DBConnector class.

Deploy on Tomcat:
•	Build the project using Maven.
•	Deploy the generated WAR file on an Apache Tomcat server.
•	Run the application:


Roles and Access
•	Admin: Full access to all system features.
•	Staff: Can manage reservations, orders, menus, queries, and payments.
•	Customers: Can register, sign in, make orders, submit queries, and make reservations.
