SELECt * from pizza_sales


-- Total Revenue
SELECT SUM(total_price) AS 'Total Revenue'
FROM pizza_sales

-- Average Order Value

SELECT (SUM(total_price) / count(Distinct order_id)) AS 'Average Order Value'
FROM pizza_sales


-- Total Pizzas Sold

SELECT SUM(quantity) AS 'Total Pizzas Sold'
FROM pizza_sales


-- Total Orders
SELECT Count(Distinct order_id ) as 'Total Orders'
from pizza_sales


-- Average Pizzas Per Order
Select Round (cast(SUM(quantity) as float)  / Count(Distinct order_id ), 2) as 'Average Pizzas Per Order'
from pizza_sales



-- Daily Trend for Total Orders
select DATENAME(WEEKDAY,order_date) as 'day name' ,count(Distinct order_id) as 'total order' 
from pizza_sales
group by DATENAME(WEEKDAY,order_date)

-- Monthly Trend for Orders
select DATENAME(MONTH, order_date) as 'Month Name', COUNT(DISTINCT order_id) as 'Total Orders'
from pizza_sales
GROUP BY DATENAME(MONTH, order_date)


-- % of Sales by Pizza Category
select pizza_category, round ( sum(total_price),2) as total_profit,
 round ( sum(total_price)  / (select sum( total_price) from pizza_sales) * 100,2) as PCT 
from pizza_sales
group by pizza_category 

-- % of Sales by Pizza Size
select pizza_size, ROUND( sum(total_price),2) as total_profit,
 round ( sum(total_price)  / (select sum( total_price) from pizza_sales) * 100,2) as PCT 
from pizza_sales
group by pizza_size 


-- Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC


--  Top 5 Pizzas by Revenue
Select top 5 pizza_name , sum(total_price) as total_revenue
from pizza_sales
group by pizza_name
order by total_revenue desc


-- Bottom 5 Pizzas by Revenue
Select top 5 pizza_name , sum(total_price) as total_revenue
from pizza_sales
group by pizza_name
order by total_revenue asc


-- Top 5 Pizzas by Quantity
Select top 5 pizza_name , sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity desc


-- Bottom 5 Pizzas by Quantity
Select top 5 pizza_name , sum(quantity) as total_quantity
from pizza_sales
group by pizza_name
order by total_quantity asc

-- Top 5 Pizzas by Total Orders
SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC

-- L. Borrom 5 Pizzas by Total Orders
SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders asc
