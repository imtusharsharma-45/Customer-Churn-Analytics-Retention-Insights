-- Total Customers
SELECT COUNT(*) AS total_customers
FROM churn_data;

-- Total Churn Customers
SELECT COUNT(*) AS churn_customers
FROM churn_data
WHERE Churn = 'Yes';

-- Churn Rate
SELECT
ROUND(
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2) AS churn_rate
FROM churn_data;

-- Churn by Gender
SELECT
gender,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM churn_data
GROUP BY gender;

-- Churn by Contract Type
SELECT
Contract,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM churn_data
GROUP BY Contract
ORDER BY churn_customers DESC;

-- Average Monthly Charges by Churn
SELECT
Churn,
ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charges
FROM churn_data
GROUP BY Churn;

-- Tenure Analysis
SELECT
Churn,
ROUND(AVG(tenure),2) AS avg_tenure
FROM churn_data
GROUP BY Churn;

-- Internet Service vs Churn
SELECT
InternetService,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM churn_data
GROUP BY InternetService
ORDER BY churn_customers DESC;

-- Payment Method vs Churn
SELECT
PaymentMethod,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM churn_data
GROUP BY PaymentMethod
ORDER BY churn_customers DESC;