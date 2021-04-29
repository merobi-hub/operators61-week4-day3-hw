--Insert into customers table
INSERT INTO customers(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info,
	email_address,
	club_member
)VALUES(
	1,
	'Mister',
	'Sister',
	'123 Home St, Town, State 00000',
	'3333-3333-3333-3333 623 01/24',
	'mistersister@gmail.com',
	bit '1'
);
--insert into movies
INSERT INTO movies(
	movie_id,
	studio,
	distributor,
	lead_actor,
	amount,
	run_time,
	film,
	film_year,
	film_language,
	country,
	subtitles,
	midnight,
	sun_matinee,
	rating,
	silent,
	b_w,
	mono,
	director,
	genre,
	series
)VALUES(
	1,
	'Twentieth Century Fox',
	'Gladden Entertainment',
	'Christian Slater',
	100,
	'01:40:00',
	bit '1',
	1989,
	'English',
	'US',
	bit '0',
	bit '0',
	bit '0',
	'PG-13',
	bit '0',
	bit '0',
	bit '0',
	'Clifford,Graeme',
	'drama',
	'adult skate'
);
--insert into inventory table
INSERT INTO inventory(
	upc,
	product_amount,
	item_type
)VALUES(
	1,
	10,
	'candy'
);
--insert into tickets table
INSERT INTO tickets(
	ticket_id,
	sub_total,
	total_cost,
	adult,
	child,
	senior,
	student,
	sun_matinee,
	midnight,
	movie_id,
	customer_id
)VALUES(
	1,
	0.50,
	0.99,
	bit '1',
	bit '0',
	bit '0',
	bit '0',
	bit '0',
	bit '1',
	1,
	1
);
--insert into merch table
INSERT INTO merch(
	merch_id,
	upc
)VALUES(
	1,
	1
);
--insert into concessions table
INSERT INTO concessions(
	item_id,
	brand,
	food,
	bev,
	amount,
	upc
)VALUES(
	1,
	'Hershey',
	bit '1',
	bit '0',
	0.5,
	1
);
--insert into order table
INSERT INTO orders(
	order_id,
	ticket_id,
	item_id,
	customer_id,
	merch_id,
	upc
)VALUES(
	1,
	1,
	1,
	1,
	1,
	1
)

