-- public.actor definition

-- Drop table

-- DROP TABLE public.actor;

CREATE TABLE public.actor (
	actor_id int2 NULL,
	first_name varchar(45) NULL,
	last_name varchar(45) NULL,
	last_update timestamp NULL
);


-- public.address definition

-- Drop table

-- DROP TABLE public.address;

CREATE TABLE public.address (
	address_id int2 NULL,
	address varchar(50) NULL,
	address2 varchar(50) NULL,
	district varchar(20) NULL,
	city_id int2 NULL,
	postal_code varchar(10) NULL,
	phone varchar(20) NULL,
	last_update timestamp NULL
);


-- public.category definition

-- Drop table

-- DROP TABLE public.category;

CREATE TABLE public.category (
	category_id int2 NULL,
	"name" varchar(25) NULL,
	last_update timestamp NULL
);


-- public.city definition

-- Drop table

-- DROP TABLE public.city;

CREATE TABLE public.city (
	city_id int2 NULL,
	city varchar(50) NULL,
	country_id int2 NULL,
	last_update timestamp NULL
);


-- public.country definition

-- Drop table

-- DROP TABLE public.country;

CREATE TABLE public.country (
	country_id int2 NULL,
	country varchar(50) NULL,
	last_update timestamp NULL
);


-- public.customer definition

-- Drop table

-- DROP TABLE public.customer;

CREATE TABLE public.customer (
	customer_id int2 NULL,
	store_id int2 NULL,
	first_name varchar(45) NULL,
	last_name varchar(45) NULL,
	email varchar(50) NULL,
	address_id int2 NULL,
	active bool NULL,
	create_date timestamp NULL,
	last_update timestamp NULL
);


-- public.film definition

-- Drop table

-- DROP TABLE public.film;

CREATE TABLE public.film (
	film_id int2 NULL,
	title varchar(128) NULL,
	description varchar(16383) NULL,
	release_year timestamp NULL,
	language_id int2 NULL,
	original_language_id int2 NULL,
	rental_duration int2 NULL,
	rental_rate numeric(6, 2) NULL,
	length int2 NULL,
	replacement_cost numeric(7, 2) NULL,
	rating varchar(5) NULL,
	special_features varchar(54) NULL,
	last_update timestamp NULL
);


-- public.film_actor definition

-- Drop table

-- DROP TABLE public.film_actor;

CREATE TABLE public.film_actor (
	actor_id int2 NULL,
	film_id int2 NULL,
	last_update timestamp NULL
);


-- public.film_category definition

-- Drop table

-- DROP TABLE public.film_category;

CREATE TABLE public.film_category (
	film_id int2 NULL,
	category_id int2 NULL,
	last_update timestamp NULL
);


-- public.film_text definition

-- Drop table

-- DROP TABLE public.film_text;

CREATE TABLE public.film_text (
	film_id int2 NULL,
	title varchar(255) NULL,
	description varchar(16383) NULL
);


-- public.inventory definition

-- Drop table

-- DROP TABLE public.inventory;

CREATE TABLE public.inventory (
	inventory_id int4 NULL,
	film_id int2 NULL,
	store_id int2 NULL,
	last_update timestamp NULL
);


-- public."language" definition

-- Drop table

-- DROP TABLE public."language";

CREATE TABLE public."language" (
	language_id int2 NULL,
	"name" varchar(20) NULL,
	last_update timestamp NULL
);


-- public.payment definition

-- Drop table

-- DROP TABLE public.payment;

CREATE TABLE public.payment (
	payment_id int2 NULL,
	customer_id int2 NULL,
	staff_id int2 NULL,
	rental_id int4 NULL,
	amount numeric(7, 2) NULL,
	payment_date timestamp NULL,
	last_update timestamp NULL
);


-- public.rental definition

-- Drop table

-- DROP TABLE public.rental;

CREATE TABLE public.rental (
	rental_id int4 NULL,
	rental_date timestamp NULL,
	inventory_id int4 NULL,
	customer_id int2 NULL,
	return_date timestamp NULL,
	staff_id int2 NULL,
	last_update timestamp NULL
);


-- public.staff definition

-- Drop table

-- DROP TABLE public.staff;

CREATE TABLE public.staff (
	staff_id int2 NULL,
	first_name varchar(45) NULL,
	last_name varchar(45) NULL,
	address_id int2 NULL,
	email varchar(50) NULL,
	store_id int2 NULL,
	active bool NULL,
	username varchar(16) NULL,
	"password" varchar(40) NULL,
	last_update timestamp NULL
);


-- public.store definition

-- Drop table

-- DROP TABLE public.store;

CREATE TABLE public.store (
	store_id int2 NULL,
	manager_staff_id int2 NULL,
	address_id int2 NULL,
	last_update timestamp NULL
);