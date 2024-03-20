INSERT INTO Orders (purchase_date, shipping_cost, total_wholesale, distributor_id)
VALUES 	('2020-01-12', 12.23, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution')),
		('2021-07-27', 9.66, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'Cinemania Distributors')),
		('2020-11-22', 15.92, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises')),
		('2023-12-12', 7.33, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub')),
		('2022-03-01', 17.10, (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'));

INSERT INTO VHS_DVD (format, cost_standard_rate, order_id, movie_id)
VALUES 	('VHS', 5.99, 1, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather')),
		('DVD', 4.99, 1, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather')),
		('VHS', 6.99, 3, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King')),
		('VHS', 5.99, 4, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King')),
		('DVD', 3.99, 2, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump')),
		('DVD', 4.99, 5, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator')),
		('DVD', 3.99, 3, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic')),
		('DVD', 3.99, 3, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs')),
		('DVD', 3.99, 4, (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'));

INSERT INTO Distributor_Catalog (wholesale_price, format, distributor_id, movie_id)
VALUES 	(3.93, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather')),
		(2.93, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather')),
		(2.22, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'Cinemania Distributors'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King')),
		(4.10, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King')),
		(2.22, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water')),
		(4.95, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List')),
		(2.10, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs')),
		(5.12, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator')),
		(2.30, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs')),
		(4.95, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump')),
		(2.99, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'TimelessTapes Enterprises'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump')),
		(1.98, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic')),
		(3.14, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient')),
		(2.76, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient')),
		(4.95, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'VintageView Distributing Co.'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic')),
		(1.99, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator')),
		(4.30, "VHS", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'ClassicMedia Hub'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed')),
		(1.99, "DVD", (SELECT distributor_id FROM Distributors WHERE distributor_name = 'RetroReels Distribution'), (SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed')),
;

INSERT INTO Order_Items (quantity, order_id, catalog_id)
VALUES 	(10, 1, 1)
		(5, 1, 5)
		(2, 2, 3)
		(3, 3, 4)
		(4, 3, 7)
		(5, 4, 12)
		(5, 4, 13)
		(10, 5, 6)
		(10, 5, 8)
;

INSERT INTO Awards (movie_id, award_type_id, actor_id,  director_id)
VALUES 	((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Marlon Brando'), NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Steven Spielberg')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'James Cameron')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Guillermo del Toro')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Jonathan Demme')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Anthony Hopkins'), NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'), 3(SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actress'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jodie Foster'), NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Robert Zemeckis')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Tom Hanks'), NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Martin Scorsese')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Actor'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Russell Crowe'), NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Picture'), NULL, NULL),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Director'), NULL, (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'), (SELECT award_type_id FROM Award_Types WHERE award_name = 'Best Supporting Actress'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jodie Foster'), NULL);

INSERT INTO Serial_Numbers (serial_number, video_id, distributor_id)
VALUES 	('Best Actor'),
;

INSERT INTO Associated_People (movie_id, actor_id, director_id)
VALUES 	((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Marlon Brando'), (SELECT director_id FROM Directors WHERE name = 'Francis Ford Coppola')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Godfather'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Al Pacino'), (SELECT director_id FROM Directors WHERE name = 'Francis Ford Coppola')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Liam Neeson'), (SELECT director_id FROM Directors WHERE name = 'Steven Spielberg')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Schindlers List'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Ben Kingsley'), (SELECT director_id FROM Directors WHERE name = 'Steven Spielberg')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Leonardo DiCaprio'), (SELECT director_id FROM Directors WHERE name = 'James Cameron')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Titanic'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Kate Winslet'), (SELECT director_id FROM Directors WHERE name = 'James Cameron')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Viggo Mortensen'), (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Elijah Wood'), (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Lord of the Rings: The Return of the King'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Ian McKellen'), (SELECT director_id FROM Directors WHERE name = 'Peter Jackson')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Sally Hawkins'), (SELECT director_id FROM Directors WHERE name = 'Guillermo del Toro')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Shape of Water'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Michael Shannon'), (SELECT director_id FROM Directors WHERE name = 'Guillermo del Toro')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Anthony Hopkins'), (SELECT director_id FROM Directors WHERE name = 'Jonathan Demme')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Silence of the Lambs'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jodie Foster'), (SELECT director_id FROM Directors WHERE name = 'Jonathan Demme')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Tom Hanks'), (SELECT director_id FROM Directors WHERE name = 'Robert Zemeckis')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Forrest Gump'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Robin Wright'), (SELECT director_id FROM Directors WHERE name = 'Robert Zemeckis')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Leonardo DiCaprio'), (SELECT director_id FROM Directors WHERE name = 'Martin Scorsese')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The Departed'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Jack Nicholson'), (SELECT director_id FROM Directors WHERE name = 'Martin Scorsese')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Russell Crowe'), (SELECT director_id FROM Directors WHERE name = 'Ridley Scott')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'Gladiator'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Joaquin Phoenix'), (SELECT director_id FROM Directors WHERE name = 'Ridley Scott')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Ralph Fiennes'), (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Juliette Binoche'), (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella')),
		((SELECT movie_id FROM Movie_Titles WHERE movie_title = 'The English Patient'), (SELECT actor_id FROM Actors_Actresses WHERE name = 'Kristin Scott Thomas'), (SELECT director_id FROM Directors WHERE name = 'Anthony Minghella'));
