--1. Top 10 hoghest products by revenue
select top 10 product_id, sum(sale_price) as Sales
from df_orders
group by product_id
order by Sales  desc

--2. Top 5 selling product in each region
with cte as (
select region, product_id, sum(sale_price) as Sales
from df_orders
group by region, product_id
)
select * from(
select *
	,row_number() over(partition by region order by sales) as rn
from cte) A
where rn<=5


--3. Find the month over month growth comaprision for 2023 and 2024 sales

with cte as(
	select year(order_date) as order_year, month(order_date) as order_month, sum(sale_price) as Sales
	from df_orders
	group by year(order_date), month(order_date)
	--order by year(order_date), month(order_date)
)
select order_month,
sum(case when order_year = 2022 then sales else 0 end) as sales_2022,
sum(case when order_year = 2023 then sales else 0 end) as sales_2023

from cte
group by order_month
order by order_month

--4. For each category, which month had the highest sales

with cte as(
	select category, format(order_date, 'yyyyMM') as order_year_month, sum(sale_price) as Sales
	from df_orders
	group by category, format(order_date, 'yyyyMM')
	--order by category, format(order_date, 'yyyyMM')
)
select* from(
select*,
row_number() over(partition by category order by Sales desc) as rn
from cte) a 
where rn =1


--5. which sub category had the highest growth in sales in  2023 compare to 2022

with cte as(
	select sub_category, year(order_date) as order_year, sum(sale_price) as Sales
	from df_orders
	group by sub_category, year(order_date)
),
cte2 as(
	select sub_category,
	sum(case when order_year = 2022 then sales else 0 end) as sales_2022,
	sum(case when order_year = 2023 then sales else 0 end) as sales_2023

	from cte
	group by sub_category
	)
select top 1* ,
(sales_2023-sales_2022) as Sales_growth,
(sales_2023-sales_2022)*100/sales_2022 as Sales_growth_percent

from cte2
order by (sales_2023-sales_2022)*100/sales_2022 desc