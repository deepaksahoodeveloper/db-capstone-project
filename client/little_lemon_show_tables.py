import mysql.connector as connector
import db_queries as dbq

#global variables
show_tables_query = dbq.show_tables_query

# Replace the placeholder values with your actual database information
db_config = {
    "host": "127.0.0.1",
    "user": "capstone_user",
    "password": "Deepak@0307",
    "database": "little_lemon_dm",
}

# Establish a connection to the MySQL server
try:
    connection = connector.connect(**db_config)
    if connection.is_connected():
        print("Connected to MySQL database")

        # Perform database operations here

        # Get a cursor object to interact with the database
        cursor = connection.cursor()

        # Query to retrieve the list of tables in the database
        cursor.execute(show_tables_query)

        # Fetch all tables and print them one by one
        tables = cursor.fetchall()
        for table in tables:
            print(f"Table: {table[0]}")

except connector.Error as e:
    print(f"Error: {e}")

finally:
    # Close the connection in the finally block to ensure it's always closed
    if 'connection' in locals():
        connection.close()
        print("Connection closed")