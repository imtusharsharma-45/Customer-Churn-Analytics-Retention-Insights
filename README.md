# Customer Churn Analytics & Retention Insights

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

## AI-Powered Insight Generation

The `Notebooks/ai_insights.py` script calculates churn metrics directly from the dataset and sends the results to the Groq API/LLM. It automatically produces a business-friendly executive summary and actionable retention recommendations, then saves the generated output in `Reports/ai_generated_insights.md`.

### Example Generated Output

> The overall churn rate stands at 26.5%, driven primarily by short-term contracts, high-cost fiber-optic plans, and payment via electronic check. Targeting month-to-month subscribers, expensive fiber users, and electronic-check payers offers the greatest opportunity to reduce churn.

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

---

# 📈 Power BI Dashboard

An interactive Power BI dashboard was developed to provide stakeholders with a centralized view of customer churn trends, customer segmentation, and key business performance indicators.

The dashboard enables users to monitor churn behavior, identify high-risk customer segments, and support data-driven customer retention strategies through interactive visualizations and KPI tracking.

### Dashboard KPIs

| KPI | Value |
|------|-------:|
| Total Customers | 7,043 |
| Total Churn Customers | 1,869 |
| Churn Rate | 26.54% |
| Average Monthly Charges | 64.76 |

### Dashboard Visualizations

The dashboard includes:

- Customer Churn Distribution
- Churn by Contract Type
- Customer Tenure Distribution by Churn
- Monthly Charges by Churn
- Churn by Internet Service
- Churn by Gender
- Interactive Slicers
  - Contract
  - Gender
  - Internet Service
- Business Key Insights

---

# 🖥 Dashboard Preview

The Power BI dashboard provides an interactive view of customer churn behavior, enabling business users to monitor KPIs, analyze customer segments, and identify opportunities to improve customer retention.

![Customer Churn Dashboard](Screenshots/Customer%20Churn%20%26%20Retention%20Insights%20Dashboard.png)

---

# 💡 Key Insights

### 📌 Overall Customer Churn

- The overall customer churn rate is **26.54%**, indicating that nearly one out of every four customers has left the company.

---

### 📌 Contract Type

- Customers with **Month-to-Month contracts** exhibit the highest churn compared with One-Year and Two-Year contracts.
- Long-term contracts are associated with significantly higher customer retention.

---

### 📌 Customer Tenure

- Customers with lower tenure are considerably more likely to churn.
- New customers represent the highest-risk segment and should receive additional onboarding support.

---

### 📌 Monthly Charges

- Churned customers have higher average monthly charges than retained customers.
- Pricing strategy and perceived customer value may influence churn behavior.

---

### 📌 Internet Service

- Customers using **Fiber Optic Internet Service** experience higher churn than customers using DSL or no internet service.
- This segment requires further investigation into pricing, service quality, and customer experience.

---

### 📌 Gender

- Churn is distributed relatively evenly between male and female customers.
- Gender appears to have a limited impact on customer churn compared with business-related variables.

---

# 📋 Business Recommendations

Based on the analysis, the following business recommendations are proposed:

### 1. Improve Retention for Month-to-Month Customers

Develop targeted retention campaigns and personalized offers for customers using month-to-month contracts.

---

### 2. Strengthen New Customer Onboarding

Customers with lower tenure are more likely to churn. Improving the onboarding experience and early customer engagement may reduce early customer loss.

---

### 3. Evaluate Pricing Strategy

Analyze whether customers paying higher monthly charges perceive sufficient value and consider personalized pricing or promotional offers.

---

### 4. Improve Fiber Optic Customer Experience

Investigate service quality, pricing, technical support, and customer satisfaction for Fiber Optic customers.

---

### 5. Encourage Long-Term Contracts

Provide incentives for customers to migrate from Month-to-Month plans to One-Year or Two-Year contracts.

---

### 6. Use Customer Segmentation

Develop retention campaigns using multiple customer attributes including:

- Contract Type
- Customer Tenure
- Internet Service
- Payment Method
- Monthly Charges

rather than relying on demographic characteristics alone.

---

