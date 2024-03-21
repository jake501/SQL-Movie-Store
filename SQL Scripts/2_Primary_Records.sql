-- Customer Table
INSERT INTO customer (first_name, last_name, street_address, city, state, zip_code, phone_number, date_first_rented)
VALUES ('Bob', 'Smithly', '123 Drewery Lane', 'Market', 'WA', '98475', '3601112222', DATE '2014-10-04');

INSERT INTO customer (first_name, last_name, street_address, city, state, zip_code, phone_number, date_first_rented)
VALUES ('Josh', 'Harley', '333 Mew Loop', 'Clear', 'WA', '98392', '1234567899', DATE '2017-03-05');

INSERT INTO customer (first_name, last_name, street_address, city, state, zip_code, phone_number, date_first_rented)
VALUES ('Tina', 'Willis', '37444 North Way', 'Market', 'WA', '98476', '3334445555', DATE '2018-10-23');

INSERT INTO customer (first_name, last_name, street_address, city, state, zip_code, phone_number, date_first_rented)
VALUES ('Sam', 'Skywalker', '16 Millenium Falcon', 'Clear', 'WA', '98395', '7665543321', DATE '2024-01-24');

INSERT INTO customer (first_name, last_name, street_address, city, state, zip_code, phone_number, date_first_rented)
VALUES ('Lily', 'Samsung', '321 Bakery Lane', 'Market', 'WA', '98475', '1231234444', DATE '2020-07-30');

-- Distributors Table
INSERT INTO Distributors (distributor_name, contact_name, address, phone_number)
VALUES ('RetroReels Distribution', 'Emily Smith', '799 Ruby Road, Trimont, WA', 8742015698);

INSERT INTO Distributors (distributor_name, contact_name, address, phone_number)
VALUES ('Cinemania Distributors', 'James Johnson', '404 Error Lane, Rando, WA', 3265987410);

INSERT INTO Distributors (distributor_name, contact_name, address, phone_number)
VALUES ('ClassicMedia Hub', 'Sophia Williams', '122003 Normal Loop, Market, WA', 9174056328);

INSERT INTO Distributors (distributor_name, contact_name, address, phone_number)
VALUES ('TimelessTapes Enterprises', 'Michael Brown', '22 Carpenter Dr, Potato, ID', 5820369741);

INSERT INTO Distributors (distributor_name, contact_name, address, phone_number)
VALUES ('VintageView Distributing Co.', 'Olivia Davis', '7665 Industry Plaza, San Somewhere, CA', 2098746531);

-- Actors_Actresses Table
INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Marlon Brando', DATE '1924-04-03');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Al Pacino', DATE '1940-04-25');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Liam Neeson', DATE '1952-06-07');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Ben Kingsley', DATE '1943-12-31');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Leonardo DiCaprio', DATE '1974-11-11');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Kate Winslet', DATE '1975-10-05');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Viggo Mortensen', DATE '1958-10-20');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Elijah Wood', DATE '1981-01-28');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Ian McKellen', DATE '1939-05-25');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Sally Hawkins', DATE '1976-04-27');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Michael Shannon', DATE '1974-08-07');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Anthony Hopkins', DATE '1937-12-31');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Jodie Foster', DATE '1962-11-19');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Tom Hanks', DATE '1956-07-09');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Robin Wright', DATE '1966-04-08');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Jack Nicholson', DATE '1937-04-22');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Russell Crowe', DATE '1964-04-07');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Joaquin Phoenix', DATE '1974-10-28');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Ralph Fiennes', DATE '1962-12-22');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Juliette Binoche', DATE '1964-03-09');

INSERT INTO Actors_Actresses (name, birth_date)
VALUES ('Kristin Scott Thomas', DATE '1960-05-24');

-- Directors Table
INSERT INTO Directors (name, birth_date) VALUES ('Francis Ford Coppola', DATE '1939-04-07');
INSERT INTO Directors (name, birth_date) VALUES ('Steven Spielberg', DATE '1946-12-18');
INSERT INTO Directors (name, birth_date) VALUES ('James Cameron', DATE '1954-08-16');
INSERT INTO Directors (name, birth_date) VALUES ('Peter Jackson', DATE '1961-10-31');
INSERT INTO Directors (name, birth_date) VALUES ('Guillermo del Toro', DATE '1964-10-09');
INSERT INTO Directors (name, birth_date) VALUES ('Jonathan Demme', DATE '1944-02-22');
INSERT INTO Directors (name, birth_date) VALUES ('Robert Zemeckis', DATE '1952-05-14');
INSERT INTO Directors (name, birth_date) VALUES ('Martin Scorsese', DATE '1942-11-17');
INSERT INTO Directors (name, birth_date) VALUES ('Ridley Scott', DATE '1937-11-30');
INSERT INTO Directors (name, birth_date) VALUES ('Anthony Minghella', DATE '1954-01-06');

-- Award_Types Table
INSERT INTO Award_Types (award_name) VALUES ('Best Picture');
INSERT INTO Award_Types (award_name) VALUES ('Best Actor');
INSERT INTO Award_Types (award_name) VALUES ('Best Actress');
INSERT INTO Award_Types (award_name) VALUES ('Best Director');
INSERT INTO Award_Types (award_name) VALUES ('Best Supporting Actor');
INSERT INTO Award_Types (award_name) VALUES ('Best Supporting Actress');

-- Movie_Titles Table
INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('The Godfather', DATE '1972-01-01', 175, 'Crime', 9.2);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('Schindlers List', DATE '1993-01-01', 195, 'Biography', 8.9);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('Titanic', DATE '1997-01-01', 195, 'Drama', 7.8);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('The Lord of the Rings: The Return of the King', DATE '2003-01-01', 201, 'Adventure', 8.9);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('The Shape of Water', DATE '2017-01-01', 123, 'Drama', 7.3);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('The Silence of the Lambs', DATE '1991-01-01', 118, 'Crime', 8.6);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('Forrest Gump', DATE '1994-01-01', 142, 'Drama', 8.8);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('The Departed', DATE '2006-01-01', 151, 'Crime', 8.5);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('Gladiator', DATE '2000-01-01', 155, 'Action', 8.5);

INSERT INTO Movie_Titles (movie_title, year_released, length_of_film, genre, rating)
VALUES ('The English Patient', DATE '1996-01-01', 162, 'Romance', 7.4);
		
		
		