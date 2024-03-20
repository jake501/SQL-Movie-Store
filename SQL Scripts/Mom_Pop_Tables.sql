-- 
-- Regular Tables
--

CREATE TABLE IF NOT EXISTS Customer (
		customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
		first_name CHAR(50),
		last_name CHAR(50),
		street_address CHAR(130),
		city CHAR(130),
		state CHAR(2),
		zip_code NUMERIC,
		phone_number NUMERIC,
		date_first_rented DATE				
		);
						
CREATE TABLE IF NOT EXISTS Distributors (
		distributor_id INTEGER PRIMARY KEY AUTOINCREMENT,
		distributor_name VARCHAR (130),
		contact_name VARCHAR(130),
		address VARCHAR(130),
		phone_number NUMERIC
		);
						
CREATE TABLE IF NOT EXISTS Actors_Actresses (
		actor_id INTEGER PRIMARY KEY AUTOINCREMENT,
		name CHAR(130),
		birth_date DATE
		);
		
								
CREATE TABLE IF NOT EXISTS Directors (
		director_id INTEGER PRIMARY KEY AUTOINCREMENT,
		name CHAR(130),
		birth_date DATE
		);
		
								
CREATE TABLE IF NOT EXISTS Award_Types (
		award_type_id INTEGER PRIMARY KEY AUTOINCREMENT,
		award_name CHAR(130)
		);
										
CREATE TABLE IF NOT EXISTS Movie_Titles (
		movie_id INTEGER PRIMARY KEY AUTOINCREMENT,
		movie_title CHAR(255),
		year_released DATE,
		length_of_film NUMERIC,
		genre CHAR(130),
		rating CHAR(10)
		);
			
--
-- Related Tables
--

CREATE TABLE IF NOT EXISTS Orders (
		order_id INTEGER PRIMARY KEY AUTOINCREMENT,
		purchase_date DATE,
		shipping_cost FLOAT,
		distributor_id INTEGER,
		FOREIGN KEY (distributor_id) REFERENCES Distributors (distributor_id)
		);

CREATE TABLE IF NOT EXISTS VHS_DVD (
		video_id INTEGER PRIMARY KEY AUTOINCREMENT,
		format CHAR(10),
		cost_standard_rate FLOAT,
		order_id INTEGER,
		movie_id INTEGER,
		FOREIGN KEY (order_id) REFERENCES Orders(order_id),
		FOREIGN KEY (movie_id) REFERENCES Movie_Titles(movie_id)
		
		);

CREATE TABLE IF NOT EXISTS Distributor_Catalog (
		catalog_id INTEGER PRIMARY KEY AUTOINCREMENT,
		wholesale_price FLOAT,
		format CHAR(10),
		distributor_id INTEGER,
		movie_id INTEGER,
		FOREIGN KEY (distributor_id) REFERENCES Distributors (distributor_id),
		FOREIGN KEY (movie_id) REFERENCES Movie_Titles(movie_id)
);

CREATE TABLE IF NOT EXISTS Rentals (
		rental_id INTEGER PRIMARY KEY AUTOINCREMENT,
		date_returned DATE,
		date_issued DATE,
		cost_standard_rate FLOAT,
		fees_late_return FLOAT,
		fees_damaged FLOAT,
		fees_no_rewind FLOAT,
		cost_taxes FLOAT,
		cost_discount FLOAT,
		cost_total FLOAT,
		video_id INTEGER,
		customer_id INTEGER,
		FOREIGN KEY (video_id) REFERENCES VHS_DVD (video_id)
		FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

--
-- Reference Tables
--

CREATE TABLE IF NOT EXISTS Order_Items (
		quantity INTEGER,
		price_per_item FLOAT,
		order_id INTEGER,
		catalog_id INTEGER,
		FOREIGN KEY (order_id) REFERENCES Orders(order_id),
		FOREIGN KEY (catalog_id) REFERENCES Distributor_Catalog(catalog_id)
);

CREATE TABLE IF NOT EXISTS Awards (
		actor_id INTEGER,
		movie_id INTEGER,
		director_id INTEGER,
		award_type_id INTEGER,
		FOREIGN KEY (movie_id) REFERENCES Movie_Titles(movie_id),
		FOREIGN KEY (actor_id) REFERENCES Actors_Actresses(actor_id),
		FOREIGN KEY (director_id) REFERENCES Directors(director_id),
		FOREIGN KEY (award_type_id) REFERENCES Award_Types(award_type_id)
);

CREATE TABLE IF NOT EXISTS Serial_Numbers (
		serial_number CHAR(255),
		video_id INTEGER,
		distributor_id INTEGER,
		FOREIGN KEY (video_id) REFERENCES VHS_DVD(video_id),
		FOREIGN KEY (distributor_id) REFERENCES Distributors (distributor_id)
);

CREATE TABLE IF NOT EXISTS Associated_People (
		actor_id INTEGER,
		movie_id INTEGER,
		director_id INTEGER,
		FOREIGN KEY (movie_id) REFERENCES Movie_Titles(movie_id),
		FOREIGN KEY (actor_id) REFERENCES Actors_Actresses(actor_id),
		FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);