-- Viewing the data
SELECT*
  FROM [superstore].[dbo].[sales]

   --TOTAL SALES AND TOTAL PROFIT AND TOTAL PROFIT MARGIN 

  SELECT 
    ROUND(SUM(Sales),2) AS TotalSales,
    ROUND(SUM(Profit),2) AS TotalProfits,
	SUM(discount) AS total_discount,

	 ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM 
   [dbo].[sales]

 --TOTAL SALES AND TOTAL PROFIT AND TOTAL PROFIT MARGIN OF THE YEAR

  SELECT 
    DATEPART(YEAR, Order_Date) AS Year,
    ROUND(SUM(Sales),2) AS TotalSales,
    ROUND(SUM(Profit),2) AS TotalProfits,
	SUM(discount) AS total_discount,
	 ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM 
   [dbo].[sales]
GROUP BY 
    DATEPART(YEAR, Order_Date)
ORDER BY 
    Year,TotalProfits Desc;



-- Total Profits, Total sales, Profit Margin and Total Discount per Quarter?

SELECT 
    DATEPART(YEAR, Order_Date) AS Year,
    DATEPART(QUARTER, Order_Date) AS Quarter,
    ROUND(SUM(Sales),2) AS TotalSales,
    ROUND(SUM(Profit),2) AS TotalProfits,
	SUM(discount) AS total_discount,
	 ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM 
   [dbo].[sales]
GROUP BY 
    DATEPART(YEAR, Order_Date),
    DATEPART(QUARTER, Order_Date) 
ORDER BY 
    Year, 
    Quarter;

-- The total sales and total profits, profit margin and Total discount for each quarter across all years

SELECT 
    DATEPART(QUARTER, Order_Date) AS Quarters_From_2014_2017,
    ROUND(SUM(Sales),2) AS TotalSales,
    ROUND(SUM(Profit),2) AS TotalProfits,
	SUM(discount) AS total_discount,
	 ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM 
   [dbo].[sales]
WHERE 
    DATEPART(QUARTER,Order_Date) IN( 1,2,3,4)
GROUP BY 
	 DATEPART(QUARTER, Order_Date)
ORDER BY 
	 Quarters_From_2014_2017 DESC;


--  The region generates the highest sales , profits, profit margin and Total Discounts

SELECT 
   Region,
    ROUND(SUM(Sales),2) AS TotalSales,
    ROUND(SUM(Profit),2) AS TotalProfits,
	SUM(discount) AS total_discount,
	 ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM 
   [dbo].[sales]
GROUP BY 
  Region
ORDER BY  
TotalProfits DESC;





-- Total discount per state

	SELECT	
	State,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	State
ORDER BY 
	total_discount DESC
	;


 --Top Profitable State

 SELECT 
	State,
	ROUND(SUM(Sales),2) as Total_Sales, 
ROUND(SUM(Profit),2) as Total_Profits, 
ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM [dbo].[sales]
GROUP BY State
ORDER BY Total_Profits DESC


-- Least Profitable state 

SELECT		
	State, 
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM 
	[dbo].[sales]
GROUP BY	
	State
ORDER BY 
	Total_Profits

-- High Performing cities 

SELECT 
	City,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM 
	[dbo].[sales]
GROUP BY 
	City
ORDER BY 
	Total_Profits DESC



	-- Total discount per city

	SELECT	
	City,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	City
ORDER BY 
	total_discount DESC

-- Lowest Performing cities

SELECT  
	City,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM 
	[dbo].[sales]
GROUP BY 
	City
ORDER BY 
	Total_Profits 

-- category that  brings in the highest sales and profits

SELECT	
	Category, 
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM 
	[dbo].[sales]
GROUP BY 
	Category
ORDER BY 
	Total_Profits DESC

-- Sub category that  brings in the highest sales and profits

SELECT	
	Sub_Category ,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM
	[dbo].[sales]
GROUP BY 
	Category,Sub_Category
ORDER BY  
	Total_Profits DESC


-- lowest performing region of the Sub category 

SELECT
	Region,
	Category,
	Sub_Category ,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM
	[dbo].[sales]
GROUP BY 
	Region, Category,Sub_Category
ORDER BY  
	Total_Profits 

--Total Discount per category

