-- nested subquery 
-- subquery inside subquery 

select * from sales ;

-- Q) find store whos sales better than avg sales across all the stores 

-- 1) find total sales for each stores
-- 2) find avg sales for all stores
-- 3) compare 1 & 2

with sales_t as 
select store_name , sum(sales) as total_s
from sales 
group by store_name ;

select *
from sales_t s_t join (select avg(total_s) as avg_s from sales_t ) s_a
on s_t.total_s > s_a.avg_s ;
