-- Create TABLE
CREATE TABLE retail_sales(
transactions_id int ,
sale_date date,
sale_time time,
customer_id int,
gender varchar(15),
age	int,
category varchar(15),
quantity int,
price_per_unit float,
cogs float,
total_sale float
);

select * from retail_sales limit 10;
select count(*) from retail_sales ;

--Data cleaning ( checking for null values)
select * from retail_sales 
where
    transactions_id  is  null
    or
    sale_date  is null
    or
    sale_time is null
    or
    customer_id  is null
    or
    gender  is null
    or
	age is null
	or
	category is null
	or
	quantity is null
	or
	price_per_unit is null
	or
	cogs is null
	or
	total_sale is null ;
 --   
select * from retail_sales limit 10;
 
-- Data exploration

-- How many sales we have?

select count(transactions_id) as total_sales from retail_sales;

-- How many unique customers we have?

select  count(distinct customer_id) total_customer from retail_sales;

--How many unique category we have?

select  count(distinct category) total_customer from retail_sales;


-- Data Analysis & Findings 

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

--Que.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05.

select * 
from retail_sales 
where sale_date='2022-11-05';

--Que.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022.

select * 
from retail_sales 
where category='clothing' 
and sale_date between '2022-11-01' and '2022-11-30'
and quantity>=4;

--Que.3 Write a SQL query to calculate the total sales (total_sale) for each category.:
select category, 
       sum(total_sale) as total_sales 
from retail_sales 
group by category;

--Que.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:

select category,
       avg(age) as avg_age 
from retail_sales 
where category='Beauty';

--Que.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select * 
from retail_sales 
where total_sale >1000;

--Que.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:

select category ,
       gender, 
       count(transactions_id) as total_transaction 
from retail_sales 
group by category,gender;

--Que.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year.

select* from (
       select year(sale_date) as year ,
       month(sale_date) as month,
       avg(total_sale) as avg_sale,
       rank() over(partition by year(sale_date) order by avg(total_sale) desc) as Rn
from retail_sales
group by year , month )t 
where rn=1;

--Que.8 Write a SQL query to find the top 5 customers based on the highest total sales .

select customer_id,
       sum(total_sale) as total_sales 
from retail_sales 
group by customer_id 
order by total_sales desc 
limit 5;

--Que.9 Write a SQL query to find the number of unique customers who purchased items from each category.

SELECT 
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM purchases
GROUP BY category;


--Que.10 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17).

with shift_sale as (
select *,
    case
       when Hour(sale_time) < 12 then 'Morning'
       when Hour(sale_time) between 12 and 17 then 'Afternoon'
       else 'Evening'
	end as Shift 
from retail_sales)
select shift ,
       count(*) as Num_orders
from shift_sale
group by shift


                   ---End----
