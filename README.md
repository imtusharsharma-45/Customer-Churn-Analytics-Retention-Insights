# Customer Churn Analytics & Retention Insights

## 📊 Project Preview

![Customer Churn Dashboard](Screenshots/Customer%20Churn%20%26%20Retention%20Insights%20Dashboard.png)

---

# 📌 Project Overview

Customer churn is one of the biggest challenges for subscription-based businesses because losing existing customers directly impacts revenue and increases customer acquisition costs.

This end-to-end analytics project analyzes **7,043 telecom customer records** to identify the major factors associated with customer churn and provide actionable retention insights.

The project demonstrates a complete Data Analytics workflow including **Python (Data Cleaning & EDA), SQL Server (Business Analysis), and Power BI (Interactive Dashboard)**.

The objective is to transform raw customer data into meaningful business insights that support customer retention and decision-making.

---

# 🎯 Business Problem

Telecom companies lose a significant number of customers every year due to contract preferences, pricing, service quality, and customer behavior.

Without understanding why customers leave, businesses struggle to design effective retention strategies.

This project aims to answer critical business questions by analyzing customer demographics, contracts, internet services, payment methods, tenure, and monthly charges.

---

# 🔄 Project Workflow

```

Raw Dataset
↓
Python (Data Cleaning & Exploratory Data Analysis)
↓
SQL Server (20 Business Analysis Queries)
↓
Power BI Dashboard
↓
Business Insights
↓
Business Recommendations

```

---

# ❓ Business Questions

This project answers the following business questions:

- What is the overall customer churn rate?
- Which contract type has the highest churn?
- Which internet service category experiences the highest churn?
- Are customers with higher monthly charges more likely to churn?
- Do new customers churn more frequently than long-term customers?
- Which payment methods are associated with higher churn?
- Does customer gender significantly impact churn?
- Which customer segments require greater retention efforts?

---

# 🛠️ Tools & Technologies

| Technology | Purpose |
|------------|----------|
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| NumPy | Numerical Analysis |
| Matplotlib | Data Visualization |
| Seaborn | Exploratory Data Analysis |
| SQL Server | Business Analysis |
| Power BI | Dashboard Development |
| DAX | KPI Calculations |
| VS Code | Development Environment |
| Git & GitHub | Version Control |

---

# 📂 Dataset Information

The project uses the **IBM Telco Customer Churn Dataset** containing customer demographic, service usage, billing, and churn information.

### Dataset Summary

| Metric | Value |
|---------|--------:|
| Total Records | 7,043 |
| Total Columns | 21 |
| Churn Customers | 1,869 |
| Retained Customers | 5,174 |
| Churn Rate | 26.54% |

### Key Attributes

- Customer ID
- Gender
- Senior Citizen
- Partner
- Dependents
- Tenure
- Phone Service
- Internet Service
- Online Security
- Online Backup
- Device Protection
- Tech Support
- Streaming TV
- Streaming Movies
- Contract
- Paperless Billing
- Payment Method
- Monthly Charges
- Total Charges
- Churn

---

# 🧹 Data Preparation

The dataset was cleaned before analysis to improve data quality and ensure accurate business reporting.

### Data Cleaning Steps

- Checked dataset dimensions
- Verified data types
- Checked duplicate records
- Identified missing values
- Converted **TotalCharges** to numeric format
- Handled blank values
- Validated categorical variables
- Prepared dataset for SQL and Power BI analysis

The dataset contained **11 blank values** in the **TotalCharges** column, which were removed before performing numerical analysis.

---

# 📊 Exploratory Data Analysis (EDA)

Python was used to perform Exploratory Data Analysis to understand customer behavior before creating the dashboard.

### Analysis Performed

- Customer Churn Distribution
- Contract Type Analysis
- Tenure Distribution
- Monthly Charges Analysis
- Internet Service Analysis
- Gender Analysis
- Payment Method Analysis
- Correlation Heatmap

More than **14 visualizations** were created to identify churn patterns and business trends.

---

# 🗄 SQL Analysis

SQL Server was used to perform business analysis after completing data cleaning.

A total of **20 business-oriented SQL queries** were developed using:

- Aggregate Functions
- GROUP BY
- HAVING
- ORDER BY
- CASE Statements
- Subqueries

### SQL Analysis Covered

### Business KPIs

- Total Customers
- Total Churn Customers
- Overall Churn Rate

### Customer Segmentation

- Churn by Gender
- Churn by Contract Type
- Internet Service vs Churn
- Payment Method vs Churn

### Business Analysis

- Average Monthly Charges
- Average Tenure
- Spending Analysis
- Loyalty Analysis

### Intermediate SQL

- CASE Statements
- HAVING Clause
- Subqueries
- Customer Segmentation Queries

The complete SQL scripts are available inside the **SQL** folder.
