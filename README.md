# Retail Sales SQL Analysis

## Description
This project analyzes retail sales data using MySQL to understand sales trends and customer purchasing behavior.

## Dataset
The dataset contains transaction-level retail sales data including:
- Customer details
- Product categories
- Sales amount
- Transaction date
  
## Objectives

- **Set up a retail sales database:** Create and populate a retail sales database using the provided sales data.
- **Data Cleaning:** Identify and remove records with missing or null values.
- **Exploratory Data Analysis (EDA):** Perform basic exploratory analysis to understand the dataset.
- **Business Analysis:** Use SQL queries to answer business questions and derive actionable insights from the sales data.

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
```

## Findings

- **Customer Demographics:** The dataset includes customers from various age groups, with sales distributed across categories such as Clothing and Beauty.
- **High-Value Transactions:** Several transactions recorded a total sale amount greater than 1000, indicating premium purchases.
- **Sales Trends:** Monthly sales analysis shows noticeable variations, helping identify peak sales periods.
- **Customer Insights:** The analysis highlights top-spending customers and identifies the most popular product categories.

