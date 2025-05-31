import pandas as pd
import psycopg2
from sqlalchemy import create_engine
from pathlib import Path
import os
from dotenv import load_dotenv

# Load DB credentials
load_dotenv()

PG_USER = os.getenv("PG_USER")
PG_PASSWORD = os.getenv("PG_PASSWORD")
PG_HOST = os.getenv("PG_HOST")
PG_PORT = os.getenv("PG_PORT", "5432")
PG_DB = os.getenv("PG_DB")

# Create SQLAlchemy engine
conn_str = f"postgresql://{PG_USER}:{PG_PASSWORD}@{PG_HOST}:{PG_PORT}/{PG_DB}"
engine = create_engine(conn_str)

# Paths
data_dir = Path("data")
sql_path = Path("sql/create_tables_postgres.sql")

# Read CSVs
qc_df = pd.read_csv(data_dir / "sample_manufacturing_qc_data.csv", encoding='cp1252')
cons_df = pd.read_csv(data_dir / "sample_manufacturing_consumption_data.csv", encoding='cp1252')


# Create schema + tables
with engine.connect() as conn:
    sql = open(sql_path).read()
    conn.exec_driver_sql(sql)
    print("✅ PostgreSQL tables created.")


# Load data into PostgreSQL tables in the public schema
cons_df.to_sql("manufacturing_consumption", engine, if_exists="append", index=False)
qc_df.to_sql("manufacturing_qc", engine, if_exists="append", index=False)


print("✅ Data loaded into PostgreSQL.")
