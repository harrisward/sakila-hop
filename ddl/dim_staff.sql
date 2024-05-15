CREATE TABLE dim_staff
(
  staff_tk BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, staff_id INT
, first_name VARCHAR(100)
, last_name VARCHAR(100)
, email VARCHAR(200)
, last_update DATETIME
, staff_active VARCHAR(3)
, full_name VARCHAR(200)
, address VARCHAR(200)
, district VARCHAR(200)
, postal_code VARCHAR(10)
, phone VARCHAR(20)
, location VARCHAR(200)
, city VARCHAR(200)
, country VARCHAR(200)
)
;CREATE INDEX idx_dim_staff_lookup ON dim_staff(staff_id)
;
CREATE INDEX idx_dim_staff_tk ON dim_staff(staff_tk)
;
