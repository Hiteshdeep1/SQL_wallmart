# SQL_wallmart
 Walmart Sales Analysis project focuses on analyzing retail sales data
 SQL to uncover meaningful business insights and trends. This beginner-level project uses SQL queries to explore sales performance, customer purchasing behavior,      product categories, payment methods, and branch-wise revenue.

The primary objective is to transform raw sales data into actionable insights that can help businesses understand customer preferences, identify top-performing products, evaluate sales performance, and make data-driven decisions.
 
## Project Objectives

Analyze overall sales and revenue performance.
Identify the best-performing product lines and branches.
Understand customer purchasing behavior and preferences.
Analyze popular payment methods.
Evaluate customer ratings and satisfaction.
Identify sales trends and patterns.
Practice SQL skills such as filtering, aggregation, grouping, sorting, and date-based analysis.

## Tools & Technologies

Database: PostgreSQL
SQL Tool: pgAdmin 4
Language: SQL

## Project Outcome
This project demonstrates how SQL can be used to analyze retail sales data, identify business trends, and generate insights to support better business decisions. It also provides a foundation for developing more advanced data analytics projects.

- **Database Creation**: The project starts by creating a database named `SQL_wallmart`.

## Dataset: Walmart Sales Dataset


1. **Retrieve all records from the orders table**
```sql
 select * from wall_mart
```


2. **Find all orders where region is 'West'**

 ```sql
 select * from wall_mart
 where region ='West'
```

3. **Display order_id, product_name, quantity, and net_sales for orders where net_sales is greater than 10,000**
```sql
select  
      order_id, 
	  product_name, 
	  quantity,
	  net_sales
	  from wall_mart
	  where net_sales>=1000
```


4. **Find all orders where status is 'Completed'**
```sql
  select * from wall_mart;
```
	 Select * from wall_mart
	 where status ='Completed'


5.**Calculate the total net sales for each region**
	 select * from wall_mart
```sql
select region, sum(net_sales) as total_netsell
from wall_mart
group by region
order by total_netsell desc
```

6.**Find the top 5 products with the highest total net sales**
	select * from wall_mart

```sql
select 
	    order_id,
		sales_rep,
		sum(net_sales) as total_sales
		from wall_mart
		group by  order_id,
		         sales_rep
		order by total_sales desc
	limit 5
```


7.**Calculate total gross profit for each category**
select * from wall_mart
```sql
select 
category,
sum(gross_profit) as gross_total
from wall_mart
group by category
order by gross_total  desc
```

8.**Find the total number of orders handled by each sales_rep**
select * from wall_mart
```sql
select 
sales_rep ,
count(order_id) as num_order
from wall_mart
group by  sales_rep  
order by num_order desc
```

9.**Find the top 3 customers who generated the highest total net sales**
select * from wall_mart
```sql
select customer_id, 
sum(net_sales) as total_netsales
from wall_mart
group by   customer_id
order by customer_id desc
limit 3
```

10.**Calculate monthly sales using order_date and identify which month had the highest total net sales**
```sql
SELECT
DATE_TRUNC('month', order_date)::DATE AS sales_month,
SUM(net_sales) AS total_net_sales
FROM wall_mart
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY total_net_sales DESC
limit 5
```

## Findings
Sales Performance: Analyzed total sales and revenue to understand overall business performance.
Product Line Analysis: Examined different product lines to identify high-revenue and low-revenue categories.
Branch Performance: Compared sales across branches and cities to identify top-performing locations.
Customer Analysis: Evaluated customer types and purchasing patterns to understand customer contributions to sales.
Payment Method Analysis: Analyzed payment preferences to identify commonly used payment methods.

## Report
The Walmart  Analysis project focuses on analyzing retail transaction data using SQL and PostgreSQL. The purpose is to extract useful business information from sales records and understand key performance indicators.

## Conclusion
The Walmart Sales Analysis project provided practical experience in using SQL to analyze retail sales data and answer business questions. By working with PostgreSQL, the project strengthened skills in data aggregation, filtering, grouping, sorting, and extracting meaningful insights from structured datasets.

					



  
