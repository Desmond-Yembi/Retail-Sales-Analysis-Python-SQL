# Retail-Sales-Analysis-Python-SQL

> **An end-to-end retail data analytics project demonstrating data extraction, cleaning, transformation, feature engineering, and SQL-based business analysis using Python and Microsoft SQL Server.**

---

## Project Overview

Retail organizations generate large volumes of transactional data every day. However, raw data is often incomplete, inconsistent, and not immediately suitable for business analysis.

This project demonstrates a complete **ETL (Extract, Transform, Load)** workflow by using **Python** to clean and transform retail sales data before loading it into **Microsoft SQL Server** for analytical querying. The project focuses on preparing high-quality data and answering business questions that support data-driven decision-making.

---

## Objectives

* Import and explore a retail sales dataset.
* Clean and preprocess raw retail transaction data.
* Perform feature engineering to create new business metrics.
* Load the transformed dataset into Microsoft SQL Server.
* Analyze sales performance using SQL.
* Generate actionable business insights.

---

## Dataset

The project uses a retail orders dataset containing transactional sales records, including:

* Order ID
* Order Date
* Ship Mode
* Customer Information
* Product Category
* Product Name
* Region
* Quantity
* Cost Price
* List Price
* Discount Percentage
* Sales Price
* Profit

---

## Tools & Technologies

| Tool                 | Purpose                        |
| -------------------- | ------------------------------ |
| Python               | Data Cleaning & Transformation |
| Pandas               | Data Manipulation              |
| Jupyter Notebook     | Analysis Environment           |
| Microsoft SQL Server | Data Storage & Querying        |
| SQL                  | Business Analysis              |
| Git & GitHub         | Version Control                |

---

## Project Workflow

```text
Raw Dataset
      │
      ▼
Data Exploration
      │
      ▼
Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Load into SQL Server
      │
      ▼
SQL Business Analysis
      │
      ▼
Business Insights
```

---

# Data Cleaning Process

The dataset was prepared by performing the following preprocessing tasks:

* Imported the dataset using Pandas
* Explored dataset structure and data types
* Standardized column names
* Removed unnecessary columns
* Checked for missing values
* Validated data consistency
* Prepared the dataset for SQL analysis

---

# Feature Engineering

New business metrics were created to support analysis, including:

* Discount Amount
* Sales Price
* Profit
* Total Sales Metrics

These engineered features improve the quality of downstream business analysis.

---

# SQL Analysis

After cleaning, the dataset was imported into **Microsoft SQL Server** for querying and analysis.

Example business questions include:

* Which product categories generate the highest sales?
* Which products contribute the highest profit?
* Which regions perform best?
* What are the monthly sales trends?
* Which products receive the highest discounts?
* Which customer segments generate the most revenue?
* Which shipping modes are most frequently used?

---

# Skills Demonstrated

* Data Cleaning
* Data Transformation
* Feature Engineering
* ETL Pipeline Development
* SQL Querying
* Exploratory Data Analysis (EDA)
* Data Validation
* Business Analytics
* Relational Database Management
* Version Control with Git

---

# Repository Structure

```text
Retail-Sales-Analysis-Python-SQL/
│
├── data/
│   └── orders.csv
│
├── notebooks/
│   └── Retail_orders_analysis.ipynb
│
├── sql/
│   └── retail_analysis.sql
│
├── images/
│   ├── workflow.png
│   ├── dashboard.png
│   └── sql_results.png
│
├── README.md
├── requirements.txt
└── LICENSE
```

---

# Key Business Insights

The project enables organizations to:

* Monitor sales performance across products and regions.
* Identify high-performing and low-performing products.
* Evaluate the impact of discounts on profitability.
* Support inventory planning through sales trends.
* Improve strategic decision-making using transaction data.

---

# Learning Outcomes

Through this project, I strengthened my ability to:

* Build end-to-end data analysis workflows.
* Clean and prepare real-world datasets.
* Design efficient ETL pipelines.
* Integrate Python with SQL Server.
* Perform business-oriented SQL analysis.
* Present actionable insights from transactional data.

---

# Future Improvements

Potential enhancements include:

* Develop an interactive **Power BI dashboard** connected to SQL Server.
* Automate the ETL pipeline using Python scripts.
* Perform advanced exploratory data analysis (EDA).
* Build predictive models for sales forecasting.
* Deploy the project using cloud-based database services.

---

# Getting Started

### Clone the repository

```bash
git clone https://github.com/yourusername/Retail-Sales-Analysis-Python-SQL.git
```

### Install dependencies

```bash
pip install -r requirements.txt
```

### Open the notebook

```bash
jupyter notebook
```

### Run the SQL script

Execute the SQL file in **Microsoft SQL Server Management Studio (SSMS)** after importing the cleaned dataset.

---

# Author

**Desmond Yembi**

**Data Analyst | Python | SQL | Power BI | Excel**

Passionate about transforming raw data into actionable insights through data cleaning, analytics, business intelligence, and visualization.

