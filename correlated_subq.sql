-- correlated subquery 
-- inner subquery depends upon outer query

-- Q) find the employees whos salary is more than avg sal of employees of that department 

select avg(salary) from employees where dep_name = "specific dep_name";

-- for each outer query inner subquery will be executed once

select * 
from employees e1 
where e1.salary > (select avg(salary) 
				   from employees e2 
				   where e2.dep_name = e1.dep_name )
				   
				   
-- Q) select department who do not have employees

select * 
from department d
where not exists (select 1  from employee e where e.dep_name = d.dep_name) ;-- this inner query will give empty table 
																			--if department dosent have employee	   
