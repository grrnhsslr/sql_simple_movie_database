-- create table for movies 
CREATE TABLE IF NOT EXISTS movie(
	movie_id serial PRIMARY KEY,
	title varchar NOT NULL,
	description varchar
);

CREATE TABLE IF NOT EXISTS tickets(
	ticket_id serial PRIMARY KEY,
	amount integer,
	price integer
);

ALTER TABLE tickets
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);

SELECT * FROM movie;

CREATE TABLE IF NOT EXISTS customers(
	customer_id serial PRIMARY KEY,
	firstname varchar(20),
	lastname varchar(20)
);
