DROP TABLE IF EXISTS dim_actor;

CREATE TABLE dim_actor
(
  actor_tk BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, actor_id INT
, actor_first_name VARCHAR(200)
, actor_last_name VARCHAR(200)
, actor_last_update DATETIME
, actor_full_name VARCHAR(200)
);

CREATE INDEX idx_dim_actor_lookup ON dim_actor(actor_id);

CREATE INDEX idx_dim_actor_tk ON dim_actor(actor_tk);

DROP TABLE IF EXISTS dim_customer;

CREATE TABLE dim_customer
(
  customer_tk BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, customer_id INT
, customer_full_name VARCHAR(200)
, customer_active VARCHAR(3)
, customer_country VARCHAR(200)
, customer_city VARCHAR(200)
, customer_phone VARCHAR(20)
, customer_postal_code VARCHAR(10)
, customer_district VARCHAR(200)
, customer_address VARCHAR(200)
, customer_last_update DATETIME
, customer_email VARCHAR(200)
, customer_last_name VARCHAR(200)
, customer_first_name VARCHAR(200)
);

CREATE INDEX idx_dim_customer_lookup ON dim_customer(customer_id);

CREATE INDEX idx_dim_customer_tk ON dim_customer(customer_tk);

DROP TABLE IF EXISTS dim_staff;

CREATE TABLE dim_staff
(
  staff_tk BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, staff_id INT
, staff_country VARCHAR(200)
, staff_city VARCHAR(200)
, staff_phone VARCHAR(20)
, staff_postal_code VARCHAR(10)
, staff_district VARCHAR(200)
, staff_address VARCHAR(200)
, staff_full_name VARCHAR(200)
, staff_active VARCHAR(3)
, staff_last_update DATETIME
, staff_email VARCHAR(200)
, staff_last_name VARCHAR(200)
, staff_first_name VARCHAR(200)
);

CREATE INDEX idx_dim_staff_lookup ON dim_staff(staff_id);

CREATE INDEX idx_dim_staff_tk ON dim_staff(staff_tk);

DROP TABLE IF EXISTS dim_store;

CREATE TABLE dim_store
(
  store_tk BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, store_id INT
, store_manager_full_name VARCHAR(200)
, store_country VARCHAR(200)
, store_city VARCHAR(200)
, store_phone VARCHAR(20)
, store_postal_code VARCHAR(10)
, store_district VARCHAR(200)
, store_address VARCHAR(200)
, store_active BOOLEAN
, store_email VARCHAR(200)
, store_manager_last_name VARCHAR(200)
, store_manager_first_name VARCHAR(200)
, store_last_update DATETIME
);

CREATE INDEX idx_dim_store_lookup ON dim_store(store_id);

CREATE INDEX idx_dim_store_tk ON dim_store(store_tk);

DROP TABLE IF EXISTS dim_film_actor_bridge;

CREATE TABLE dim_film_actor_bridge
(
  film_tk BIGINT
, actor_tk BIGINT
);

CREATE INDEX idx_dim_film_actor_bridge_lookup ON dim_film_actor_bridge(film_tk, actor_tk);

DROP TABLE IF EXISTS dim_film;

CREATE TABLE dim_film
(
  film_tk BIGINT NOT NULL PRIMARY KEY
, film_id INT
, film_title VARCHAR(128)
, film_description TEXT
, film_release_year INT
, film_rental_duration INT
, film_rental_rate DOUBLE
, film_length INT
, film_replacement_cost DOUBLE
, film_rating VARCHAR(15)
, film_last_update DATETIME
, film_language VARCHAR(20)
, film_rating_description VARCHAR(100)
, film_trailers VARCHAR(3)
, film_behind_the_scenes VARCHAR(3)
, film_commentaries VARCHAR(3)
, film_deleted_scenes VARCHAR(3)
, film_animation_category VARCHAR(3)
, film_children_category VARCHAR(3)
, film_classics_category VARCHAR(3)
, film_comedy_category VARCHAR(3)
, film_documentary_category VARCHAR(3)
, film_drama_category VARCHAR(3)
, film_family_category VARCHAR(3)
, film_foreign_category VARCHAR(3)
, film_games_category VARCHAR(3)
, film_horror_category VARCHAR(3)
, film_music_category VARCHAR(3)
, film_new_category VARCHAR(3)
, film_scifi_category VARCHAR(3)
, film_sports_category VARCHAR(3)
, film_travel_category VARCHAR(3)
);

CREATE UNIQUE INDEX idx_dim_film_pk ON dim_film(film_tk);

CREATE INDEX idx_dim_film_lookup ON dim_film(film_id);

DROP TABLE IF EXISTS dim_time;

CREATE TABLE dim_time
(
  TIME_TK VARCHAR(8)
, TIME_DESCRIPTION VARCHAR(10)
, HOUR INT
, MINUTE INT
, SECOND INT
, AM_PM VARCHAR(2)
);

DROP TABLE IF EXISTS dim_date;

CREATE TABLE dim_date
(
  DATE_TK VARCHAR(8)
, DAY_OF_MONTH INT
, MONTH_OF_YEAR INT
, YEAR INT
, MONTH_OF_YEAR_DESCRIPTION VARCHAR(100)
);

INSERT INTO sakila_dwh.dim_actor (actor_tk,version,date_from,date_to,actor_id,actor_first_name,actor_last_name,actor_last_update,actor_full_name) VALUES
	 (0,0,'1900-01-01 00:00:00','2999-01-01 00:00:00',0,'Not Set','Not Set','1900-01-01 00:00:00','Not Set');

INSERT INTO sakila_dwh.dim_customer (customer_tk,version,date_from,date_to,customer_id,customer_full_name,customer_active,customer_country,customer_city,customer_phone,customer_postal_code,customer_district,customer_address,customer_last_update,customer_email,customer_last_name,customer_first_name) VALUES
	 (0,0,'1900-01-01 00:00:00','1900-01-01 00:00:00',0,'Not Set','NA','Not Set','Not Set','Not Set','Not Set','Not Set','Not Set','1900-01-01 00:00:00','Not Set','Not Set','Not Set');

INSERT INTO sakila_dwh.dim_film (film_tk,film_id,film_title,film_description,film_release_year,film_rental_duration,film_rental_rate,film_length,film_replacement_cost,film_rating,film_last_update,film_language,film_rating_description,film_trailers,film_behind_the_scenes,film_commentaries,film_deleted_scenes,film_animation_category,film_children_category,film_classics_category,film_comedy_category,film_documentary_category,film_drama_category,film_family_category,film_foreign_category,film_games_category,film_horror_category,film_music_category,film_new_category,film_scifi_category,film_sports_category,film_travel_category) VALUES
	 (0,0,'Not Set','Not Set',1900,0,0.0,0,0.0,'NA','1900-01-01 00:00:00','Not Set','Not Set','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA','NA');
