# Retail Sales SQL Analysis

## Description
This project analyzes retail sales data using MySQL to understand sales trends and customer purchasing behavior.

## Dataset
The dataset contains transaction-level retail sales data including:
- Customer details
- Product categories
- Sales amount
- Transaction date
- 
##Objectives
###Set up a retail sales database: Create and populate a retail sales database with the provided sales data.
###Data Cleaning: Identify and remove any records with missing or null values.
###Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
###Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.

## Tools Used
- MySQL
- SQL
- GitHub

## Analysis Performed
- Total sales by category
- Unique customers per category
- Monthly sales trends
- Basic customer analysis

## Sample Query
```sql
SELECT category, COUNT(DISTINCT customer_id)
FROM retail_sales
GROUP BY category;

## Findings
###Customer Demographics: The dataset includes customers from various age groups, with sales distributed across different categories such as Clothing and Beauty.
###High-Value Transactions: Several transactions had a total sale amount greater than 1000, indicating premium purchases.
###Sales Trends: Monthly analysis shows variations in sales, helping identify peak seasons.
###Customer Insights: The analysis identifies the top-spending customers and the most popular product categories.
