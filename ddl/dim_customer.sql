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