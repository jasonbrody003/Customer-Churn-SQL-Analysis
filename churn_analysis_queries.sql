-- Total number of customers
SELECT COUNT(*) AS Total_Customers
FROM WA_FnUseC_TelcoCustomerChurn;

-- Churn vs Non-Churn
SELECT Churn, COUNT(*) AS Customers
FROM WA_FnUseC_TelcoCustomerChurn
GROUP BY Churn;

-- Churn by Contract Type
SELECT Contract, COUNT(*) AS Churned_Customers
FROM WA_FnUseC_TelcoCustomerChurn
WHERE Churn='Yes'
GROUP BY Contract;

-- Average Monthly Charges by Churn
SELECT Churn, AVG(MonthlyCharges) AS Avg_Monthly_Charges
FROM WA_FnUseC_TelcoCustomerChurn
GROUP BY Churn;

-- Churn by Customer Tenure
SELECT 
CASE
WHEN tenure < 12 THEN 'New Customers'
WHEN tenure BETWEEN 12 AND 24 THEN 'Mid-Term Customers'
ELSE 'Long-Term Customers'
END AS Customer_Group,
COUNT(*) AS Churned_Customers
FROM WA_FnUseC_TelcoCustomerChurn
WHERE Churn='Yes'
GROUP BY Customer_Group;
