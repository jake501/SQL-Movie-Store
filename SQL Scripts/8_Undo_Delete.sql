INSERT INTO customer (first_name, last_name, street_address, city, state, zip_code, phone_number, date_first_rented)
VALUES ('Sam', 'Skywalker', '16 Millenium Falcon', 'Clear', 'WA', '98395', '7665543321', DATE '2024-01-24');

DECLARE v_customer_id NUMBER;

BEGIN
    SELECT customer_id INTO v_customer_id
    FROM Customer
    WHERE first_name = 'Sam' AND last_name = 'Skywalker';

    -- Set foreign key to this customer_id to NULL so the customer record can be deleted
    UPDATE Rentals
    SET customer_id = v_customer_id
    WHERE customer_id IS NULL;

END;