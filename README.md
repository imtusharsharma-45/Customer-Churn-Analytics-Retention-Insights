# Customer Churn Analysis

## Project Overview

This project analyzes customer churn behavior using **Python, SQL, Power BI, and Exploratory Data Analysis (EDA)** to identify the factors associated with customers leaving a telecom company.

The analysis covers **7,043 customer records** and investigates customer demographics, contract types, tenure, internet services, payment methods, and monthly charges.

An interactive Power BI dashboard was developed to monitor churn KPIs, identify high-risk customer segments, and support data-driven customer retention decisions.

---

## Business Problem

Customer churn directly affects recurring revenue and customer acquisition costs. Understanding which customers are more likely to leave and the factors associated with churn can help businesses design more effective retention strategies.

The objective of this project is to analyze customer behavior and identify the major characteristics associated with customer churn.

### Business Questions

The analysis focuses on the following questions:

- What is the overall customer churn rate?
- Which contract types experience the highest churn?
- Are newer customers more likely to churn?
- How does monthly spending differ between churned and retained customers?
- Which internet service groups experience higher churn?
- Does gender have a significant difference in churn counts?
- Which payment methods are associated with higher churn?
- Which customer segments should receive greater retention attention?

---

## Tools & Technologies

| Technology | Purpose |
|---|---|
| Python | Data preparation and exploratory analysis |
| Pandas | Data manipulation and analysis |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Exploratory visualizations |
| SQL | Customer churn analysis and KPI calculations |
| Power BI | Interactive dashboard and business reporting |
| VS Code | Development environment |

---

## Dataset Information

The dataset contains **7,043 telecom customer records** across **21 columns**.

### Key Customer Attributes

The dataset includes information related to:

- Customer demographics
- Senior citizen status
- Partner and dependent status
- Customer tenure
- Phone services
- Internet services
- Online security and technical support
- Streaming services
- Contract type
- Payment method
- Monthly charges
- Total charges
- Customer churn status

### Dataset Summary

| Metric | Value |
|---|---:|
| Total Records | 7,043 |
| Total Columns | 21 |
| Churned Customers | 1,869 |
| Retained Customers | 5,174 |
| Overall Churn Rate | 26.54% |

---

## Data Preparation

The dataset was reviewed before analysis to ensure that analytical fields could be used correctly.

Key preparation considerations include:

- Checking dataset dimensions and column types
- Checking duplicate records
- Reviewing missing and blank values
- Converting `TotalCharges` from text to a numeric field where required
- Handling blank values found in `TotalCharges`
- Validating categorical variables such as Contract, InternetService, PaymentMethod, and Churn
- Preparing the dataset for exploratory analysis and dashboard reporting

The source dataset contains **11 blank values in `TotalCharges`**, which require handling before numerical analysis of that field.

---

## Exploratory Data Analysis

EDA was performed to understand churn behavior across important customer characteristics.

The analysis focuses on:

- Churn distribution
- Contract type vs. churn
- Tenure vs. churn
- Monthly charges vs. churn
- Internet service vs. churn
- Gender vs. churn
- Payment method vs. churn

---

## SQL Analysis

SQL was used to calculate business KPIs and analyze churn across different customer segments.

### Analysis Performed

- Total customers
- Total churned customers
- Overall churn rate
- Churn by gender
- Churn by contract type
- Average monthly charges by churn status
- Average tenure by churn status
- Internet service vs. churn
- Payment method vs. churn

### Example SQL

```sql
-- Overall Churn Rate
SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data;


-- Churn by Contract Type
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM churn_data
GROUP BY Contract
ORDER BY churn_customers DESC;


-- Average Monthly Charges by Churn
SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM churn_data
GROUP BY Churn;
```

The complete SQL analysis is available in the `SQL` directory.

---

## Power BI Dashboard

An interactive Power BI dashboard was developed to provide a consolidated view of customer churn.

### KPI Cards

| KPI | Result |
|---|---:|
| Total Customers | 7,043 |
| Total Churn Customers | 1,869 |
| Churn Rate | 26.54% |
| Average Monthly Charges | 64.76 |

### Dashboard Visualizations

The dashboard includes:

- Churn by Internet Service
- Tenure vs. Churn
- Churn by Contract Type
- Churn by Gender
- Monthly Charges vs. Churn
- Contract filter
- Gender filter
- Internet Service filter
- Key business insights

---

## Dashboard Preview

![Customer Churn Analysis Dashboard](Screenshots/dashboard.png)

---

## Key Insights

### Contract Type

Month-to-month customers show substantially higher churn compared with customers on one-year and two-year contracts.

This indicates that customers with shorter contractual commitments represent an important retention segment.

### Customer Tenure

Churn is concentrated more heavily among customers with lower tenure.

Newer customers therefore represent an important group for early-stage retention initiatives.

### Monthly Charges

Customers who churn have higher average monthly charges than customers who remain with the company.

Pricing and perceived value may therefore be useful areas for further investigation.

### Internet Service

Fiber optic customers show relatively high churn compared with other internet service groups.

Further investigation into pricing, service experience, and customer expectations within this segment may help explain the pattern.

### Gender

Churned customers are distributed relatively evenly between male and female customers.

Gender therefore appears less useful than contract, tenure, service type, or monthly charges for identifying high-risk segments in this descriptive analysis.

---

## Business Recommendations

Based on the analysis:

1. **Prioritize month-to-month customers**  
   Develop targeted retention campaigns for customers using month-to-month contracts.

2. **Strengthen early customer engagement**  
   Since newer customers experience higher churn, onboarding and early lifecycle engagement should receive additional attention.

3. **Investigate high monthly charges**  
   Analyze whether high-spending customers perceive sufficient value from their services and consider targeted offers where appropriate.

4. **Review the fiber optic customer experience**  
   Investigate service quality, pricing, support interactions, and customer satisfaction among fiber optic customers.

5. **Promote longer-term contracts carefully**  
   Incentives for one-year and two-year contracts may help reduce churn where they provide genuine customer value.

6. **Use multiple churn indicators together**  
   Contract type, tenure, service type, payment method, and monthly charges should be considered together when identifying customers for retention efforts.

---

## Project Structure

```text
customer-churn-analysis/
│
├── Data/
│   └── Telco Customer Churn dataset
│
├── Notebooks/
│   └── Python EDA and analysis
│
├── SQL/
│   └── Churn analysis queries
│
├── Dashboard/
│   └── Power BI dashboard
│
├── Screenshots/
│   └── dashboard.png
│
├── requirements.txt
│
└── README.md
```

---

## How to Reproduce the Project

1. Clone or download this repository.
2. Load the telecom churn dataset.
3. Install the Python dependencies listed in `requirements.txt`.
4. Run the analysis notebook from the `Notebooks` directory.
5. Review or execute the SQL queries from the `SQL` directory.
6. Open the Power BI file from the `Dashboard` directory.
7. Validate dashboard KPIs against the source dataset.

---

## Key Learnings

This project demonstrates practical experience with:

- Customer churn analysis
- Data cleaning and preparation
- Exploratory Data Analysis
- Python-based data analysis
- SQL analytical queries
- KPI development
- Customer segmentation
- Power BI dashboard development
- Translating analytical findings into business recommendations

---

## Author

**Tushar Sharma**

Data Analyst | SQL | Python | Power BI | AWS | Snowflake

GitHub: `imtusharsharma-45`
