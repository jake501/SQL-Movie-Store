-- 1
SELECT first_name, last_name, customer_id, street_address, zip_code
FROM Customer
ORDER BY customer_id;

-- 2
SELECT rental_id
FROM Rentals
WHERE date_issued >= CURRENT_DATE - INTERVAL '30 days';
ORDER BY date_issued

-- 3
SELECT distributor_id, distributor_name, contact_name, address, phone_number
FROM Distributors
ORDER BY distributor_name

-- 4
UPDATE Customer
SET last_name = "Poppins"
WHERE (SELECT customer_id FROM Customer WHERE first_name = 'Tina' AND last_name = 'Willis')
--ROLLBACK

-- 5
DELETE Customer
WHERE (SELECT customer_id FROM Customer WHERE first_name = 'Sam' AND last_name = 'Skywalker')
--ROLLBACK
