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