# ⭐ Project Features

- ✔ End-to-End Data Analytics Project
- ✔ Data Cleaning & Preprocessing using Python
- ✔ Exploratory Data Analysis (EDA)
- ✔ 20 Business-Oriented SQL Queries
- ✔ Interactive Power BI Dashboard
- ✔ Customer Segmentation Analysis
- ✔ KPI Development using DAX
- ✔ Business Insights & Recommendations
- ✔ Professional Project Documentation
- ✔ GitHub Portfolio Ready

---

# 📁 Project Structure

```text
Customer-Churn-Analytics-Retention-Insights
│
├── Data
│   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│
├── Notebooks
│   └── Customer_Churn_Analysis.ipynb
│
├── SQL
│   └── Customer_Churn_SQL_Analysis.sql
│
├── Dashboard
│   └── Customer Churn & Retention Insights Dashboard.pbix
│
├── Reports
│   └── Visualizations
│       ├── 01_Customer_Churn_Distribution.png
│       ├── 02_Contract_Type_Count.png
│       ├── 03_Contract_Churn_Rate.png
│       ├── 04_Tenure_Distribution.png
│       ├── 05_Average_Tenure.png
│       ├── 06_Monthly_Charges_Distribution.png
│       ├── 07_Average_Monthly_Charges.png
│       ├── 08_Internet_Service_Count.png
│       ├── 09_Internet_Service_Churn_Rate.png
│       ├── 10_Payment_Method_Count.png
│       ├── 11_Payment_Method_Churn_Rate.png
│       ├── 12_Senior_Citizen.png
│       ├── 13_Gender.png
│       └── 14_Correlation_Heatmap.png
│
├── Screenshots
│   └── Customer Churn & Retention Insights Dashboard.png
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

# ▶️ How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/Customer-Churn-Analytics-Retention-Insights.git
```

---

### 2. Install Required Libraries

```bash
pip install -r requirements.txt
```

---

### 3. Open the Python Notebook

Navigate to the **Notebooks** folder and run:

```
Customer_Churn_Analysis.ipynb
```

---

### 4. Execute SQL Queries

Open the SQL file in **SQL Server Management Studio (SSMS)** and execute the queries.

```
SQL/
└── Customer_Churn_SQL_Analysis.sql
```

---

### 5. Open the Dashboard

Open the Power BI dashboard.

```
Dashboard/
└── Customer Churn & Retention Insights Dashboard.pbix
```

---

### 6. Explore the Dashboard

Use the available slicers to analyze customer churn by:

- Contract Type
- Gender
- Internet Service

Review the KPI cards, visualizations, business insights, and recommendations.

---

# 💼 Skills Demonstrated

This project demonstrates practical experience in:

### Programming & Data Analysis

- Python
- Pandas
- NumPy

### Data Visualization

- Matplotlib
- Seaborn
- Power BI
- DAX

### Database & Querying

- SQL Server
- Aggregate Functions
- GROUP BY
- HAVING
- CASE Statements
- Subqueries

### Business Intelligence

- Customer Churn Analysis
- Customer Segmentation
- KPI Development
- Business Reporting
- Retention Analytics
- Dashboard Development
- Business Recommendations

---

# 📚 Key Learnings

Through this project, I gained hands-on experience in:

- Building an end-to-end data analytics project.
- Cleaning and preparing real-world business data.
- Performing Exploratory Data Analysis (EDA) using Python.
- Writing business-oriented SQL queries for customer analytics.
- Developing interactive dashboards using Power BI.
- Creating KPIs and DAX measures for business reporting.
- Translating analytical findings into actionable business recommendations.
- Presenting insights through professional documentation and GitHub.

---

# 👨‍💻 Author

## Tushar Sharma

**Aspiring Data Analyst**

### Technical Skills

- Python
- SQL Server
- Power BI
- DAX
- Pandas
- NumPy
- Matplotlib
- Seaborn
- AWS
- Git
- GitHub

### Connect with Me

**GitHub:** https://github.com/imtusharsharma-45

---

## ⭐ If you found this project useful, consider giving it a Star!
