-- scalar subquery :- it always returns 1 row and 1 col

select e.* 
from employee e join (select avg(salary) sal from employee ) avg_sal
on  e.salary > avg_sal.sal ;
