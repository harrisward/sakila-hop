DROP TABLE IF EXISTS dim_film;

CREATE TABLE dim_film
(
  film_tk BIGINT NOT NULL PRIMARY KEY
, film_id INT
, title VARCHAR(128)
, description TEXT
, release_year DATETIME
, rental_duration INT
, rental_rate DOUBLE
, length INT
, replacement_cost DOUBLE
, rating VARCHAR(15)
, last_update DATETIME
, language VARCHAR(20)
, rating_description VARCHAR(100)
, trailers VARCHAR(3)
, behind_the_scenes VARCHAR(3)
, commentaries VARCHAR(3)
, deleted_scenes VARCHAR(3)
, animation_category VARCHAR(3)
, children_category VARCHAR(3)
, classics_category VARCHAR(3)
, comedy_category VARCHAR(3)
, documentary_category VARCHAR(3)
, drame_category VARCHAR(3)
, family_category VARCHAR(3)
, foreign_category VARCHAR(3)
, games_category VARCHAR(3)
, horror_category VARCHAR(3)
, music_category VARCHAR(3)
, new_category VARCHAR(3)
, scifi_category VARCHAR(3)
, sports_category VARCHAR(3)
, travel_category VARCHAR(3)
);

CREATE UNIQUE INDEX idx_dim_film_pk ON dim_film(film_tk);

CREATE INDEX idx_dim_film_lookup ON dim_film(film_id);