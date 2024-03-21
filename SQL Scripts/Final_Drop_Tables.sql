-- Drop Foreign Key Constraints
ALTER TABLE Associated_People DROP CONSTRAINT fk_associated_movie;
ALTER TABLE Associated_People DROP CONSTRAINT fk_associated_actor;
ALTER TABLE Associated_People DROP CONSTRAINT fk_associated_director;

ALTER TABLE Awards DROP CONSTRAINT fk_awards_movie;
ALTER TABLE Awards DROP CONSTRAINT fk_awards_actor;
ALTER TABLE Awards DROP CONSTRAINT fk_awards_director;
ALTER TABLE Awards DROP CONSTRAINT fk_awards_type;

ALTER TABLE Order_Items DROP CONSTRAINT fk_orderitem_order;
ALTER TABLE Order_Items DROP CONSTRAINT fk_orderitem_catalog;

ALTER TABLE Rentals DROP CONSTRAINT fk_rental_video;
ALTER TABLE Rentals DROP CONSTRAINT fk_rental_customer;

ALTER TABLE Serial_Numbers DROP CONSTRAINT fk_serial_video;
ALTER TABLE Serial_Numbers DROP CONSTRAINT fk_serial_distributor;

ALTER TABLE Orders DROP CONSTRAINT fk_order_distributor;

-- Completely drops every time, wipes database.
DROP TABLE Customer;
DROP TABLE Actors_Actresses;
DROP TABLE Directors;
DROP TABLE Award_Types;
DROP TABLE VHS_DVD;
DROP TABLE Distributor_Catalog;
DROP TABLE Order_Items;
DROP TABLE Awards;
DROP TABLE Serial_Numbers;
DROP TABLE Associated_People;
DROP TABLE Rentals;
DROP TABLE Distributors;
DROP TABLE Movie_Titles;
DROP TABLE Orders;