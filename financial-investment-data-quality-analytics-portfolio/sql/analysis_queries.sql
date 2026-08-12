-- Financial Investment Data Quality & Analytics

-- Duplicate Customer IDs
SELECT Customer_ID, COUNT(*) AS record_count
FROM customer
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

-- Missing customer fields
SELECT
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN Customer_Type IS NULL THEN 1 ELSE 0 END) AS missing_customer_type,
    SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS missing_city
FROM customer;

-- Branch revenue exceptions
SELECT Branch_ID, City, Region, Firm_Revenue
FROM branch
WHERE Firm_Revenue IS NULL;

-- Referential integrity
SELECT c.Customer_ID, c.Branch_ID
FROM customer c
LEFT JOIN branch b ON c.Branch_ID=b.Branch_ID
WHERE b.Branch_ID IS NULL;

-- Investment analysis
SELECT Investment_Type,
       COUNT(*) AS transaction_count,
       SUM(Investment_Amount) AS total_investment,
       AVG(Investment_Amount) AS avg_investment
FROM transaction
GROUP BY Investment_Type
ORDER BY total_investment DESC;

-- Regional analysis
SELECT c.Region,
       COUNT(DISTINCT c.Customer_ID) AS customers,
       COUNT(t.Transaction_ID) AS transactions,
       SUM(t.Transaction_Amount) AS transaction_value,
       SUM(t.Investment_Amount) AS investment_value
FROM customer c
JOIN transaction t ON c.Customer_ID=t.Customer_ID
GROUP BY c.Region
ORDER BY transaction_value DESC;

-- Top branches
SELECT c.Branch_ID,
       SUM(t.Transaction_Amount) AS transaction_value,
       SUM(t.Investment_Amount) AS investment_value,
       COUNT(DISTINCT c.Customer_ID) AS customers
FROM customer c
JOIN transaction t ON c.Customer_ID=t.Customer_ID
GROUP BY c.Branch_ID
ORDER BY transaction_value DESC
LIMIT 10;
