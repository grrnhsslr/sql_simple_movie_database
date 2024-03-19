-- create a table for movies
CREATE TABLE IF NOT EXISTS movie(
    movie_id serial PRIMARY KEY,
    title varchar(50) NOT NULL,
    description varchar(250)
);

-- create a table for tickets
CREATE TABLE IF NOT EXISTS tickets(
    ticket_id serial PRIMARY KEY,
    amount integer NOT NULL,
    price integer,
    movie_id integer,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

-- create a table for customers
CREATE TABLE IF NOT EXISTS customers(
    customer_id serial PRIMARY KEY,
    firstname varchar(20),
    lastname varchar(20)
);

ALTER TABLE customers 
ADD COLUMN tickets_purchased integer NOT NULL;

ALTER TABLE customers
ADD FOREIGN KEY(tickets_purchased) REFERENCES movie(movie_id)