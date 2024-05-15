CREATE TABLE dim_staff
(
  staff_tk BIGINT NOT NULL PRIMARY KEY
, version INT
, date_from DATETIME
, date_to DATETIME
, staff_id INT
, staff_country VARCHAR(200)
, staff_city VARCHAR(200)
, staff_location LONGBLOB
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
)
;CREATE INDEX idx_dim_staff_lookup ON dim_staff(staff_id)
;
CREATE INDEX idx_dim_staff_tk ON dim_staff(staff_tk)
;
