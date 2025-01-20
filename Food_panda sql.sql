-- Total revenue and order 
SELECT Division, COUNT(*) AS Total_Orders, SUM(Revenue) AS Total_Revenue
FROM foodpanda_synthetic_dataset
GROUP BY Division
ORDER BY Total_Revenue DESC;
-- ON TIME DELIVERY ANALYSIS
SELECT "Food Delivery On Time", COUNT(*) AS Delivery_Count
FROM foodpanda_synthetic_dataset;
-- CUSTOMER AGE ANALYSIS
SELECT 
    CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 35 THEN '18-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+' 
    END AS Age_Group, 
    COUNT(*) AS Customer_Count
FROM foodpanda_synthetic_dataset
GROUP BY Age_Group;

GROUP BY "Food Delivery On Time";
-- TOP DELIVERY BOY
SELECT "Delivery Boy", SUM(Revenue) AS Total_Revenue
FROM foodpanda_synthetic_dataset
GROUP BY "Delivery Boy"
ORDER BY Total_Revenue DESC
LIMIT 10;
-- MONTHLY REVENUE TREND
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(Revenue) AS Total_Revenue
FROM foodpanda_synthetic_dataset
GROUP BY Month
ORDER BY Month;




