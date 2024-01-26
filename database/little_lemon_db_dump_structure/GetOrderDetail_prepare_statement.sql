-- Create a variable to hold the SQL statement
SET @GetOrderDetail_query = 'SELECT * FROM joined_orders_menu_staff_delivery WHERE order_id = ?';

-- Prepare the statement
PREPARE GetOrderDetail FROM @GetOrderDetail_query;

-- Set the parameter value
SET @id = '1';

-- Execute the prepared statement with the parameter
EXECUTE GetOrderDetail USING @id;

-- Deallocate the prepared statement
DEALLOCATE PREPARE GetOrderDetail;
