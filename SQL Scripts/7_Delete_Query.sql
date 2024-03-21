-- 5
DECLARE
    v_customer_id NUMBER;
BEGIN
    SAVEPOINT before_delete;

    -- Get customer ID
    SELECT customer_id INTO v_customer_id
    FROM Customer
    WHERE first_name = 'Sam' AND last_name = 'Skywalker';

    -- Set foreign key to this customer_id to NULL so the customer record can be deleted
    UPDATE Rentals
    SET customer_id = NULL
    WHERE customer_id = v_customer_id;

    -- Delete the customer_id
    DELETE FROM Customer
    WHERE customer_id = (SELECT customer_id FROM Customer WHERE first_name = 'Sam' AND last_name = 'Skywalker');

    COMMIT;
END;