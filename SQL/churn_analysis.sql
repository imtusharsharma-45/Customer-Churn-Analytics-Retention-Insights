/*
===========================================================
Project : Customer Churn Analytics & Retention Insights
Author  : Tushar Sharma
Tools   : SQL, Python, Power BI
Database: churn_db
===========================================================

Objective:
Analyze customer churn behavior and identify key factors
associated with customer retention.
===========================================================
*/

--create database
create database churn_db
--use databse 
use churn_db


/*===========================================================
Business Question 1
What is the total number of customers in the dataset?
===========================================================*/

SELECT
    COUNT(*) AS total_customers
FROM churn_data;

-- Business Insight:
-- This query returns the total number of customer records
-- available for churn analysis.

/*
===========================================================
Business Question 2
How many customers have churned?
===========================================================
*/

SELECT
    COUNT(*) AS churn_customers
FROM churn_data
WHERE Churn = 1;

-- Business Insight:
-- Returns the total number of customers who have churned.

/*
===========================================================
Business Question 3
What is the overall customer churn rate?
===========================================================
*/

SELECT
    ROUND(
        SUM(
            CASE
                WHEN Churn = 1 THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data;

-- Business Insight:
-- Calculates the overall percentage of customers who churned.


/*
===========================================================
Business Question 4
How does customer churn vary by gender?
===========================================================
*/

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN Churn = 1 THEN 1
            ELSE 0
        END
    ) AS churn_customers
FROM churn_data
GROUP BY gender;

-- Business Insight:
-- Compares the total number of customers and churned
-- customers across male and female customer groups.

/*
===========================================================
Business Question 5
Which contract type has the highest customer churn?
===========================================================
*/

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN Churn = 1 THEN 1
            ELSE 0
        END
    ) AS churn_customers
FROM churn_data
GROUP BY Contract
ORDER BY churn_customers DESC;

-- Business Insight:
-- Identifies contract types with the highest number of
-- churned customers to support customer retention strategies.



/*
===========================================================
Business Question 6
How do average monthly charges differ between churned
and retained customers?
===========================================================
*/

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM churn_data
GROUP BY Churn;

-- Business Insight:
-- Compares the average monthly charges of churned and
-- retained customers to understand whether pricing is
-- associated with customer churn.

/*
===========================================================
Business Question 7
How does average customer tenure differ between churned
and retained customers?
===========================================================
*/

SELECT
    Churn,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM churn_data
GROUP BY Churn;

-- Business Insight:
-- Compares the average customer tenure of churned and
-- retained customers to identify whether customer
-- loyalty is associated with churn.


/*
===========================================================
Business Question 8
Which internet service category has the highest customer
churn?
===========================================================
*/

SELECT
    InternetService,
    SUM(
        CASE
            WHEN Churn = 1 THEN 1
            ELSE 0
        END
    ) AS churn_customers
FROM churn_data
GROUP BY InternetService
ORDER BY churn_customers DESC;

-- Business Insight:
-- Identifies the internet service categories with the
-- highest number of churned customers to support service
-- quality improvement and customer retention strategies.



/*
===========================================================
Business Question 9
How does customer churn vary across different payment
methods?
===========================================================
*/

SELECT
    PaymentMethod,
    SUM(
        CASE
            WHEN Churn = 1 THEN 1
            ELSE 0
        END
    ) AS churn_customers
FROM churn_data
GROUP BY PaymentMethod
ORDER BY churn_customers DESC;

-- Business Insight:
-- Compares customer churn across different payment
-- methods to identify payment options associated with
-- higher churn.


/*
===========================================================
Business Question 10
Which contract type has the highest average monthly charges?
===========================================================
*/

SELECT
    Contract,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM churn_data
GROUP BY Contract
ORDER BY avg_monthly_charges DESC;

-- Business Insight:
-- Compares the average monthly charges across different
-- contract types to understand customer spending patterns.



/*
===========================================================
Business Question 11
Which internet service category has the highest average
monthly charges?
===========================================================
*/

SELECT
    InternetService,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM churn_data
GROUP BY InternetService
ORDER BY avg_monthly_charges DESC;

-- Business Insight:
-- Identifies internet service categories associated with
-- higher customer spending.


/*
===========================================================
Business Question 12
Which payment method is associated with the highest
average monthly charges?
===========================================================
*/

