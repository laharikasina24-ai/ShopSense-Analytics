USE ShopSenseDB;
GO

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned];

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM [dbo].[Global_Superstore_Cleaned];

-- Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM [dbo].[Global_Superstore_Cleaned];

-- Sales by Category
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Category
ORDER BY Total_Sales DESC;

--Profit by Category
SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Top 10 Products by Sales
SELECT TOP 10
       Product_Name,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

-- Top 10 Countries by Sales
SELECT TOP 10
       Country,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Country
ORDER BY Total_Sales DESC;

-- Sales by Market
SELECT Market,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Market
ORDER BY Total_Sales DESC;

-- Average Shipping Days
SELECT AVG(Shipping_Days) AS Avg_Shipping_Days
FROM [dbo].[Global_Superstore_Cleaned];

-- Shipping Days by Ship Mode
SELECT Ship_Mode,
       AVG(Shipping_Days) AS Avg_Shipping_Days
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Ship_Mode
ORDER BY Avg_Shipping_Days;


-- Sales by Segment 
SELECT Segment,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Profit by Segment
SELECT Segment,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- Top 10 Customers by Sales
SELECT TOP 10
       Customer_Name,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;

-- Top 10 Customers by Profit
SELECT TOP 10
       Customer_Name,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Customer_Name
ORDER BY Total_Profit DESC;

-- Profit by Market
SELECT Market,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Market
ORDER BY Total_Profit DESC;

-- Order Priority Analysis
SELECT Order_Priority,
       COUNT(*) AS Total_Orders
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Order_Priority
ORDER BY Total_Orders DESC;

-- Shipping Cost by Ship Mode
SELECT Ship_Mode,
       ROUND(AVG(Shipping_Cost),2) AS Avg_Shipping_Cost
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Ship_Mode
ORDER BY Avg_Shipping_Cost DESC;

-- Top 10 Sub-Categories by Sales
SELECT TOP 10
       Sub_Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;

-- Top 10 Sub-Categories by Profit
SELECT TOP 10
       Sub_Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM [dbo].[Global_Superstore_Cleaned]
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;


SELECT
    YEAR(Order_Date) AS Order_Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM dbo.Global_Superstore_Cleaned
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;