SELECT 
	category, SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	category
ORDER BY 
	total_discount DESC;

--Total Discount per Sub category

SELECT	
	Sub_category,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	 Sub_Category
ORDER BY 
	total_discount DESC;


	--Total Discount per  category

SELECT	
	category,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	 Category
ORDER BY 
	total_discount DESC;


	-- Total discount per product

	SELECT	
	Product_Name,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	Product_Name
ORDER BY 
	total_discount DESC

--TOP 20 products that are the most profitable

SELECT 
	TOP 20 Product_Name,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM 
	[dbo].[sales]
GROUP BY 
	Product_Name
ORDER BY  
	Total_Profits DESC

--Bottom 20 products that are  least profitable

SELECT 
	TOP 20 Product_Name,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM 
	[dbo].[sales]
GROUP BY 
	Product_Name
ORDER BY  
	Total_Profits 

-- Total discount per segment

	SELECT	
	Segment,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	Segment
ORDER BY 
	total_discount DESC

--segment that  makes the most of our profits and sales

SELECT 
	Segment,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM	
	[dbo].[sales]
GROUP BY 
	Segment
ORDER BY 
	Total_Profits DESC;

-- Total Number of Customers across 2014 t0 2017

SELECT 
    DATEPART(YEAR, Order_Date) AS Year,
	COUNT( DISTINCT Customer_ID) AS Total_Customers
FROM 
   [dbo].[sales]
GROUP BY 
    DATEPART(YEAR, Order_Date)
	ORDER BY Year

	-- Total Number of Customers across the Region
SELECT 
	Region,
	COUNT( DISTINCT Customer_ID) AS Total_Customers
FROM 
   [dbo].[sales]
GROUP BY 
    Region
	ORDER BY Total_Customers DESC

		-- Total Number of Customers across the state
SELECT
	State,
	COUNT( DISTINCT Customer_ID) AS Total_Customers
FROM 
   [dbo].[sales]
GROUP BY 
   State
ORDER BY 
	Total_Customers DESC

	-- RFM ANALYSIS on the customers

	;WITH RFM AS (
    SELECT 
        Customer_ID,
        MAX(Order_Date) AS Last_Order_date,
        DATEDIFF(DAY, MAX(Order_Date), (SELECT MAX(Order_Date) FROM [dbo].[sales])) AS Recency,
        COUNT(DISTINCT Order_ID) AS Frequency,
        ROUND(SUM(Sales), 2) AS Monetary_Value
    FROM
        [dbo].[sales]
    GROUP BY
        Customer_ID
),
Customer_rank AS (
    SELECT 
        *,
        NTILE(3) OVER (ORDER BY Recency) AS recency_rank,
        NTILE(3) OVER (ORDER BY Frequency) AS frequency_rank,
        NTILE(3) OVER (ORDER BY Monetary_Value) AS monetary_rank
    FROM
        RFM
)
SELECT 
    c.Customer_Id,
    c.Segment,
	c.Product_Name,
    c.City,
    c.State,
    c.Region,
    r.recency_rank,
    r.frequency_rank,
    r.monetary_rank
FROM 
    [dbo].[sales] c
JOIN 
    Customer_rank r ON c.Customer_ID = r.Customer_ID
ORDER BY 
    r.recency_rank ,
    r.frequency_rank DESC,
    r.monetary_rank DESC;

	-- Total sales and profit by ship mode

	SELECT Ship_Mode,  ROUND(SUM(Sales),2) as Total_Sales,
	ROUND(SUM(Profit),2) as Total_Profits,
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM [superstore].[dbo].[sales]
 GROUP BY	
	Ship_Mode
 Order By 
	Total_Profits DESC
 

 -- Top customers 
  SELECT Customer_name, ROUND(SUM(Sales),2) as Total_Sales,
	ROUND(SUM(Profit),2) as Total_Profits,
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM [superstore].[dbo].[sales]
 GROUP BY	
	Customer_Name
 Order By 
	Total_Profits DESC

	-- customers and their total discounts 
  SELECT Customer_name, SUM(discount) AS total_discount
FROM [superstore].[dbo].[sales]
 GROUP BY	
	Customer_Name
 Order By 
	total_discount DESC