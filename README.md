# Superstore Sales and Profit Analysis: A Comprehensive Exploration Using SQL Server and TABLEAU
***
# Superstore.
![Superstore Sticker by katiemayy6](https://github.com/user-attachments/assets/eacfc52c-9001-409d-9357-e91a9e5c78b7)



## 🧾 Table of Contents
- [Business Task](#business-task)
- [Methodology](#methodology)
- [Data Exploration](#data-exploration)
- [Visualization](#visualization)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
- [References](#references)
***


##  Business Task

**1. Identify Top-Performing and Underperforming Sub-Categories:**

**Objective:** Determine the sub-categories with the highest and lowest sales and profit to understand success factors and address challenges.

**Metrics:** Sub-Category with Maximum Sales and Profit, Underperforming Region of the Sub-Category.

**2. Analyze Discount Distribution:**

**Objective:** Evaluate how discounts are allocated across categories, sub-categories, products, and customer segments to optimize discount strategies.

**Metrics:** Breakdown of Discounts by Category, Breakdown of Discounts by Sub-Category, Discount Totals for Each Product, Total Discount Allocation by Segment, Category-Wide Discount Metrics.

**3. Assess Revenue and Profit by Shipping Modes and Customer Segments:**

**Objective:** Understand the impact of different shipping methods and customer segments on sales revenue and profitability to enhance logistics and marketing strategies.

**Metrics:** Revenue and Profit Distribution by Ship Mode, Top Sales and Profit Segment, and Most Profitable Segment in Sales.

**4. Evaluate Product Performance:**

**Objective:** Identify the top 20 revenue-generating products and the lowest 20 performing products by profit to replicate successful strategies and address underperformance.

**Metrics:** Top 20 Revenue-Generating Products, Lowest 20 Performing Products by Profit.

**5. Recognize and Analyze Top-Tier Clients:**

**Objective:** Identify and analyze high-value clients to tailor strategies that enhance their satisfaction, retention, and profitability.

**Metrics:** Top-Tier Clients.

### Deliverables:

1. **Detailed Analysis Report:**
   - Comprehensive insights into sales, profits, and discount impacts.
   - Identify top- and bottom-performing products, categories, regions, and customer segments.

2. **Strategic Recommendations:**
   - Tailored strategies to enhance profitability, optimize discounts, and improve regional and customer segment performance.
   - Actionable plans for shipping optimization and product performance enhancement.

3. **Implementation Plan:**
   - Step-by-step guide for implementing the recommendations.
   - Timeline and resource allocation for executing the strategies.

4. **Performance Metrics:**
   - Key Performance Indicators (KPIs) to measure the effectiveness of implemented strategies.
   - Regular monitoring and feedback mechanisms to ensure continuous improvement.

**Outcome:**

This project aims to optimize business operations, increase profitability, and enhance overall customer satisfaction by addressing the identified irregularities and implementing the tailored recommendations. This holistic approach will drive sustainable growth and improve the competitive positioning of the business in the market.

## Data Source

Superstore Sales data: The primary data used for this analysis is the "superstore.csv" file, containing detailed information about each sale made by the company
[data source link](https://github.com/grandady/superstore/blob/main/Sample%20-%20Superstore.csv)

### Methodologies for the Superstore Sales and Profit Analysis Project:

To achieve the business objectives outlined, we will use a structured approach comprising the following methodologies:

1. **Data Collection:**
   - **Data Source Identification:** Gather the superstore dataset from the relevant source.
   - **Data Loading:** Load the dataset into MySQL for data management and querying.

2. **Data Cleaning:**
   - **Data Validation:** Check for missing values, duplicates, and inconsistencies in the dataset.
   - **Data Correction:** Address any data quality issues by cleaning the dataset.

3. **Data Transformation:**
   - **Data Formatting:** Ensure that all columns are in the appropriate data types (e.g., dates, strings, integers, decimals).
   - **Data Aggregation:** Aggregate data as necessary to facilitate analysis (e.g., total sales, total profit).

4. **Data Analysis:**
   - **Total Sales and Profit Analysis:** Calculate overall sales, profit, and profit margins.
   - **Temporal Analysis:** Analyze sales and profit by year and quarter.
   - **Geographical Analysis:** Examine sales and profit distribution across regions, states, and cities.
   - **Category and Product Analysis:** Identify top-performing and least-performing categories, sub-categories, and products.
   - **Customer Analysis:** Perform RFM analysis and count the number of customers in various segments and regions.
   - **Shipping Analysis:** Analyze sales and profit based on different shipping modes.

5. **Data Visualization:**
   - **Dashboards and Reports:** Create interactive dashboards in Tableau to present findings.
   - **Charts and Graphs:** Use various visualizations (e.g., bar charts, line graphs, pie charts) to depict key insights.

6. **Interpretation of Results:**
   - **Insight Generation:** Derive actionable insights from the analysis and visualizations.
   - **Business Recommendations:** Formulate recommendations based on the findings to inform decision-making.

7. **Documentation and Presentation:**
   - **Report Writing:** Document the methodology, analysis, findings, and recommendations in a comprehensive report.
   - **Presentation:** Prepare a presentation to communicate the results and recommendations to stakeholders.

Following these methodologies  ensures a thorough and systematic analysis of the superstore data, yielding valuable insights for business strategy and decision-making.

## Data Exploration

### Column Dictionary for Superstore Dataset

Here is a comprehensive column dictionary for the columns in your superstore dataset:

1. **Row ID:**  Unique identifier for each row in the dataset.

2. **Order ID:**  Unique identifier for each order.

3. **Order Date:** Date when the order was placed.

4. **Ship Date:** Date when the order was shipped.

5. **Ship Mode:** Method of shipping for the order (e.g., Standard Class, Second Class, First Class).

6. **Customer ID:** Unique identifier for each customer.

7. **Customer Name:** Full name of the customer.

8. **Segment:** Customer segment (e.g., Consumer, Corporate, Home Office).

9. **Country:** Country where the order was placed.

10. **City:** City where the order was placed.

11. **State:** State where the order was placed.

12. **Postal Code:** Postal code of the location where the order was placed.

13. **Region:** Region where the order was placed (e.g., East, West, Central, South).

14. **Product ID:**  Unique identifier for each product.

15. **Category:** High-level product category (e.g., Furniture, Office Supplies, Technology).

16. **Sub-Category:** Sub-category of the product within the main category (e.g., Chairs, Binders, Phones).

17. **Product Name:** Name of the product.

18. **Sales:**  Sales amount for the order.

19. **Quantity:**  Number of units sold in the order.

20. **Discount:** Discount applied to the order, represented as a decimal.

21. **Profit:** Profit amount for the order.


### Exploration Data Analysis

[link to sql file](https://github.com/grandady/superstore/blob/main/sqlll.sql)

### FINANCIAL METRICS: SALES, PROFIT, PROFIT MARGIN AND DISCOUNT

**Objective:** The objective is to analyze the Superstore's financial metrics — total sales, total profit, profit margin, and total discount — from 2014 to 2017 to understand the store's financial performance comprehensively.

**SUPERSTORE FINANCIAL METRICS: SALES, PROFIT, PROFIT MARGINS AND TOTAL DISCOUNT**

````sql
   --TOTAL SALES AND TOTAL PROFIT AND TOTAL PROFIT MARGIN 

  SELECT 
    ROUND(SUM(Sales),2) AS TotalSales,
    ROUND(SUM(Profit),2) AS TotalProfits,
	SUM(discount) AS total_discount,

	 ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS Profit_Margin
FROM 
   [dbo].[sales]
````

![sspr](https://github.com/user-attachments/assets/c3e30415-2352-463d-b8f3-c2f2f1abfbc0)


**Answer:**
 The total sales amounted to $2,297,200.86, with total profits of $286,817.02, total discounts of $1,561.09, and a profit margin of 12.49%.

**YEARLY SUPERSTORE FINANCIAL METRICS**

**Objective:** The objective of analyzing Yearly Superstore Financial Metrics is to comprehensively understand the store's financial performance from 2014 to 2017. By evaluating total sales, total profit, profit margin, and total discount annually
````sql
--TOTAL SALES, TOTAL PROFIT, TOTAL PROFIT MARGIN  AND TOTAL DISCOUNT OF THE YEAR

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
    Year, TotalProfits Desc;
````

![sspr year](https://github.com/user-attachments/assets/9531eab7-25f3-4e78-93c1-a8fc73108d7c)


**Answer:** In 2014, the total sales were $484,247.50, total profits were $49,543.97, and total discounts were $315.46, with a profit margin of 10.23%. In 2015, total sales were $470,532.51, total profits were $61,618.60, and total discounts were $327.09, with a profit margin of 13.10%. In 2016, total sales were $609,205.60, total profits were $81,795.17, and total discounts were $400.32, with a profit margin of 13.43%. In 2017, total sales were $733,215.25, total profits were $93,859.27, and total discounts were $518.22, with a profit margin of 12.80%.

**QUARTERLY SUPERSTORE FINANCIAL METRICS**

**Objective:** The objective of analyzing Quarterly Superstore Financial Metrics is to gain a detailed and timely understanding of the store's financial performance throughout the year. By evaluating total sales, total profit, profit margin, and total discount quarterly from 2014 to 2017.

````sql
-- Total Profits, Total sales, Profit Margin, and Total Discount per Quarter

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
````
**FINANCIAL METRICS FOR EACH QUARTER ACROSS ALL THE YEARS**

**Objective:** The objective of analyzing quarterly financial metrics across all years is to achieve a detailed and continuous understanding of the Superstore's financial performance from 2014 to 2017.

````sql
-- The total sales, total profits, profit margin, and Total discount for each quarter across all years

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
````

![sspr across](https://github.com/user-attachments/assets/ca801ec2-0864-467a-a2b6-99c5869ef51d)


**Answer:** In the fourth quarter, total sales were $878,077.56, total profits were $111,041.66, and total discounts were $577.85, with a profit margin of 12.65%. In the third quarter, total sales were $613,932.11, total profits were $72,467.08, and total discounts were $427.05, with a profit margin of 11.8%. In the second quarter, total sales were $445,509.62, total profits were $55,284.54, and total discounts were $347.30, with a profit margin of 12.41%. In the first quarter, total sales were $359,681.58, total profits were $48,023.74, and total discounts were $208.89, with a profit margin of 13.35%.

**REGION DOMINATING IN SALES, PROFIT MARGIN, and DISCOUNT METRICS**

**Objective:** The objective of identifying the region dominating in sales, profit margin, and discount metrics according to the project is to pinpoint the geographical area that achieves the highest financial performance. 

````sql
--  The region generates the highest sales, profits, profit margin and Total Discounts

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
````

![sspr region](https://github.com/user-attachments/assets/5a53a96b-d5e8-463e-92c5-3414993f8403)


**Answer:** In the West region, total sales were $725,457.82, total profits were $108,418.45, total discounts were $350.20, and the profit margin was 14.94%. In the East region, total sales were $678,781.24, total profits were $91,522.78, total discounts were $414.00, and the profit margin was 13.48%. In the South region, total sales were $391,721.91, total profits were $47,169.43, total discounts were $238.55, and the profit margin was 12.04%. In the Central region, total sales were $501,239.89, total profits were $39,706.36, total discounts were $558.34, and the profit margin was 7.92%.

### STATE

**STATE WITH THE HIGHEST PROFITABILITY**

**Objective:** The objective of identifying the State with the Highest Profitability is to determine which state generates the most profit, allowing the Superstore to understand the factors contributing to its financial success


````sql
--Top Profitable State

 SELECT 
	State,
	ROUND(SUM(Sales),2) as Total_Sales, 
ROUND(SUM(Profit),2) as Total_Profits, 
ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM [dbo].[sales]
GROUP BY State
ORDER BY Total_Profits DESC
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr state](https://github.com/user-attachments/assets/5b7dcc0e-f543-4cd1-b099-bd809af80364)


**Answer:** The top 4 states are California, with total sales of $457,687.63, total profits of $76,381.39, and a profit margin of 16.69%, followed by New York, Washington, and Michigan, which ranks fourth with total sales of $76,269.61, total profits of $24,463.19, and a profit margin of 32.07%.


**STATE WITH THE LOWEST PROFITABILITY**

**Objective:** The objective of identifying the State with the Lowest Profitability is to determine which state generates the least profit, allowing the Superstore to understand the challenges and factors contributing to low financial performance.


````sql
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
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr statelow](https://github.com/user-attachments/assets/9dd11239-ffbc-407a-9556-c41f36d722bd)


**Answer:** These are the lowest-performing states in terms of profitability: Texas had total sales of $170,188.05, total losses of $25,729.36, and a profit margin of -15.12%. Ohio recorded total sales of $78,258.14, total losses of $16,971.38, and a profit margin of -21.69%. Pennsylvania achieved total sales of $116,511.91, total losses of $15,559.96, and a profit margin of -13.35%. Illinois reported total sales of $80,166.10, total losses of $12,607.89, and a profit margin of -15.73%.

**STATE-LEVEL DISCOUNT ANALYSIS**

**Objective:** The objective of State-Level Discount Analysis is to assess the distribution and impact of discounts across different states.

````sql
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
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr state discount](https://github.com/user-attachments/assets/99d7f87a-301e-4f58-8137-9d1792428aa6)


**Answer:** The states with the highest total discounts are Texas at $364.64, Pennsylvania at $192.90, Illinois at $191.90, Ohio at $152.40, and California at $145.60.

### CITY

**TOP-PERFORMING CITIES**

**Objective:** The objective of identifying Top-Performing Cities is to determine which cities generate the highest financial performance,

````sql
-- High-Performing Cities 

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
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr city](https://github.com/user-attachments/assets/47ff32d0-e879-49ea-9af6-cbf91d0e9615)


**Answer:** The top profitable states are New York City, which had the highest total sales of $256,368.16 and total profits of $62,036.98 with a profit margin of 24.2%; Los Angeles, which recorded total sales of $175,851.34, total profits of $30,440.76, and a profit margin of 17.31%; Seattle, which achieved total sales of $119,540.74, total profits of $29,156.10, and a profit margin of 24.39%; and Detroit, which, as the fourth highest, reported total sales of $42,446.94, total profits of $13,181.79, and a profit margin of 31.05%.

**LOWEST PERFORMING CITIES**

**Objective:** The objective of identifying the lowest-performing cities is to determine which cities generate the least financial performance,

````sql
-- Lowest Performing Cities

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
Total_profits
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr city low](https://github.com/user-attachments/assets/b249c310-d94e-4c69-a4e8-60be5c829848)


**Answer:** The lowest-performing cities in terms of profitability are Philadelphia, which had the lowest total sales of $109,077.01 and total losses of $13,837.77, with a profit margin of -12.69%; Houston, which recorded total sales of $64,504.76, total losses of $10,153.55, and a profit margin of -15.74%; San Antonio, which achieved total sales of $21,843.53, total losses of $7,299.05, and a profit margin of -33.42%; and Lancaster, which reported total sales of $9,891.46, total losses of $7,239.07, and a profit margin of -73.19%.


**CITY-LEVEL DISCOUNT ANALYSIS**

**Objective:** The objective of City-Level Discount Analysis is to assess the distribution and impact of discounts across various cities. This analysis aims to identify patterns and trends in discount allocation, evaluate the effectiveness of discount strategies in driving sales, and understand regional variations.

````sql
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
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr city discount](https://github.com/user-attachments/assets/22c64f05-c6a7-428c-a1cd-e03c3fedd594)


**Answer:** The top 4 cities with the highest total discounts are Philadelphia with $175.50, Houston with $143.14, Chicago with $120.50, and Dallas with $56.30.

### CATEGORY

**TOP SALES AND PROFIT CATEGORY**

**Objective:** The objective of identifying the Top Sales and Profit Category is to determine which product category generates the highest sales revenue and profit.

````sql
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
````

![sspr category](https://github.com/user-attachments/assets/1cb409d0-7897-4e86-b726-a1b40527bc85)



**Answer:** Technology had total sales of $836,154.03, total profits of $145,454.95, and a profit margin of 17.4%. Office Supplies recorded total sales of $719,047.03, total profits of $122,490.80, and a profit margin of 17.04%. Furniture achieved total sales of $741,999.79, total profits of $18,871.27, and a profit margin of 2.54%.

**BREAKDOWN OF DISCOUNTS PER CATEGORY**

**Objective:** The objective of the Breakdown of Discounts by Category is to analyze how discounts are distributed across different product categories.

````sql
--Total Discount per category

SELECT 
	category, SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	category
ORDER BY 
	total_discount DESC;
````

![sspr category discount](https://github.com/user-attachments/assets/4975f8b3-05d1-4e02-985c-bdea9eb7a73c)


**Answer:** Office Supplies had a total discount of $947.80, Furniture had a total discount of $368.89, and Technology had a total discount of $244.40.

### SUB-CATEGORY

**SUB-CATEGORY WITH THE MAXIMUM SALES AND PROFIT**

**Objective:** The objective of identifying the Sub-Category with Maximum Sales and Profit is to determine which product sub-category generates the highest sales revenue and profit.

````sql
-- Subcategory that  brings in the highest sales and profits

SELECT	
	Sub_Category ,
	ROUND(SUM(Sales),2) as Total_Sales, 
	ROUND(SUM(Profit),2) as Total_Profits, 
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM
	[dbo].[sales]
GROUP BY 
	Category, Sub_Category
ORDER BY  
	Total_Profits DESC
````

![sspr sub category](https://github.com/user-attachments/assets/06eefeeb-6c49-40df-9aee-a510b45c648c)



**Answer:** The top 3 subcategories are Copiers, which had total sales of $149,528.03, total profits of $55,617.82, and a profit margin of 37.2%; Phones, which recorded total sales of $330,007.05, total profits of $44,515.73, and a profit margin of 13.49%; and Accessories, which achieved total sales of $167,380.32, total profits of $41,936.64, and a profit margin of 25.05%.

If you need any further adjustments or additional information, just let me know!

**UNDERPERFORMING REGION OF THE SUB-CATEGORY**

**Objective:** The objective of identifying the Underperforming Region of the Sub-Category is to determine which region generates the lowest sales and profit for a specific sub-category.
````sql
-- the lowest-performing region of the Subcategory 

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
	Region, Category, Sub_Category
ORDER BY  
	Total_Profits
````

![sspr region sub category](https://github.com/user-attachments/assets/6fe60417-503a-4b73-a0a2-0a0dd8fe917c)



**BREAKDOWN OF DISCOUNT PER SUB-CATEGORY**

**Objective:** The objective of the Breakdown of Discounts by Sub-Category is to analyze how discounts are distributed across different product sub-categories.

````sql
--Total Discount per Subcategory

SELECT	
	Sub_category,
	SUM(discount) AS total_discount
FROM 
	[dbo].[sales]
GROUP BY 
	 Sub_Category
ORDER BY 
	total_discount DESC;
````

![sspr sub discount](https://github.com/user-attachments/assets/f49ef52d-9826-4a0f-a831-7e770ae2af08)


**Answer:** The top 3 subcategories with the highest total discounts are Binders with $566.99, Phones with $137.40, and Furnishings with $132.40.

### PRODUCTS

**TOP 20 REVENUE-GENERATING PRODUCTS**

**Objective:** The objective of identifying the Top 20 Revenue-Generating Products is to determine which products generate the highest revenue for the Superstore

````sql
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
````

![sspr top 20](https://github.com/user-attachments/assets/51cc4e1a-c1aa-4721-a497-80191f72a19d)

**Answer:** The top 3 products are the Canon imageCLASS 2200 Advanced Copier with total sales of $61,599.82, total profits of $25,199.93, and a profit margin of 40.91%; the Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind with total sales of $27,453.38, total profits of $7,753.04, and a profit margin of 28.24%; and the Hewlett Packard LaserJet 3310 Copier with total sales of $18,839.69, total profits of $6,983.88, and a profit margin of 37.07%.

**LOWEST 20 PERFORMING PRODUCTS BY PROFIT**

**Objective:** The objective of identifying the Lowest 20 Performing Products by Profit is to determine which products generate the least profit for the Superstore.

````sql
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
````

![sspr bottom 20](https://github.com/user-attachments/assets/fd2cec64-f6d9-4516-947a-806d7c2eb1ba)


**Answer:** The Cubify CubeX 3D Printer Double Head Print had total sales of $11,099.96 and total losses of $8,879.97, resulting in a profit margin of -80%. The Lexmark MX611dhe Monochrome Laser Printer recorded total sales of $16,829.90 and total losses of $4,589.97, with a profit margin of -27.27%. The Cubify CubeX 3D Printer Triple Head Print achieved total sales of $7,999.98 and total losses of $3,839.99, resulting in a profit margin of -48%.


**DISCOUNT TOTALS FOR EACH PRODUCT**

**Objective:** The objective of analyzing discount totals for each product is to understand how discounts are allocated across individual products

````sql
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
````
**This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr product discount](https://github.com/user-attachments/assets/ce8d332b-75dc-4a11-9d02-18e4958c4cf0)


**Answer:** The top 5 discounted products are Storex Dura Pro Binders with a discount of $7.20, Avery Non-Stick Binders with a discount of $6.80, GBC Instant Report Kit with a discount of $6.40, GBC Standard Recycled Report Covers, Clear Plastic Sheets with a discount of $5.90, and Avery Self-Adhesive Photo Pockets for Polaroid Photos with a discount of $5.90.

### SEGMENTS

**MOST PROFITABLE SALES SEGMENT**

**Objective:** The objective of identifying the Most Profitable Sales Segment is to determine which customer segment generates the highest sales and profit for the Superstore.

````sql
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
````

![sspr segments](https://github.com/user-attachments/assets/041b0d72-59f7-4f67-b371-82c00b54c74d)


**Answer:** The Consumer segment had total sales of $1,161,401.34, total profits of $134,119.21, and a profit margin of 11.55%. The Corporate segment recorded total sales of $706,146.36, total profits of $92,399.13, and a profit margin of 13.08%. The Home Office segment achieved total sales of $429,653.15, total profits of $60,298.68, and a profit margin of 14.03%.

**DISCOUNT TOTALS FOR EACH SEGMENT**

**objective:** The objective of analyzing Discount Totals for Each Segment is to understand how discounts are distributed across different customer segments.

````sql
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
````

![sspr segment discount](https://github.com/user-attachments/assets/07b4af54-8f38-4555-b4cf-f6f7a89f642f)


**Answer:** The Consumer segment had a total discount of $820.91, the Corporate segment had a total discount of $477.85, and the Home Office segment had a total discount of $262.33.

**REVENUE AND PROFIT DISTRIBUTION BY SHIP MODE**

**Objective:** The objective of analyzing Revenue and Profit Distribution by Ship Mode is to understand how different shipping methods impact sales revenue and profitability.

````sql
-- Total sales and profit by ship mode

	SELECT Ship_Mode,  ROUND(SUM(Sales),2) as Total_Sales,
	ROUND(SUM(Profit),2) as Total_Profits,
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM [superstore].[dbo].[sales]
 GROUP BY	
	Ship_Mode
 Order By 
	Total_Profits DESC
````

![sspr shipmode](https://github.com/user-attachments/assets/e585c2ba-8dcf-45cf-9918-ceed363c3907)


**Answer:** Standard Class had total sales of $1,358,215.74, total profits of $164,508.79, and a profit margin of 12.11%. Second Class recorded total sales of $459,193.57, total profits of $57,446.64, and a profit margin of 12.51%. First Class achieved total sales of $351,428.42, total profits of $48,969.84, and a profit margin of 13.93%. Same Day reported total sales of $128,363.12, total profits of $15,891.76, and a profit margin of 12.38%.

**TOP-TIER CLIENTS**

**Objective:** The objective of identifying Top-Tier Clients is to recognize and analyze the most valuable customers in terms of sales revenue, profitability, and loyalty.

````sql
-- Top customers 
  SELECT Customer_name, ROUND(SUM(Sales),2) as Total_Sales,
	ROUND(SUM(Profit),2) as Total_Profits,
	ROUND((SUM(profit) / SUM(sales)) * 100, 2) as profit_margin
FROM [superstore].[dbo].[sales]
 GROUP BY	
	Customer_Name
 Order By 
	Total_Profits DESC
````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![sspr top customer](https://github.com/user-attachments/assets/856863fc-810e-4789-9a62-69f5a36ec4fc)


**ANSWER:** The top 4 customers are Tamara Chand with total sales of $19,052.22, total profits of $8,981.32, and a profit margin of 47.14%; Raymond Buch with total sales of $15,117.34, total profits of $6,976.10, and a profit margin of 46.15%; Sanjit Chand with total sales of $14,142.33, total profits of $5,757.41, and a profit margin of 40.71%; and Hunter Lopez with total sales of $12,873.30, total profits of $5,622.43, and a profit margin of 43.68%.


## Visualization

### Superstore Sales Performance Dashboard
![sales Dashboard (1)](https://github.com/user-attachments/assets/8cde1604-81e0-40b7-b39a-a9aceef15294)
[dashboard link](https://public.tableau.com/app/profile/kosemani.babajide/viz/superstore1_17279793347590/salesDashboard)


###  Sales Insights & Customer Performance Dashboard
![sales Dashboard 2](https://github.com/user-attachments/assets/79a80647-3ae8-4370-becf-a5f1cb4c75d5)
[dashboard link](https://public.tableau.com/app/profile/kosemani.babajide/viz/superstore2_17279793845490/salesDashboard2)



### Recommendations:

**1.Loyalty Programs and Feedback Mechanisms:**

**- Observation:** Implement programs to reward top customers and encourage repeat purchases. Recognizing that your best customers are essential to your business's sustained growth, it's crucial to show appreciation and incentivize their continued loyalty.

**- Recommendation:** Develop and enhance loyalty programs to retain top customers. Create tiered reward systems that offer exclusive benefits, discounts, and perks based on the customer’s purchase history and engagement levels. Personalized rewards can significantly improve customer satisfaction and loyalty.

**- Feedback Mechanism:** Collect and analyze feedback from bottom-performing customers to improve their experience. Establish a systematic approach to gather insights through surveys, feedback forms, and direct conversations. Use this data to identify pain points, address issues, and tailor solutions that can transform dissatisfied customers into loyal advocates.

**2. Shipping and Logistics:**

**- Observation:** First Class shipping has higher profit margins but is underutilized. Despite its potential to significantly boost profitability, it seems customers are not opting for this shipping method as frequently as they could be. This underutilization represents a missed opportunity to enhance overall revenue.

**- Recommendation:** Encourage the use of First Class shipping to capitalize on its higher profit margin. This can be achieved through targeted marketing efforts, highlighting the benefits of First Class shipping such as faster delivery times and premium service. Offering incentives or discounts for choosing First Class shipping can also motivate customers to select this option more often, thereby increasing the profit margins.

**- Cost Management:** Optimize shipping costs for Standard and Second Class to improve overall profitability. By negotiating better rates with shipping carriers, consolidating shipments, and improving packaging efficiency, the costs associated with Standard and Second Class shipping can be reduced. This will help enhance profitability across all shipping methods, not just First Class. Additionally, implementing technology to streamline logistics and improve tracking can lead to cost savings and improved customer satisfaction.

**3. Quarterly and Seasonal Sales Strategy:**

**- Observation:** Sales are not balanced throughout the year, with certain quarters underperforming. This inconsistency in sales performance can lead to revenue fluctuations and operational challenges. Identifying the factors contributing to these variations, such as seasonal trends, market demand, and consumer behavior, is crucial for developing a more balanced sales strategy.

**- Recommendation:** Implement off-peak promotions during lower-performing quarters to balance sales throughout the year. By offering discounts, special deals, and targeted marketing campaigns during these periods, you can stimulate demand and increase sales. Consider holiday-themed promotions, limited-time offers, and loyalty rewards to attract customers. Additionally, analyzing past sales data to predict low-performing periods and proactively planning promotions can help smooth out sales peaks and troughs.

**- Inventory Management:** Ensure sufficient stock for high-demand periods to avoid stockouts. Proper inventory planning and management are essential to meet customer demand during peak seasons. Utilize sales forecasts, historical data, and market trends to anticipate high-demand periods and adjust inventory levels accordingly. Implementing just-in-time inventory practices and maintaining strong relationships with suppliers can help ensure timely restocking. Additionally, leveraging technology, such as inventory management software, can provide real-time insights into stock levels and streamline the replenishment process.

4. **Outliers and Data Integrity:**

**- Observation:** Irregularities such as inaccurate record-keeping and negative profit margins. These discrepancies can lead to misleading financial reports and impede the ability to make informed business decisions. Ensuring data integrity is crucial for maintaining trust and reliability in the business processes.

**- Recommendation:** Ensure accurate record-keeping for discounts and sales. Implement robust data management systems and training programs for employees to uphold high standards of accuracy. Regular audits and reviews should be conducted to identify and rectify any inconsistencies promptly. Utilize automated systems where possible to minimize human error and streamline data entry processes.

**- Investigate Negatives:** Dive deeper into cases with negative profit margins to identify and resolve underlying issues. A thorough analysis should be conducted to understand the root causes of these anomalies. This may involve examining supply chain inefficiencies, pricing strategies, or operational costs. Addressing these issues will help in eliminating the factors contributing to negative profit margins and improving overall profitability. Implement corrective actions based on the findings to prevent similar issues in the future.

By addressing these outliers and implementing the tailored recommendations, you can optimize business operations, increase profitability, and enhance overall customer satisfaction.

---

### Limitations:

Here are some of the potential limitations you might face in this project:

1. **Data Quality and Accuracy:**
   - **Inconsistent Data:** Inaccuracies or inconsistencies in the data can lead to misleading insights. Ensure that data is clean, up-to-date, and accurately reflects the business transactions.
   - **Missing Data:** Missing information, such as customer details or discount records, can affect the reliability of the analysis and the conclusions drawn.

2. **Analytical Scope:**
   - **Limited Historical Data:** Analyzing data only from 2014 to 2017 might not capture long-term trends or seasonal variations fully. Including more recent data could provide better insights.
   - **Granularity of Data:** The level of detail in the data might limit the depth of analysis. For instance, more granular data on customer behavior or product performance could lead to more precise recommendations.

3. **External Factors:**
   - **Market Dynamics:** Changes in market conditions, such as economic shifts or competitive actions, can impact sales and profitability but might not be reflected in historical data.
   - **Consumer Behavior:** Evolving consumer preferences and behaviors can affect the relevance of historical data and the applicability of recommendations.

4. **Analytical Tools and Techniques:**
   - **Limited Analytical Tools:** The tools and methods used for analysis might have limitations in handling complex datasets or identifying subtle patterns.
   - **Predictive Accuracy:** Predictive models based on historical data might not always accurately forecast future performance, especially in a dynamic market environment.

5. **Business Constraints:**
   - **Resource Constraints:** Implementing recommendations might require resources (financial, human, or technological) that are not readily available.
   - **Operational Challenges:** Changes in business operations based on analytical insights might face resistance or operational challenges, such as retraining staff or adjusting supply chain processes.

6. **Privacy and Compliance:**
   - **Data Privacy:** Ensuring compliance with data privacy regulations is crucial. Proper handling and protection of customer data are essential to avoid legal issues.
   - **Ethical Considerations:** The use of customer data for analysis and decision-making should be done ethically, respecting customer privacy and preferences.

7. **Implementation:**
   - **Change Management:** Effectively implementing recommendations requires managing change within the organization, which can be challenging and time-consuming.
   - **Measurement and Feedback:** Continuously measuring the impact of implemented changes and gathering feedback is essential to ensure the desired outcomes are achieved.

Addressing these limitations involves careful planning, robust data management practices, and a flexible approach to analysis and implementation. 

## REFERENCES 

1. **Data Sources:**
   - Superstore Sales Data: Usually collected from internal sales databases or publicly available datasets such as the Superstore dataset provided by Tableau.
   - Customer Data: Internal CRM (Customer Relationship Management) systems or external data providers.

2. **Analytical Tools:**
   - **Data Analysis Tools:** 
     - Microsoft Excel: For data organization, calculations, and basic visualizations.
     - Python/R: For advanced data analysis and statistical modeling.
     - Tableau/Power BI: For data visualization and dashboard creation.

3. **Methodologies:**
   - **Descriptive Statistics:** Used to summarize the main features of the data.
   - **Predictive Analytics:** Models such as regression analysis to predict future trends.
   - **Segmentation Analysis:** Customer and product segmentation to identify patterns and trends.
   - **Time-Series Analysis:** Analyzing trends over different periods.

4. **Resources:**
   - **Academic Journals:** Papers on retail analytics, customer segmentation, and discount strategies.
   - **Industry Reports:** Insights from market research firms like Gartner, Forrester, or McKinsey on retail and customer trends.
   - **Books:**
     - "Data Science for Business" by Foster Provost and Tom Fawcett.
     - "Retail Analytics: The Secret Weapon" by Ron Boire.

5. **Data Privacy and Compliance:**
   - **GDPR (General Data Protection Regulation):** Ensuring compliance with data privacy laws.
   - **Microsoft Privacy Statement:** [Microsoft Privacy Statement](https://privacy.microsoft.com/en-us/privacystatement)


