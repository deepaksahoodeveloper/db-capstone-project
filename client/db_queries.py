#In this second task, you now need to query the database to show all tables within the database. 
show_tables_query = "SHOW tables"

# The promotional campaign requires obtaining the full name and contact details
# for every customer who has placed an order greater than ₹500/-. However, 
# the my database table does not have specific promotional campaign tagging. 
# Therefore, filtering is based on the condition of total_cost greater than ₹500/- only.

show_customer = """
SELECT 
    customer_name, contact_phone
FROM
    joined_all
WHERE
    total_cost > 500;"""