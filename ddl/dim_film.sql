DROP TABLE IF EXISTS dim_film;

CREATE TABLE dim_film
(
  film_tk BIGINT NOT NULL PRIMARY KEY
, film_id INT
, title VARCHAR(128)
, description TEXT
, release_year DATETIME
, language_id INT
, original_language_id INT
, rental_duration INT
, rental_rate DOUBLE
, length INT
, replacement_cost DOUBLE
, rating VARCHAR(5)
, special_features VARCHAR(54)
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

CREATE INDEX idx_dim_film_lookup ON dim_film(film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update, language, rating_description, trailers, behind_the_scenes, commentaries, deleted_scenes, animation_category, children_category, classics_category, comedy_category, documentary_category, drame_category, family_category, foreign_category, games_category, horror_category, music_category, new_category, scifi_category, sports_category, travel_category);