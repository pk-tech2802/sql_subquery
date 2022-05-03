select * from employee ;
select * from department ;

-- find the name of the employee whose salary is more than avg salary of all the employe  

-- 1) find the avg salary 
select avg(salary) from employee ;
-- 2) filter the employee based on above result 

select * from employee e
where e.salary > (select avg(salary) from employee ) ;
