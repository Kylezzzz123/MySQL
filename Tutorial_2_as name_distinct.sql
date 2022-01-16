#1 as name, we can clarify the duplicate name by using as name
use myemployees;
select 100%98 as result;
select last_name as lastName, first_name as firstName from employees;
SELECT 
    last_name lastName, first_name firstName
FROM
    employees; 
    
# Example: query salary, show out put
select salary as 'out put' from employees;


#2 remove dulicate
# find department numbers
SELECT 
    distinct department_id 
FROM
    employees;
    
