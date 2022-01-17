use myemployees;
select * from employees;

/*
 select xxx
 from table
 where xxx
 order by  xxx asc | desc  (asc can be removed by default)
*/

#1 find all by salary from top to low
select * from employees order by salary desc;

#2 find all information by department id greater and equal than 90, by hire date(early first)
SELECT 
    *
FROM
    employees
WHERE
    department_id >= 90
ORDER BY hiredate;


#3 sort by calculation  ---- show all information order by salary 
SELECT 
    *,
    salary * 12 * (1 + IFNULL(commission_pct, 0)) AS annual_salary
FROM
    employees
ORDER BY salary * 12 * (1 + IFNULL(commission_pct, 0)) desc;

#4 sort by as name  ---- show all information order by salary 
SELECT 
    *,
    salary * 12 * (1 + IFNULL(commission_pct, 0)) AS annual_salary
FROM
    employees
ORDER BY annual_salary desc;

#5 order by name's length to show last_name and salary  
select length(last_name) as length_lastName, last_name, salary
from employees
order by length_lastName desc;


#6 show all information order by salary and then order by employee_id
select *
from employees
order by salary asc, employee_id desc;   ## salary order first, if salary is the same, then look at employee_id's order


