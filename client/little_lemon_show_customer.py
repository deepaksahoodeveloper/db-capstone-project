import mysql.connector as connector
import db_queries as dbq

#global variables
show_customer = dbq.show_customer

# Replace the placeholder values with your actual database information
db_config = {
    "host": "Your_host",
    "user": "your_user",
    "password": "Your_password",
    "database": "your_db",
}

# Establish a connection to the MySQL server
try:
    connection = connector.connect(**db_config)
    if connection.is_connected():
        print("Connected to MySQL database")

        # Get a cursor object to interact with the database
        cursor = connection.cursor()

        # Query to retrieve the list of tables in the database
        cursor.execute(show_customer)

        # Fetch all tables and print them one by one
        rows = cursor.fetchall()
        for row in rows:
            print(row)

except connector.Error as e:
    print(f"Error: {e}")

finally:
    # Close the connection in the finally block to ensure it's always closed
    if 'connection' in locals():
        connection.close()
        print("Connection closed")