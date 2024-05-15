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
, film_release_year DATETIME
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

DROP TABLE dim_date;

CREATE TABLE dim_date
(
  DATE_TK VARCHAR(8)
, DAY_OF_MONTH INT
, MONTH_OF_YEAR INT
, YEAR INT
, MONTH_OF_YEAR_DESCRIPTION VARCHAR(100)
);