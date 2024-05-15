DROP TABLE IF EXISTS dim_film_actor_bridge;

CREATE TABLE dim_film_actor_bridge
(
  film_tk BIGINT
, actor_tk BIGINT
);

CREATE INDEX idx_dim_film_actor_bridge_lookup ON dim_film_actor_bridge(film_tk, actor_tk);