# Hotel Unit Management Application

This Python-based Hotel Management System is designed to manage various key aspects of hotel operations such as room, customer, reservation, restaurant, and staff management. 
The system is connected to a MySQL database to ensure efficient and secure data storage.


# Key Features:

  - MySQL Database Integration: The system connects to a MySQL database using the mysql-connector-python library to securely store and manage hotel data.
  - Graphical User Interface (GUI): The interface, built using Tkinter, provides an easy-to-navigate experience for hotel staff, allowing them to interact with the system's features without the need for technical expertise.
  - Room Management:
        Add new rooms, update room details, search for rooms by criteria, and delete room records.
  - Customer Management:
        Insert new customer data, update existing records, search for customers, and remove records when necessary.
  - Reservation Management:
        Register new reservations, modify existing reservations, and cancel bookings efficiently.
  - Restaurant Management:
        Manage restaurant orders, including food and drink orders, update the status of orders, and delete completed or canceled orders.
  - Personnel Management:
        Add and update staff information, search for employees based on different criteria, and delete records as needed.

# Database Design:

  -Rooms: Stores information about each room, including room type, price, and availability.
  -Customers: Contains customer details such as name, contact information, and booking history.
  -Reservations: Records reservations, linking customers to rooms and ensuring accurate booking management.
  -Restaurant Orders: Manages food and drink orders, tracking order details, status, and pricing.
  -Staff: Handles employee details, ensuring proper personnel management for hotel operations.

# Technologies Used:

  -Python: Core programming language for implementing the system's functionality.
  -MySQL: Database used to persist hotel data.
  -mysql-connector-python: Library used to connect Python with the MySQL database.
  -Tkinter: Library for building the graphical user interface (GUI).

# Functionality:

  -Insert, update, search, and delete data for each module (rooms, customers, reservations, restaurant, and staff).
  -Maintain appropriate relationships between data, ensuring data consistency and accuracy.
  -Implement easy-to-use forms and search filters for end-users to manage the hotel efficiently.