SELECT
    PaymentMethod,
    ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charges
FROM churn_data
GROUP BY PaymentMethod
ORDER BY avg_monthly_charges DESC;

-- Business Insight:
-- Compares customer spending across different payment
-- methods to identify high-value payment segments.


/*
===========================================================
Business Question 13
How many customers pay above the overall average monthly
charges?
===========================================================
*/

SELECT
    COUNT(*) AS high_value_customers
FROM churn_data
WHERE MonthlyCharges >
(
    SELECT AVG(MonthlyCharges)
    FROM churn_data
);

-- Business Insight:
-- Identifies customers whose monthly charges are higher
-- than the overall average, representing a valuable
-- customer segment.



/*
===========================================================
Business Question 14
How many customers have a tenure greater than the overall
average tenure?
===========================================================
*/

SELECT
    COUNT(*) AS loyal_customers
FROM churn_data
WHERE tenure >
(
    SELECT AVG(tenure)
    FROM churn_data
);

-- Business Insight:
-- Identifies long-term customers whose tenure is above
-- the overall average, representing a loyal customer
-- segment.


/*
===========================================================
Business Question 15
How can customers be categorized based on their monthly
charges?
===========================================================
*/

SELECT
    customerID,
    MonthlyCharges,
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Spending'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium Spending'
        ELSE 'High Spending'
    END AS spending_category
FROM churn_data;

-- Business Insight:
-- Categorizes customers into spending segments based on
-- their monthly charges to support customer segmentation.


/*
===========================================================
Business Question 16
How can customers be categorized based on their tenure?
===========================================================
*/

SELECT
    customerID,
    tenure,
    CASE
        WHEN tenure < 12 THEN 'New Customer'
        WHEN tenure BETWEEN 12 AND 36 THEN 'Regular Customer'
        ELSE 'Loyal Customer'
    END AS loyalty_category
FROM churn_data;

-- Business Insight:
-- Segments customers according to their tenure to identify
-- new, regular, and loyal customers.


/*
===========================================================
Business Question 17
Which spending category has the highest customer churn?
===========================================================
*/

SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Spending'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium Spending'
        ELSE 'High Spending'
    END AS spending_category,

    COUNT(*) AS total_customers,

    SUM(
        CASE
            WHEN Churn = 1 THEN 1
            ELSE 0
        END
    ) AS churn_customers

FROM churn_data

GROUP BY
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low Spending'
        WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium Spending'
        ELSE 'High Spending'
    END

ORDER BY churn_customers DESC;

-- Business Insight:
-- Identifies which customer spending segment experiences
-- the highest customer churn.


/*
===========================================================
Business Question 18
Which customer loyalty segment has the highest churn?
===========================================================
*/

SELECT

    CASE
        WHEN tenure < 12 THEN 'New Customer'
        WHEN tenure BETWEEN 12 AND 36 THEN 'Regular Customer'
        ELSE 'Loyal Customer'
    END AS loyalty_category,

    COUNT(*) AS total_customers,

    SUM(
        CASE
            WHEN Churn = 1 THEN 1
            ELSE 0
        END
    ) AS churn_customers

FROM churn_data

GROUP BY

    CASE
        WHEN tenure < 12 THEN 'New Customer'
        WHEN tenure BETWEEN 12 AND 36 THEN 'Regular Customer'
        ELSE 'Loyal Customer'
    END

ORDER BY churn_customers DESC;

-- Business Insight:
-- Identifies which customer loyalty segment has the
-- highest churn and supports retention planning.


/*
===========================================================
Business Question 19
Which contract types have more than 1000 customers?
===========================================================
*/

SELECT
    Contract,
    COUNT(*) AS total_customers

FROM churn_data

GROUP BY Contract

HAVING COUNT(*) > 1000

ORDER BY total_customers DESC;

-- Business Insight:
-- Identifies contract types with a large customer base.


/*
===========================================================
Business Question 20
Which payment methods have an average monthly charge
greater than 70?
===========================================================
*/

SELECT
    PaymentMethod,
    ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charges

FROM churn_data

GROUP BY PaymentMethod

HAVING AVG(MonthlyCharges) > 70

ORDER BY avg_monthly_charges DESC;

-- Business Insight:
-- Identifies payment methods associated with higher
-- average monthly customer spending.









