	create table Wall_mart(
	
	order_ID varchar (15) primary Key,	
	 order_Date	Date,
	  ship_Date	Date,
	   customer_ID	varchar,
	    sales_Rep varchar  ,
		 category	varchar,
		  product_ID varchar ,
		   product_Name	varchar ,
		    quantity	int,
			 unit_Price	float ,
			  cost_Price	float ,
			    net_Sales	float ,
				 total_Cost	float,
				  gross_Profit	float (10),
				   region	varchar,
				    payment_Mode	varchar,
					 status varchar
	
	);
	
	select * from wall_mart;
	
	drop table wall_mart
	
	select * from wall_mart;
	
	
	select category , count (*)
	from wall_mart 
	group by category 
	having count(*)>1
	
	
	
	select max(total_cost) as total_sell  from wall_mart
	where total_cost<(select max(total_cost)  from wall_mart)
	
	
	select * from wall_mart
	
	
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
		 
				
			
				        
		
		
	
	
		  
	
	
	
	   
	      
	
	
	   
	
	
	
		
	
	
