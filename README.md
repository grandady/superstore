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

**Objective:** 
Optimize business operations, increase profitability, and enhance customer satisfaction by addressing identified irregularities and implementing targeted recommendations based on sales, profit, discount, and customer data analysis.

**Scope:** 
The analysis covers data from 2014 to 2017, focusing on sales performance, profit margins, discount strategies, regional performance, customer segmentation, and shipping methods.

### Key Areas of Focus:

1. **Sales and Profit Analysis:**
   - Evaluate total sales and profit margins across different products, categories, regions, and customer segments.
   - Identify top and bottom performers to tailor strategies for enhancing profitability and growth.

2. **Discount Strategy:**
   - Analyze the impact of discounts on sales and profit margins.
   - Optimize discount strategies to balance customer attraction with profitability.
   - Address irregularities where high discounts do not translate into proportional sales or profits.

3. **Regional Performance:**
   - Assess performance disparities across different regions and states.
   - Tailor marketing and sales strategies to address regional preferences and improve underperforming areas.

4. **Customer Segmentation:**
   - Segment customers based on sales, profits, and discounts to identify high-value and low-performing segments.
   - Develop targeted loyalty programs and feedback mechanisms to enhance customer satisfaction and retention.

5. **Shipping and Logistics:**
   - Analyze the profitability of different shipping methods.
   - Promote shipping methods with higher profit margins and optimize costs for standard shipping options.

6. **Product Performance:**
   - Focus on promoting top-performing products and revising strategies for low-performing ones.
   - Adjust pricing and inventory management to optimize product performance.

7. **Seasonal and Quarterly Sales:**
   - Balance sales distribution throughout the year by implementing off-peak promotions.
   - Ensure sufficient stock availability during high-demand periods to maximize sales.

8. **Data Integrity and Record-Keeping:**
   - Ensure accurate record-keeping for discounts and sales.
   - Address data integrity issues to provide reliable analysis and insights.

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
The project aims to optimize business operations, increase profitability, and enhance overall customer satisfaction by addressing the identified irregularities and implementing the tailored recommendations. This holistic approach will drive sustainable growth and improve the competitive positioning of the business in the market.

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

Following these methodologies will ensure a thorough and systematic analysis of the superstore data, yielding valuable insights for business strategy and decision-making.

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

15. **Category:** High-level category of the product (e.g., Furniture, Office Supplies, Technology).

16. **Sub-Category:** Sub-category of the product within the main category (e.g., Chairs, Binders, Phones).

17. **Product Name:** Name of the product.

18. **Sales:**  Sales amount for the order.

19. **Quantity:**  Number of units sold in the order.

20. **Discount:** Discount applied to the order, represented as a decimal.

21. **Profit:** Profit amount for the order.


### Exploration Data Analysis

[link to sql file]()

### TOTAL SALES AND TOTAL PROFIT, TOTAL PROFIT MARGIN AND TOTAL DISCOUNT

**Objective:**

This focuses on the general analysis of **Total Sales, Total Profit, Profit Margin, and Total Discount** for the Superstore from 2014 to 2017. These metrics are crucial for gaining insights into the store's financial health, helping to identify successful areas and those needing improvement.

1. **Total Sales:** Measures the overall revenue generated, providing insights into the store's ability to attract customers and drive revenue across different products, regions, and customer segments.

2. **Total Profit:** Determines the actual financial gain after deducting all expenses from total sales, highlighting profitability and areas for cost management and pricing optimization.

3. **Profit Margin:** Calculated by dividing total profit by total sales and expressing it as a percentage. It measures the efficiency of converting sales into profits, providing insights into operational efficiencies and pricing effectiveness.

4. **Total Discount:** Analyzes the impact of discount strategies on sales and profitability, helping to understand if discounts effectively drive sales and improve customer satisfaction without significantly reducing profit margins.

By analyzing these metrics, the project aims to optimize business operations, enhance profitability, and improve customer satisfaction, ensuring the Superstore's sustained growth and competitive advantage.


**TOTAL SALES AND TOTAL PROFIT AND TOTAL PROFIT MARGIN**

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



**TOTAL SALES, TOTAL PROFIT, TOTAL PROFIT MARGIN  AND TOTAL DISCOUNT OF THE YEAR**

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
    Year,TotalProfits Desc;
````

**TOTAL PROFITS, TOTAL SALES, PROFIT MARGIN and TOTAL DISCOUNT PER QUARTER**

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

**The total sales, total profits, profit margin, and Total discount for each quarter across all years33

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

**The region generates the highest sales, profits, profit margin, and Total Discounts**

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


**Total discount per state**
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

````sql
-- High Performing Cities 

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
	Category,Sub_Category
ORDER BY  
	Total_Profits DESC
````

````sql
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
	Region, Category, Sub_Category
ORDER BY  
	Total_Profits
````

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

````sql
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
````

````sql
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
````

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



## Visualization

### Superstore Sales Performance Dashboard
![sales Dashboard (1)](https://github.com/user-attachments/assets/8cde1604-81e0-40b7-b39a-a9aceef15294)
[dashboard link](https://public.tableau.com/app/profile/kosemani.babajide/viz/superstore1_17279793347590/salesDashboard)


###  Sales Insights & Customer Performance Dashboard
![sales Dashboard 2](https://github.com/user-attachments/assets/79a80647-3ae8-4370-becf-a5f1cb4c75d5)
[dashboard link](https://public.tableau.com/app/profile/kosemani.babajide/viz/superstore2_17279793845490/salesDashboard2)



### Outliers and Recommendations:

**Objective:**
Identify and address outliers in the data to enhance the accuracy and reliability of the analysis, and implement effective recommendations to improve business operations.

**Scope:**
This assessment covers various factors including loyalty programs, feedback mechanisms, shipping and logistics, quarterly and seasonal sales strategies, and data integrity.

### Key Areas of Focus:

1. **Loyalty Programs and Feedback Mechanisms:**
   - **Observation:** Implement programs to reward top customers and encourage repeat purchases.
   - **Recommendation:** Develop and enhance loyalty programs to retain top customers.
   - **Feedback Mechanism:** Collect and analyze feedback from bottom-performing customers to improve their experience.

2. **Shipping and Logistics:**
   - **Observation:** First Class shipping has higher profit margins but is underutilized.
   - **Recommendation:** Encourage the use of First Class shipping to capitalize on its higher profit margin.
   - **Cost Management:** Optimize shipping costs for Standard and Second Class to improve overall profitability.

3. **Quarterly and Seasonal Sales Strategy:**
   - **Observation:** Sales are not balanced throughout the year, with certain quarters underperforming.
   - **Recommendation:** Implement off-peak promotions during lower-performing quarters to balance sales throughout the year.
   - **Inventory Management:** Ensure sufficient stock for high-demand periods to avoid stockouts.

4. **Outliers and Data Integrity:**
   - **Observation:** Irregularities such as inaccurate record-keeping and negative profit margins.
   - **Recommendation:** Ensure accurate record-keeping for discounts and sales.
   - **Investigate Negatives:** Dive deeper into cases with negative profit margins to identify and resolve underlying issues.

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


