create database supermarket_sales_analysis;
create table supermarket_sales_analysis_2(
Branch varchar(200),
City varchar(200),
Customer_type varchar(200),
Gender	varchar(200),
Product_line varchar(200),
Unit_price_Quantity	Bigint,
Tax	int,
Sales	int, 
Dates date,
Times time,
Payment	varchar(200),
cogs int,
gross_margin_percentage	int,
gross_income float,
Rating int
);

drop table supermarket_sales_analysis_2;
select * from supermarket_sales_analysis_2;
select count(*) from supermarket_sales_analysis_2;
select sum(unit_price * quantity) as Total from supermarket_sales_analysis_2 where "branch" = "C";
select avg(gross_income) from supermarket_sales_analysis_2;
select max(rating) from supermarket_sales_analysis_2;
select min(unit_price) from supermarket_sales_analysis_2;

-- Total Sales Generated Per Branch
select ï»¿Branch, sum(unit_price * quantity) as Total
From supermarket_sales_analysis_2
Group by ï»¿Branch;

-- Average Grsoss Income Per_Customer_Type
select Customer_type, avg(gross_income) as Average_Gross_Income_Per_Customer_Type
From supermarket_sales_analysis_2
group by Customer_type;

-- The Most and Least Popular Product Line By Number of Transaction
select product_line, count(*) as Popular_Product_Line
From supermarket_sales_analysis_2
group by Product_line
order by Popular_Product_Line desc;

-- Total Revenue
select city, sum(unit_price * quantity) as Total_Revenue
From supermarket_sales_analysis_2
group by City
order by Total_Revenue desc;

-- Cities With Revenue Greater Than $25, 000
select city, sum(unit_price * quantity) as Total_Revenue
From supermarket_sales_analysis_2
group by City
Having Total_Revenue > 25000;

-- The marketting team preparing a report on the product performance they need to Identify product line with an average gross income over 15
-- Show branches fewer than 100 transactions
-- Identify branches where average gross income exceeds 12
-- Shows cities where total sales are below 25000


-- Q1 Assignment Product line with an Average Gross Income Over 15
select Product_line, avg(gross_income) as Average_Gross_Income_Over_Fifteen
From supermarket_sales_analysis_2
group by Product_line
Having Average_Gross_Income_Over_Fifteen > 15;

select * from supermarket_sales_analysis_2;

-- Branches fewer than 100 transactions
select ï»¿Branch, count(Sales) as Branches_fewer_than_Hundred_transactions
From supermarket_sales_analysis_2
group by  ï»¿Branch
Having Branches_fewer_than_Hundred_transactions > 100;

-- Identify branches where average gross income exceeds 12
select ï»¿Branch, avg(gross_income) as Average_Gross_Income_Greater_Than_Twelve
From supermarket_sales_analysis_2
group by ï»¿Branch
Having Average_Gross_Income_Greater_Than_Twelve > 12;

-- Shows cities where total sales are below 25000
select City, sum(unit_price * quantity) as Total_Sales
From supermarket_sales_analysis_2
group by City
Having sum(unit_price * quantity) > 25000


