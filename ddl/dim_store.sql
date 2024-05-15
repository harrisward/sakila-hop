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
