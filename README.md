# 🧪 Manufacturing Quality Analytics Dashboard

This project builds a reproducible data pipeline and interactive dashboard to track and analyze manufacturing quality control (QC) data. It includes data ingestion from CSVs to PostgreSQL, metric calculations (including Cp and Cpk), and visualization through Power BI.

---

## 📁 Project Structure
```
├── .env # Environment variables for DB connection
├── requirements.txt # Python dependencies
├── data/ # Dummy manufacturing datasets (CSV)
├── sql/
│ ├── create_tables_postgres.sql # Schema for raw QC data
│ └── create_cp_cpk_tables.sql # Schema for Cp/Cpk metric tables
├── scripts/
│ └── etl_pipeline_postgres.py # ETL: Loads CSVs into PostgreSQL
├── notebook/
│ └── cp-cpk-table.ipynb # Calculates Cp/Cpk metrics and saves to DB
├── power-bi/
│ └── manufacturing-analytics.pbix # Power BI dashboard
└── README.md
```

---

## ⚙️ Environment Setup

### 1. Clone the Repository

```bash
git clone https://github.com/ArthurMan100/Manufacturing-Analytics-Demo.git
cd Manufacturing-Analytics-Demo
```

### 2. Create a .env File
```
PG_USER=your_postgres_username
PG_PASSWORD=your_postgres_password
PG_HOST=localhost
PG_PORT=5432
PG_DB=your_database_name
```

### 3. 📦 Install Requirements
```
pip install -r requirements.txt
```

### 4. 🛠️ Database Setup
1. Create a PostgreSQL Database - Match the name in your .env file.
2. Run SQL Table Scripts
   
---
## 🚀 Load and Process Data

### 1. Load CSVs to PostgreSQL
Run the ETL script:
```
python scripts/etl_pipeline_postgres.py
```
This reads the dummy datasets and loads them into your PostgreSQL tables.

### 2. Calculate Cp/Cpk Metrics
Open and run the Jupyter notebook:
```
jupyter notebook notebook/cp-cpk-table.ipynb
```
This notebook:

-Retrieves raw QC data from PostgreSQL

-Computes Cp (process capability) and Cpk (process centering)

-Stores the results in new metric tables

Cp/Cpk are critical in manufacturing analytics:
-Cp measures how well a process fits within specification limits.

-Cpk evaluates how centered the process is.

-These indicators are essential for identifying variability, reducing defects, and ensuring quality control over time.

## 📊 Power BI Dashboard
Open:
```
power-bi/manufacturing-analytics.pbix
```
Connect Power BI to PostgreSQL:
-Use the credentials from your .env

-Choose the tables containing raw data and Cp/Cpk metrics

Dashboard Features:
-Real-time QC trends for each variable

-Consumption history: see what materials were used for each work order

-Cp/Cpk visualizations to monitor process performance

-Easy filtering by material, work order, or date

---
