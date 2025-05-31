# 🧪 Manufacturing Quality Analytics Dashboard

This project builds a reproducible data pipeline and interactive dashboard to track and analyze manufacturing quality control (QC) data. It includes data ingestion from CSVs to PostgreSQL, metric calculations (including Cp and Cpk), and visualization through Power BI.

---

## 📁 Project Structure
.
├── .env # Environment variables for DB connection
├── requirements.txt # Python dependencies
├── data/ # Input CSV files
├── sql/ # SQL schema files (if applicable)
├── scripts/
│ ├── postgres.py # Loads CSVs into PostgreSQL
│ └── cp-cpk-table.ipynb # Calculates quality metrics
├── dashboards/
│ └── powerbi_dashboard.pbix # Power BI dashboard
└── README.md
.
