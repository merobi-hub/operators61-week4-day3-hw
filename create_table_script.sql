--customers table creation
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150),
	email_address VARCHAR(75),
	club_member BIT,
	date_last_visit DATE DEFAULT CURRENT_DATE
);

--movies table creation
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	studio VARCHAR(100),
	distributor VARCHAR(100),
	lead_actor VARCHAR(100),
	amount NUMERIC(5,2),
	run_time TIME,
	film BIT, -- y/n 1/0 value
	film_year NUMERIC(4),
	film_language VARCHAR(50),
	country VARCHAR(50),
	subtitles BIT,
	midnight BIT,
	sun_matinee BIT,
	rating VARCHAR(5),
	silent BIT,
	b_w BIT,
	mono BIT,
	director VARCHAR(100),
	genre VARCHAR(50),
	series VARCHAR(100)
);

--inventory table creation
CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER,
	item_type VARCHAR(50)
);

--tickets table creation
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	sub_total NUMERIC(2,2),
	ticket_date DATE DEFAULT CURRENT_DATE,
	total_cost NUMERIC(2,2),
	adult BIT,
	child BIT,
	senior BIT,
	student BIT,
	sun_matinee BIT,
	midnight BIT,
	movie_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

--merch table creation
CREATE TABLE merch(
	merch_id SERIAL PRIMARY KEY,
	upc INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES inventory(upc)
);

--concessions table creation
CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	brand VARCHAR(150),
	food BIT,
	bev BIT,
	amount NUMERIC(2,2),
	upc INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES inventory(upc)
);

--order table creation
CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	ticket_id INTEGER,
	item_id INTEGER,
	customer_id INTEGER NOT NULL,
	merch_id INTEGER,
	upc INTEGER,
	FOREIGN KEY(upc) REFERENCES inventory(upc),
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
	FOREIGN KEY(item_id) REFERENCES concessions(item_id),
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(merch_id) REFERENCES merch(merch_id)
)

