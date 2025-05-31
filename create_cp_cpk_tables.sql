-- create_cp_cpk_tables.sql

-- Wide table
CREATE TABLE IF NOT EXISTS cp_cpk_wide (
    id SERIAL PRIMARY KEY,           -- unique PK for this table
    calculation_id TEXT,             -- foreign key reference, not unique here
    work_order TEXT,
    material_no TEXT,
    material_type TEXT,
    variable TEXT,
    measurement_date TIMESTAMP,
    measurement_value FLOAT,
    lsl FLOAT,
    usl FLOAT,
    moving_range FLOAT,
    sigma_within FLOAT,
    mean_value FLOAT,
    cp FLOAT,
    cpk FLOAT,
    calculation_time TIMESTAMP
);


-- Summary table
CREATE TABLE IF NOT EXISTS cp_cpk_summary (
    calculation_id TEXT PRIMARY KEY,
    material_no TEXT,
    material_type TEXT,
    variable TEXT,
    cp FLOAT,
    cpk FLOAT,
    calculation_time TIMESTAMP
);
