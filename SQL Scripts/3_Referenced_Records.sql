-- Orders
INSERT INTO Orders (purchase_date, shipping_cost, distributor_id)
VALUES (DATE '2020-01-12', 12.23, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'));
INSERT INTO Orders (purchase_date, shipping_cost, distributor_id)
VALUES (DATE '2021-07-27', 9.66, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'Cinemania Distributors'));
INSERT INTO Orders (purchase_date, shipping_cost, distributor_id)
VALUES (DATE '2020-11-22', 15.92, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'));
INSERT INTO Orders (purchase_date, shipping_cost, distributor_id)
VALUES (DATE '2023-12-12', 7.33, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'));
INSERT INTO Orders (purchase_date, shipping_cost, distributor_id)
VALUES (DATE '2022-03-01', 17.10, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'));

-- VHS_DVD
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('VHS', 5.99, 1, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('DVD', 4.99, 1, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('VHS', 6.99, 3, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('VHS', 5.99, 4, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('DVD', 3.99, 2, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('DVD', 4.99, 5, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('DVD', 3.99, 3, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('DVD', 3.99, 3, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'));
INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id) VALUES ('DVD', 3.99, 4, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'));

-- Rentals
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-20', DATE'2024-03-10', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 1), 0.00, 0.00, 0.00, 0.75, 0.00, 8.21, 1, 1);
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-20', DATE'2024-03-10', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 2), 0.00, 0.00, 0.00, 0.75, 0.00, 10.04, 2, 1);
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-12', DATE'2024-03-02', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 2), 0.00, 2.50, 0.00, 0.75, 0.00, 11.78, 4, 2);
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-15', DATE'2024-03-02', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 2), 2.50, 0.00, 0.00, 0.75, 0.00, 9.63, 7, 3);
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-09', DATE'2024-02-28', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 2), 0.00, 0.00, 0.00, 0.75, 0.00, 8.97, 5, 4);
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-15', DATE'2024-03-05', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 2), 0.00, 0.00, 0.00, 0.75, 0.00, 11.15, 2, 5);
INSERT INTO Rentals (date_returned, date_issued, cost_standard_rate, fees_late_return, fees_damaged, fees_no_rewind, cost_taxes, cost_discount, cost_total, video_id, customer_id)
VALUES (DATE'2024-03-16', DATE'2024-03-06', (SELECT cost_standard_rate FROM VHS_DVD WHERE video_id = 2), 0.00, 0.00, 0.00, 0.75, 0.00, 10.24, 3, 5);


-- Distributor Catelog
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (3.93, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.93, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.22, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'Cinemania Distributors'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (4.10, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.22, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (4.95, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.10, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (5.12, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.30, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (4.95, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.99, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (1.98, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (3.14, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (2.76, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (4.95, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (1.99, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (4.30, 'VHS', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'));
INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES (1.99, 'DVD', (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'));


-- Order Items
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (10, 1, 1);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (5, 1, 5);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (2, 2, 3);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (3, 3, 4);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (4, 3, 7);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (5, 4, 12);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (5, 4, 13);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (10, 5, 6);
INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES (10, 5, 8);

-- Awards
INSERT INTO Awards (movie_id, award_type_id, actor_id, director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id, director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'),
        (SELECT actor_id FROM Actors_Actresses WHERE name = 'Marlon Brando'),
        NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id, director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL,
        (SELECT director_id FROM Directors WHERE name = 'Steven Spielberg'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL,
        (SELECT director_id FROM Directors WHERE name = 'James Cameron'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL, (SELECT director_id FROM Directors WHERE name = 'Peter Jackson'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL, (SELECT director_id FROM Directors WHERE name = 'Guillermo del Toro'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL,
        (SELECT director_id FROM Directors WHERE name = 'Jonathan Demme'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'),
        (SELECT actor_id FROM Actors_Actresses WHERE name = 'Anthony Hopkins'),
        NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actress'),
        (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jodie Foster'),
        NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL, (SELECT director_id FROM Directors WHERE name = 'Robert Zemeckis'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'),
        (SELECT actor_id FROM Actors_Actresses WHERE name = 'Tom Hanks'),
        NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL, (SELECT director_id FROM Directors WHERE name = 'Martin Scorsese'));

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'),
        (SELECT actor_id FROM Actors_Actresses WHERE name = 'Russell Crowe'),
        NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id, director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'),
        NULL, NULL);

INSERT INTO Awards (movie_id, award_type_id, actor_id, director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'),
        NULL,
        (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella'));

INSERT INTO Awards (movie_id, award_type_id, actor_id, director_id)
VALUES ((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'),
        (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Supporting Actress'),
        (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jodie Foster'),
        NULL);

-- Serial Numbers
INSERT INTO Serial_Numbers (serial_number, video_id, distributor_id)
SELECT ABS(DBMS_RANDOM.VALUE(1, 50000)), vd.video_id, d.distributor_id
FROM VHS_DVD vd, Distributors d;

-- Associated People
INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES (
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Marlon Brando'),
    (SELECT director_id FROM Directors WHERE name = 'Francis Ford Coppola')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES (
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Al Pacino'),
    (SELECT director_id FROM Directors WHERE name = 'Francis Ford Coppola')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES (
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Liam Neeson'),
    (SELECT director_id FROM Directors WHERE name = 'Steven Spielberg')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Ben Kingsley'),
    (SELECT director_id FROM Directors WHERE name = 'Steven Spielberg')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Leonardo DiCaprio'),
    (SELECT director_id FROM Directors WHERE name = 'James Cameron')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Kate Winslet'),
    (SELECT director_id FROM Directors WHERE name = 'James Cameron')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Viggo Mortensen'),
    (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Elijah Wood'),
    (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Ian McKellen'),
    (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Sally Hawkins'),
    (SELECT director_id FROM Directors WHERE name = 'Guillermo del Toro')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Michael Shannon'),
    (SELECT director_id FROM Directors WHERE name = 'Guillermo del Toro')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Anthony Hopkins'),
    (SELECT director_id FROM Directors WHERE name = 'Jonathan Demme')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jodie Foster'),
    (SELECT director_id FROM Directors WHERE name = 'Jonathan Demme')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Tom Hanks'),
    (SELECT director_id FROM Directors WHERE name = 'Robert Zemeckis')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Robin Wright'),
    (SELECT director_id FROM Directors WHERE name = 'Robert Zemeckis')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Leonardo DiCaprio'),
    (SELECT director_id FROM Directors WHERE name = 'Martin Scorsese')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jack Nicholson'),
    (SELECT director_id FROM Directors WHERE name = 'Martin Scorsese')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Russell Crowe'),
    (SELECT director_id FROM Directors WHERE name = 'Ridley Scott')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Joaquin Phoenix'),
    (SELECT director_id FROM Directors WHERE name = 'Ridley Scott')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Ralph Fiennes'),
    (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Juliette Binoche'),
    (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella')
);

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES	(
    (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'),
    (SELECT actor_id FROM Actors_Actresses WHERE name = 'Kristin Scott Thomas'),
    (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella')
);
