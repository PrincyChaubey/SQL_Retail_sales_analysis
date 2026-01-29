# Retail Sales SQL Analysis

## Description
This project analyzes retail sales data using MySQL to understand sales trends and customer purchasing behavior.

## Dataset
The dataset contains transaction-level retail sales data including:
- Customer details
- Product categories
- Sales amount
- Transaction date

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
