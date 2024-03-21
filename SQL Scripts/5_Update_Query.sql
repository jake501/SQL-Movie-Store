-- 4
BEGIN
    SAVEPOINT before_update;

    UPDATE Customer
    SET last_name = 'Poppins'
    WHERE customer_id = (SELECT customer_id FROM Customer WHERE first_name = 'Tina' AND last_name = 'Willis');

    IF SQL%NOTFOUND THEN
        ROLLBACK TO before_update;
    ELSE
        COMMIT;
    END IF;

END;

