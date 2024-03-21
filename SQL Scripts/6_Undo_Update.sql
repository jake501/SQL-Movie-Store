/* Since rollback has to be in the same session as the other script, this simply reverts to the previous name */

UPDATE Customer
SET last_name = 'Willis'
WHERE customer_id = (SELECT customer_id FROM Customer WHERE first_name = 'Tina' AND last_name = 'Poppins');