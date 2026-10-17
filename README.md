# SQL_wallmart
 Walmart Sales Analysis project focuses on analyzing retail sales data
 SQL to uncover meaningful business insights and trends. This beginner-level project uses SQL queries to explore sales performance, customer purchasing behavior,      product categories, payment methods, and branch-wise revenue.

The primary objective is to transform raw sales data into actionable insights that can help businesses understand customer preferences, identify top-performing products, evaluate sales performance, and make data-driven decisions.
 
Project Objectives

Analyze overall sales and revenue performance.

Identify the best-performing product lines and branches.

Understand customer purchasing behavior and preferences.

Analyze popular payment methods.

Evaluate customer ratings and satisfaction.

Identify sales trends and patterns.

Practice SQL skills such as filtering, aggregation, grouping, sorting, and date-based analysis.

Tools & Technologies

Database: PostgreSQL

SQL Tool: pgAdmin 4

Language: SQL

Dataset: Walmart Sales Dataset
/*
1-Retrieve all records from the orders table.
 2-Beginner   Find all orders where region is 'West'.
  3-Beginner	Display order_id, product_name, quantity, and net_sales for orders where net_sales is greater than 10,000.
   4-Beginner	   Find all orders where status is 'Completed'.
    5-Intermediate	 Calculate the total net sales for each region.
     6-Intermediate	  Find the top 5 products with the highest total net sales.
      7-Intermediate	Calculate total gross profit for each category.
       8-Intermediate	 Find the total number of orders handled by each sales_rep.
        9-Advanced	      Find the top 3 customers who generated the highest total net sales.
         10-Advanced	    Calculate monthly sales using order_date and identify which month had the highest total net sales.
*/


  1--1-Retrieve all records from the orders table.
   select * from wall_mart


   2-- Find all orders where region is 'West'.

   select * from wall_mart
   where region ='West'

   --3-Display order_id, product_name, quantity, and net_sales for orders where net_sales is greater than 10,000.

   select  
      order_id, 
	  product_name, 
	  quantity,
	  net_sales
	  from wall_mart
	  where net_sales>=1000



	  --4-Find all orders where status is 'Completed'.

	  select * from wall_mart;


	 Select * from wall_mart
	 where status ='Completed'


	 --5-Calculate the total net sales for each region.
	 select * from wall_mart

	 select region, sum(net_sales) as total_netsell
	 from wall_mart
	 group by region 
	 order by total_netsell desc


	--6-Find the top 5 products with the highest total net sales.
	select * from wall_mart



	select 
	    order_id,
		sales_rep,
		sum(net_sales) as total_sales
		from wall_mart
		group by  order_id,
		         sales_rep
		order by total_sales desc
	limit 5


	--7-Calculate total gross profit for each category.

		select * from wall_mart
		select 
		      category,
			  sum(gross_profit) as gross_total
			  from wall_mart
			  group by category
			  order by gross_total  desc


		--8-Find the total number of orders handled by each sales_rep.
		select * from wall_mart

		select 
		    sales_rep ,
			count(order_id) as num_order
			from wall_mart
			group by  sales_rep  
			order by num_order desc


	 --9-Find the top 3 customers who generated the highest total net sales.

	 select * from wall_mart

	 select customer_id, 
		 sum(net_sales) as total_netsales
		 from wall_mart
		 group by   customer_id
		 order by customer_id desc
		 limit 3


		--10-Calculate monthly sales using order_date and identify which month had the highest total net sales.

		   SELECT
             DATE_TRUNC('month', order_date)::DATE AS sales_month,
                 SUM(net_sales) AS total_net_sales
					FROM wall_mart
					GROUP BY DATE_TRUNC('month', order_date)
					ORDER BY total_net_sales DESC
					LIMIT 1;



  
