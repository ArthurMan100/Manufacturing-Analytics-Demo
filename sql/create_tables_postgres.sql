-- sql/create_tables_postgres.sql

DROP TABLE IF EXISTS manufacturing_consumption CASCADE;
DROP TABLE IF EXISTS manufacturing_qc CASCADE;

CREATE TABLE manufacturing_consumption (
    cons_quantity_used REAL,
    cons_work_order TEXT,
    created_part_description TEXT,
    consumed_part_description TEXT,
    consumed_pack_id TEXT,
    consumed_pack_no TEXT
);

CREATE TABLE manufacturing_qc (
    material_no TEXT,
    work_order TEXT,
    material_type TEXT,
    measurement_date DATE,
    variable TEXT,
    measurement_value REAL,
    lsl REAL,
    usl REAL
);
