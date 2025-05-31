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
cd your-repo-name
```
