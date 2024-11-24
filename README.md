# Superstore Sales and Profit Analysis: A Comprehensive Exploration Using SQL server and TABLEAU
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


##  Superstore Analysis Business Task

As part of our business strategy, we aim to gain comprehensive insights into various aspects of our superstore operations. Below are the key objectives for the analysis:

1. **Total Sales, Profit, and Profit Margin:**
   - Calculate the total sales, profit, and margin across the dataset.

2. **Annual Performance:**
   - Determine each year's total sales, total profit, and profit margin.

3. **Quarterly Performance:**
   - Analyze the total sales and total profit for each quarter across all years.

4. **Regional Analysis:**
   - Identify the region generating the highest sales, profits, and profit margin.
   - Count the number of customers in the central region.

5. **State Performance:**
   - Identify the top profitable state and the least profitable state.
   - Determine high-performing and low-performing cities.

6. **Category and Sub-Category Analysis:**
   - Identify the category and sub-category that bring in the highest sales and profits.
   - Determine the lowest performing region for each sub-category.

7. **Discount Analysis:**
   - Calculate the total discount per category and sub-category.

8. **Product Performance:**
   - Identify the top 20 most profitable products and the bottom 20 least profitable products.

9. **Segment Analysis:**
   - Determine the segment that generates the most profit and sales.

10. **Customer Analysis:**
    - Count the total number of customers from 2014 to 2017.
    - Count the total number of customers by region and by state.
    - Perform RFM (Recency, Frequency, Monetary) analysis on customers.

11. **Shipping Analysis:**
    - Analyze total sales and profit by ship mode.

These objectives will help us understand key performance metrics and identify opportunities for improvement in various areas of our superstore operations.

## Data Source
Superstore Sales data: The primary data used for this analysis is the "superstore.csv" file, containing detailed information about each sale made by the company
[data source link](https://github.com/grandady/superstore/blob/main/Sample%20-%20Superstore.csv)


## Methodologies for the Superstore Sales and Profit Analysis Project

To achieve the business objectives outlined, we will use a structured approach comprising the following methodologies:

-  **Data Collection:**
   - **Data Source Identification:** Gather the superstore dataset from the relevant source.
   - **Data Loading:** Load the dataset into MySQL for data management and querying.

-  **Data Cleaning:**
   - **Data Validation:** Check for missing values, duplicates, and inconsistencies in the dataset.
   - **Data Correction:** Address any data quality issues by cleaning the dataset.

-  **Data Transformation:**
   - **Data Formatting:** Ensure that all columns are in the appropriate data types (e.g., dates, strings, integers, decimals).
   - **Data Aggregation:** Aggregate data as necessary to facilitate analysis (e.g., total sales, total profit).

-  **Exploratory Data Analysis (EDA):**
   - **Descriptive Statistics:** Calculate basic statistics to understand the dataset (e.g., mean, median, standard deviation).
   - **Visualization:** Use Tableau to create initial visualizations for exploratory purposes.

-  **Data Analysis:**
   - **Total Sales and Profit Analysis:** Calculate overall sales, profit, and profit margins.
   - **Temporal Analysis:** Analyze sales and profit by year and quarter.
   - **Geographical Analysis:** Examine sales and profit distribution across regions, states, and cities.
   - **Category and Product Analysis:** Identify top-performing and least-performing categories, sub-categories, and products.
   - **Customer Analysis:** Perform RFM analysis and count the number of customers in various segments and regions.
   - **Shipping Analysis:** Analyze sales and profit based on different shipping modes.

-  **Data Visualization:**
   - **Dashboards and Reports:** Create interactive dashboards in Tableau to present findings.
   - **Charts and Graphs:** Use various visualizations (e.g., bar charts, line graphs, pie charts) to depict key insights.

-  **Interpretation of Results:**
   - **Insight Generation:** Derive actionable insights from the analysis and visualizations.
   - **Business Recommendations:** Formulate recommendations based on the findings to inform decision-making.

-  **Documentation and Presentation:**
   - **Report Writing:** Document the methodology, analysis, findings, and recommendations in a comprehensive report.
   - **Presentation:** Prepare a presentation to communicate the results and recommendations to stakeholders.

By following these methodologies, we will ensure a thorough and systematic analysis of the superstore data, yielding valuable insights for business strategy and decision-making. 

## Column Dictionary for Superstore Dataset

Here is a comprehensive column dictionary for the columns in your superstore dataset:

1. **Row ID:** 
   - **Description:** Unique identifier for each row in the dataset.

2. **Order ID:** 
   - **Description:** Unique identifier for each order.

3. **Order Date:** 
   - **Description:** Date when the order was placed.

4. **Ship Date:** 
   - **Description:** Date when the order was shipped.

5. **Ship Mode:** 
   - **Description:** Method of shipping for the order (e.g., Standard Class, Second Class, First Class, Same Day).

6. **Customer ID:** 
   - **Description:** Unique identifier for each customer.

7. **Customer Name:** 
   - **Description:** Full name of the customer.

8. **Segment:** 
   - **Description:** Customer segment (e.g., Consumer, Corporate, Home Office).

9. **Country:** 
   - **Description:** Country where the order was placed.

10. **City:** 
    - **Description:** City where the order was placed.

11. **State:** 
    - **Description:** State where the order was placed.

12. **Postal Code:** 
    - **Description:** Postal code of the location where the order was placed.

13. **Region:** 
    - **Description:** Region where the order was placed (e.g., East, West, Central, South).

14. **Product ID:** 
    - **Description:** Unique identifier for each product.

15. **Category:** 
    - **Description:** High-level category of the product (e.g., Furniture, Office Supplies, Technology).

16. **Sub-Category:** 
    - **Description:** Sub-category of the product within the main category (e.g., Chairs, Binders, Phones).

17. **Product Name:** 
    - **Description:** Name of the product.

18. **Sales:** 
    - **Description:** Sales amount for the order.

19. **Quantity:** 
    - **Description:** Number of units sold in the order.

20. **Discount:** 
    - **Description:** Discount applied to the order, represented as a decimal.

21. **Profit:** 
    - **Description:** Profit amount for the order.

This column dictionary provides clear descriptions for each column in your superstore dataset, which will be useful for data management and analysis tasks. 
