import tkinter as tk
from tkinter import messagebox
import mysql.connector



# Database Configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'hotel'
}

# Function to connect to the database
def db_connect():
    try:
        conn = mysql.connector.connect(**db_config)
        return conn, conn.cursor()  # Return both connection and cursor
    except mysql.connector.Error as e:
        messagebox.showerror("Database Error", str(e))
        return None, None

# Database connection and cursor
conn, cursor = db_connect()



# Rooms management
def add_room(conn, cursor, room_number, room_type, occupancy, price):
    try:
        cursor.execute("""
            INSERT INTO rooms (room_number, room_type, occupancy, price)
            VALUES (%s, %s, %s, %s)
        """, (room_number, room_type, occupancy, price))
        conn.commit()
        print("Room added successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()

# functions to handle button clicks
def add_room_clicked():
    room_number_str = room_number_entry.get()
    room_type = room_type_entry.get()
    occupancy_str = occupancy_entry.get()
    price_str = price_entry.get()

    # Checks if any of the entry fields are empty
    if not (room_number_str and room_type and occupancy_str and price_str):
        messagebox.showerror("Error", "Please fill in all the fields.")
        return

    # Converts strings to appropriate data types
    room_number = int(room_number_str)
    occupancy = int(occupancy_str)
    price = float(price_str)

    # Calls the add_room function with the database connection and cursor
    add_room(conn, cursor, room_number, room_type, occupancy, price)


def search_room(room_number):
    try:
        cursor.execute("""
            SELECT * FROM rooms WHERE room_number = %s
        """, (room_number,))
        room = cursor.fetchone()
        if room:
            print("Room found:", room)
        else:
            print("Room not found!")
    except mysql.connector.Error as err:
        print("Error:", err)


# Modifies delete_room function to use cursor's connection directly
def delete_room(conn, cursor, room_id):
    try:
        cursor.execute("""
            DELETE FROM rooms WHERE room_id = %s
        """, (room_id,))
        conn.commit()  # Commit changes using the connection
        print("Room deleted successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()  # Rollback changes if an error occurs



# Customer management

def add_customer(first_name, last_name, email, phone):
    try:
        cursor.execute("""
            INSERT INTO customers (first_name, last_name, email, phone)
            VALUES (%s, %s, %s, %s)
        """, (first_name, last_name, email, phone))
        conn.commit()
        print("Customer added successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()

def search_customer(email):
    try:
        cursor.execute("""
            SELECT * FROM customers WHERE email = %s
        """, (email,))
        customer = cursor.fetchone()
        if customer:
            print("Customer found:", customer)
        else:
            print("Customer not found!")
    except mysql.connector.Error as err:
        print("Error:", err)

def delete_customer(customer_id):
    try:
        cursor.execute("""
            DELETE FROM customers WHERE customer_id = %s
        """, (customer_id,))
        conn.commit()
        print("Customer deleted successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


# Reservation management

def register_reservation(room_id, customer_id, check_in_date, check_out_date):
    try:
        cursor.execute("""
            INSERT INTO reservations (room_id, customer_id, check_in_date, check_out_date)
            VALUES (%s, %s, %s, %s)
        """, (room_id, customer_id, check_in_date, check_out_date))
        conn.commit()
        print("Reservation registered successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()

def change_reservation(reservation_id, new_check_in_date, new_check_out_date):
    try:
        cursor.execute("""
            UPDATE reservations
            SET check_in_date = %s, check_out_date = %s
            WHERE reservation_id = %s
        """, (new_check_in_date, new_check_out_date, reservation_id))
        conn.commit()
        print("Reservation updated successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()

def cancel_reservation(reservation_id):
    try:
        cursor.execute("""
            DELETE FROM reservations WHERE reservation_id = %s
        """, (reservation_id,))
        conn.commit()
        print("Reservation canceled successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


def register_reservation(room_id, customer_id, check_in_date, check_out_date):
    try:
        # Checks if the room_id exists in the rooms table
        cursor.execute("SELECT room_id FROM rooms WHERE room_id = %s", (room_id,))
        if cursor.fetchone() is None:
            print(f"Error: Room with ID {room_id} does not exist.")
            return

        # If the room exists, proceeds to insert the reservation
        cursor.execute("""
            INSERT INTO reservations (room_id, customer_id, check_in_date, check_out_date)
            VALUES (%s, %s, %s, %s)
        """, (room_id, customer_id, check_in_date, check_out_date))
        conn.commit()
        print("Reservation registered successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()  # Rollback changes if an error occurs



def change_reservation(reservation_id, new_check_in_date, new_check_out_date):
    try:
        cursor.execute("""
            UPDATE reservations
            SET check_in_date = %s, check_out_date = %s
            WHERE reservation_id = %s
        """, (new_check_in_date, new_check_out_date, reservation_id))
        conn.commit()  #  'conn' instead of 'db'
        print("Reservation updated successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


def cancel_reservation(reservation_id):
    try:
        cursor.execute("""
            DELETE FROM reservations WHERE reservation_id = %s
        """, (reservation_id,))
        conn.commit()  #  'conn' instead of 'db'
        print("Reservation canceled successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


# Restaurant management
import tkinter as tk
from tkinter import messagebox

def enter_order(customer_id, order_date, total_amount, status, db):
    try:
        # Checks if the customer_id exists in the customers table
        cursor = db.cursor()
        cursor.execute("SELECT customer_id FROM customers WHERE customer_id = %s", (customer_id,))
        if cursor.fetchone() is None:
            messagebox.showerror("Error", f"Customer with ID {customer_id} does not exist.")
            return

        # If the customer exists, proceeds to insert the order
        cursor.execute("""
            INSERT INTO restaurant_orders (customer_id, order_date, total_amount, status)
            VALUES (%s, %s, %s, %s)
        """, (customer_id, order_date, total_amount, status))
        db.commit()
        messagebox.showinfo("Success", "Order added successfully.")
    except mysql.connector.Error as err:
        print("Error:", err)
        db.rollback()



def update_order_status(order_id, new_status):
    try:
        cursor.execute("""
            UPDATE restaurant_orders
            SET status = %s
            WHERE order_id = %s
        """, (new_status, order_id))
        conn.commit()  #  'conn' instead of 'db'
        print("Order status updated successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


def search_order(order_id):
    try:
        cursor.execute("""
            SELECT * FROM restaurant_orders WHERE order_id = %s
        """, (order_id,))
        order = cursor.fetchone()
        if order:
            print("Order found:", order)
        else:
            print("Order not found!")
    except mysql.connector.Error as err:
        print("Error:", err)

def delete_order(order_id):
    try:
        cursor.execute("""
            DELETE FROM restaurant_orders WHERE order_id = %s
        """, (order_id,))
        conn.commit()  #  'conn' instead of 'db'
        print("Order deleted successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


# Personnel management
def add_personnel(first_name, last_name, position, salary):
    try:
        cursor.execute("""
            INSERT INTO staff (first_name, last_name, position, salary)
            VALUES (%s, %s, %s, %s)
        """, (first_name, last_name, position, salary))
        conn.commit()
        staff_id = cursor.lastrowid  # Fetches the last inserted ID
        print("Personnel added successfully with ID:", staff_id)
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()



def search_personnel(staff_id):
    try:
        cursor.execute("""
            SELECT * FROM staff WHERE staff_id = %s
        """, (staff_id,))
        personnel = cursor.fetchone()
        if personnel:
            print("Personnel found:", personnel)
        else:
            print("Personnel not found!")
    except mysql.connector.Error as err:
        print("Error executing SQL query:", err)



def delete_personnel(personnel_id):
    try:
        cursor.execute("""
            DELETE FROM staff WHERE staff_id = %s
        """, (personnel_id,))
        conn.commit()
        print("Personnel deleted successfully!")
    except mysql.connector.Error as err:
        print("Error:", err)
        db.rollback()

# Define GUI
root = tk.Tk()
root.title("Hotel Management System")


#functions to handle button clicks
def add_room_clicked():
    room_number_str = room_number_entry.get()
    room_type = room_type_entry.get()
    occupancy_str = occupancy_entry.get()
    price_str = price_entry.get()

    # Checks if any of the entry fields are empty
    if not (room_number_str and room_type and occupancy_str and price_str):
        messagebox.showerror("Error", "Please fill in all the fields.")
        return

    # Converts strings to appropriate data types
    room_number = int(room_number_str)
    occupancy = int(occupancy_str)
    price = float(price_str)

    # Calls the add_room function with the database connection and cursor
    add_room(conn, cursor, room_number, room_type, occupancy, price)  # Pass conn and cursor



def search_room_clicked():
    room_number = int(room_number_entry.get())
    search_room(room_number)

def delete_room_clicked():
    room_id_str = room_id_entry.get()
    if room_id_str.strip():
        room_id = int(room_id_str)
        delete_room(conn, cursor, room_id)  # Pass both connection and cursor
    else:
        print("Room ID cannot be empty!")



def add_customer_clicked():
    first_name = first_name_entry_customer.get().strip()
    last_name = last_name_entry.get().strip()
    email = email_entry.get().strip()
    phone = phone_entry.get().strip()

    if not first_name:
        first_name_label.config(text="Please fill this field", fg="red")
        return
    if not last_name:
        last_name_label.config(text="Please fill this field", fg="red")
        return
    if not email:
        email_label.config(text="Please fill this field", fg="red")
        return
    if not phone:
        phone_label.config(text="Please fill this field", fg="red")
        return

    add_customer(first_name, last_name, email, phone)




def search_customer_clicked():
    email = email_entry.get().strip()
    if not email:
        messagebox.showerror("Error", "Please fill in the Email field.")
        return
    search_customer(email)

def delete_customer_clicked():
    customer_id_str = customer_id_entry_customer.get().strip()
    if not customer_id_str:
        messagebox.showerror("Error", "Please fill in the Customer ID field.")
        return
    customer_id = int(customer_id_str)
    delete_customer(customer_id)

# Functions for button clicks related to Reservation Management

def register_reservation_clicked():
    reservation_id_str = reservation_id_entry.get().strip()
    room_id_str = room_id_entry_reservation.get().strip()
    customer_id_str = customer_id_entry_reservation.get().strip()
    check_in_date = check_in_date_entry.get().strip()
    check_out_date = check_out_date_entry.get().strip()

    if not reservation_id_str or not room_id_str or not customer_id_str or not check_in_date or not check_out_date:
        messagebox.showerror("Error", "Please fill in all the fields.")
        return

    try:
        reservation_id = int(reservation_id_str)
        room_id = int(room_id_str)
        customer_id = int(customer_id_str)

        # Check if the customer_id exists in the customers table
        cursor.execute("SELECT customer_id FROM customers WHERE customer_id = %s", (customer_id,))
        if cursor.fetchone() is None:
            messagebox.showerror("Error", f"Customer with ID {customer_id} does not exist.")
            return

        # If the customer exists, proceeds to register the reservation
        register_reservation(room_id, customer_id, check_in_date, check_out_date)
        messagebox.showinfo("Success", "Reservation registered successfully.")
    except ValueError:
        messagebox.showerror("Error",
                             "Please enter valid numerical values for Reservation ID, Room ID, and Customer ID.")
    except mysql.connector.Error as err:
        print("Error:", err)
        conn.rollback()


def change_reservation_clicked():
    reservation_id_str = reservation_id_entry.get().strip()
    new_check_in_date = check_in_date_entry.get().strip()
    new_check_out_date = check_out_date_entry.get().strip()

    if not reservation_id_str or not new_check_in_date or not new_check_out_date:
        messagebox.showerror("Error", "Please fill in all the fields.")
        return

    try:
        reservation_id = int(reservation_id_str)
        change_reservation(reservation_id, new_check_in_date, new_check_out_date)
        messagebox.showinfo("Success", "Reservation updated successfully.")
    except ValueError:
        messagebox.showerror("Error", "Please enter a valid numerical value for Reservation ID.")

def cancel_reservation_clicked():
    reservation_id_str = reservation_id_entry.get().strip()

    if not reservation_id_str:
        messagebox.showerror("Error", "Please fill in the Reservation ID field.")
        return

    try:
        reservation_id = int(reservation_id_str)
        cancel_reservation(reservation_id)
        messagebox.showinfo("Success", "Reservation canceled successfully.")
    except ValueError:
        messagebox.showerror("Error", "Please enter a valid numerical value for Reservation ID.")

def add_order_clicked():
    # Retrieve data from the entry fields
    customer_id = order_customer_id_entry.get().strip()
    order_date = order_date_entry.get().strip()
    total_amount = total_amount_entry.get().strip()
    status = status_entry.get().strip()

    # Check if any field is empty
    if customer_id == "" or order_date == "" or total_amount == "" or status == "":
        messagebox.showerror("Error", "Please fill all the fields.")
        return

    # Convert total_amount to float
    try:
        total_amount = float(total_amount)
    except ValueError:
        messagebox.showerror("Error", "Total amount must be a number.")
        return

    # Call enter_order with the provided data and the database connection
    enter_order(customer_id, order_date, total_amount, status, conn)  # Pass conn as an argument





def search_order_clicked():
    order_id_str = order_id_entry.get().strip()
    if not order_id_str:
        order_id_label.config(text="Please fill this field", fg="red")
        return
    order_id = int(order_id_str)
    search_order(order_id)

def update_order_clicked():
    order_id_str = order_id_entry.get().strip()
    new_status = status_entry.get().strip()

    if not order_id_str:
        order_id_label.config(text="Please fill this field", fg="red")
        return
    if not new_status:
        status_label.config(text="Please fill this field", fg="red")
        return

    try:
        order_id = int(order_id_str)
        update_order_status(order_id, new_status)
    except ValueError:
        messagebox.showerror("Error", "Please enter a valid numerical value for Order ID.")

def delete_order_clicked():
    order_id_str = order_id_entry.get().strip()
    if not order_id_str:
        order_id_label.config(text="Please fill this field", fg="red")
        return
    order_id = int(order_id_str)
    delete_order(order_id)

# functions to handle button clicks for Staff Management
def add_staff_clicked():
    first_name = staff_first_name_entry.get().strip()
    last_name = staff_last_name_entry.get().strip()
    position = position_entry.get().strip()
    salary_str = salary_entry.get().strip()

    if not first_name:
        staff_first_name_label.config(text="Please fill this field", fg="red")
        return
    if not last_name:
        staff_last_name_label.config(text="Please fill this field", fg="red")
        return
    if not position:
        position_label.config(text="Please fill this field", fg="red")
        return
    if not salary_str:
        salary_label.config(text="Please fill this field", fg="red")
        return

    try:
        salary = float(salary_str)
        add_personnel(first_name, last_name, position, salary)
    except ValueError:
        messagebox.showerror("Error", "Please enter a valid numerical value for Salary.")


def search_staff_clicked():
    staff_id_str = staff_id_entry.get().strip()
    if not staff_id_str:
        staff_id_label.config(text="Please fill this field", fg="red")
        return
    staff_id = int(staff_id_str)
    search_personnel(staff_id)

def update_staff_clicked():
    staff_id_str = staff_id_entry.get().strip()
    new_position = position_entry.get().strip()
    new_salary_str = salary_entry.get().strip()

    if not staff_id_str:
        staff_id_label.config(text="Please fill this field", fg="red")
        return
    if not new_position:
        position_label.config(text="Please fill this field", fg="red")
        return
    if not new_salary_str:
        salary_label.config(text="Please fill this field", fg="red")
        return

    try:
        staff_id = int(staff_id_str)
        new_salary = float(new_salary_str)
        update_personnel(staff_id, new_position, new_salary)
    except ValueError:
        messagebox.showerror("Error", "Please enter a valid numerical value for Salary.")


def delete_staff_clicked():
    staff_id_str = staff_id_entry.get().strip()
    if not staff_id_str:
        staff_id_label.config(text="Please fill this field", fg="red")
        return
    staff_id = int(staff_id_str)
    delete_personnel(staff_id)



# widgets

room_id_label = tk.Label(root, text="Room ID:")
room_id_label.grid(row=0, column=0)
room_id_entry = tk.Entry(root)
room_id_entry.grid(row=0, column=1)

room_number_label = tk.Label(root, text="Room Number:")
room_number_label.grid(row=1, column=0)
room_number_entry = tk.Entry(root)
room_number_entry.grid(row=1, column=1)

room_type_label = tk.Label(root, text="Room Type:")
room_type_label.grid(row=2, column=0)
room_type_entry = tk.Entry(root)
room_type_entry.grid(row=2, column=1)

occupancy_label = tk.Label(root, text="Occupancy:")
occupancy_label.grid(row=3, column=0)
occupancy_entry = tk.Entry(root)
occupancy_entry.grid(row=3, column=1)

price_label = tk.Label(root, text="Price:")
price_label.grid(row=4, column=0)
price_entry = tk.Entry(root)
price_entry.grid(row=4, column=1)

add_room_button = tk.Button(root, text="Add Room", command=add_room_clicked)
add_room_button.grid(row=5, column=0)

search_room_button = tk.Button(root, text="Search Room", command=search_room_clicked)
search_room_button.grid(row=5, column=1)

delete_room_button = tk.Button(root, text="Delete Room", command=delete_room_clicked)
delete_room_button.grid(row=5, column=2)

# widgets for Customer Management
first_name_label_customer = tk.Label(root, text="First Name:")
first_name_label_customer.grid(row=7, column=0)
first_name_entry_customer = tk.Entry(root)
first_name_entry_customer.grid(row=7, column=1)

last_name_label = tk.Label(root, text="Last Name:")
last_name_label.grid(row=8, column=0)
last_name_entry = tk.Entry(root)
last_name_entry.grid(row=8, column=1)

customer_id_label_customer = tk.Label(root, text="Customer ID:")
customer_id_label_customer.grid(row=9, column=0)
customer_id_entry_customer = tk.Entry(root)
customer_id_entry_customer.grid(row=9, column=1)

email_label = tk.Label(root, text="Email:")
email_label.grid(row=10, column=0)
email_entry = tk.Entry(root)
email_entry.grid(row=10, column=1)

phone_label = tk.Label(root, text="Phone:")
phone_label.grid(row=11, column=0)
phone_entry = tk.Entry(root)
phone_entry.grid(row=11, column=1)



# buttons for Customer Management
add_customer_button = tk.Button(root, text="Add Customer", command=add_customer_clicked)
add_customer_button.grid(row=12, column=0)

search_customer_button = tk.Button(root, text="Search Customer", command=search_customer_clicked)
search_customer_button.grid(row=12, column=1)

delete_customer_button = tk.Button(root, text="Delete Customer", command=delete_customer_clicked)
delete_customer_button.grid(row=12, column=2)





# Create and place widgets for Restaurant Orders Management
order_id_label = tk.Label(root, text="Order ID:")
order_id_label.grid(row=13, column=0)
order_id_entry = tk.Entry(root)
order_id_entry.grid(row=13, column=1)

order_customer_id_label = tk.Label(root, text="Customer ID:")
order_customer_id_label.grid(row=14, column=0)
order_customer_id_entry = tk.Entry(root)
order_customer_id_entry.grid(row=14, column=1)

order_date_label = tk.Label(root, text="Order Date:")
order_date_label.grid(row=15, column=0)
order_date_entry = tk.Entry(root)
order_date_entry.grid(row=15, column=1)

total_amount_label = tk.Label(root, text="Total Amount:")
total_amount_label.grid(row=16, column=0)
total_amount_entry = tk.Entry(root)
total_amount_entry.grid(row=16, column=1)

status_label = tk.Label(root, text="Status:")
status_label.grid(row=17, column=0)
status_entry = tk.Entry(root)
status_entry.grid(row=17, column=1)

add_order_button = tk.Button(root, text="Add Order", command=add_order_clicked)
add_order_button.grid(row=18, column=0)

search_order_button = tk.Button(root, text="Search Order", command=search_order_clicked)
search_order_button.grid(row=18, column=1)

update_order_button = tk.Button(root, text="Update Order", command=update_order_clicked)
update_order_button.grid(row=18, column=2)

delete_order_button = tk.Button(root, text="Delete Order", command=delete_order_clicked)
delete_order_button.grid(row=18, column=3)

# Create and place widgets for Staff Management
staff_id_label = tk.Label(root, text="Staff ID:")
staff_id_label.grid(row=20, column=0)
staff_id_entry = tk.Entry(root)
staff_id_entry.grid(row=20, column=1)

staff_first_name_label = tk.Label(root, text="First Name:")
staff_first_name_label.grid(row=21, column=0)
staff_first_name_entry = tk.Entry(root)
staff_first_name_entry.grid(row=21, column=1)

staff_last_name_label = tk.Label(root, text="Last Name:")
staff_last_name_label.grid(row=22, column=0)
staff_last_name_entry = tk.Entry(root)
staff_last_name_entry.grid(row=22, column=1)

position_label = tk.Label(root, text="Position:")
position_label.grid(row=23, column=0)
position_entry = tk.Entry(root)
position_entry.grid(row=23, column=1)

salary_label = tk.Label(root, text="Salary:")
salary_label.grid(row=24, column=0)
salary_entry = tk.Entry(root)
salary_entry.grid(row=24, column=1)

add_staff_button = tk.Button(root, text="Add Staff", command=add_staff_clicked)
add_staff_button.grid(row=25, column=0)

search_staff_button = tk.Button(root, text="Search Staff", command=search_staff_clicked)
search_staff_button.grid(row=25, column=1)

delete_staff_button = tk.Button(root, text="Delete Staff", command=delete_staff_clicked)
delete_staff_button.grid(row=25, column=2)

update_staff_button = tk.Button(root, text="Update Staff", command=update_staff_clicked)
update_staff_button.grid(row=25, column=3)

# Create and place widgets for Reservation Management
reservation_id_label = tk.Label(root, text="Reservation ID:")
reservation_id_label.grid(row=26, column=0)
reservation_id_entry = tk.Entry(root)
reservation_id_entry.grid(row=26, column=1)

room_id_label_reservation = tk.Label(root, text="Room ID:")
room_id_label_reservation.grid(row=27, column=0)
room_id_entry_reservation = tk.Entry(root)
room_id_entry_reservation.grid(row=27, column=1)

customer_id_label_reservation = tk.Label(root, text="Customer ID:")
customer_id_label_reservation.grid(row=28, column=0)
customer_id_entry_reservation = tk.Entry(root)
customer_id_entry_reservation.grid(row=28, column=1)

check_in_date_label = tk.Label(root, text="Check-in Date:")
check_in_date_label.grid(row=29, column=0)
check_in_date_entry = tk.Entry(root)
check_in_date_entry.grid(row=29, column=1)

check_out_date_label = tk.Label(root, text="Check-out Date:")
check_out_date_label.grid(row=30, column=0)
check_out_date_entry = tk.Entry(root)
check_out_date_entry.grid(row=30, column=1)

register_reservation_button = tk.Button(root, text="Register Reservation", command=register_reservation_clicked)
register_reservation_button.grid(row=31, column=0)

change_reservation_button = tk.Button(root, text="Change Reservation", command=change_reservation_clicked)
change_reservation_button.grid(row=31, column=1)

cancel_reservation_button = tk.Button(root, text="Cancel Reservation", command=cancel_reservation_clicked)
cancel_reservation_button.grid(row=31, column=2)


root.mainloop()