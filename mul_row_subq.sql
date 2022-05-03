-- multiple row subquery 
-- 1) multiple col and multiple rows
-- 1) single col and multiple rows

-- Q) find details of employee who earn highest salary in each department

(select dep_name , max(sal) 
from employee 
group by dep_name) tbl1 ;

select *
from employee e
where (e.dep_name ,e.sal) in tbl1 ;

--///////////////////////////////

-- single col multiple row subquery
-- Q) find the department who do not have employee

select distinct dep_name from employee ;

select * 
from department d
where d.dep_name not in (select distinct dep_name from employee) ;
