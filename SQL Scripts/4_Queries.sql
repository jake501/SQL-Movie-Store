-- 1
SELECT first_name, last_name, customer_id, street_address, zip_code
FROM Customer
ORDER BY customer_id;
/* customer_id is the unique Account Number */

-- 2
SELECT *
FROM Rentals
WHERE date_issued >= CURRENT_DATE - 30
ORDER BY date_issued;

-- 3
SELECT *
FROM Distributors
ORDER BY distributor_name



