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