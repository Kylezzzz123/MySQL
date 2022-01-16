# Query 1
/* 
select  query list
from    table name

*/
# Open table
USE myemployees;

#1. find single list 

SELECT 
    last_name
FROM
    employees;

#2 find multiple lists
SELECT 
    last_name, salary, email
FROM
    employees;

# find all lists
SELECT 
    *
FROM
    employees;
    
#-------------------------------------------

#3 query value, index
SELECT 100; 
select 'john';

#4 query expression
SELECT 100 * 90;
SELECT 100 % 10;

#5 query function
select version();

#6 as name, we can clarify the duplicate name by using as name
select 100%98 as result;
select last_name as lastName, first_name as firstName from employees;
SELECT 
    last_name lastName, first_name firstName
FROM
    employees; 
    
# Example: query salary, show out put
select salary as 'out put' from employees;


#7 remove dulicate
# find department numbers
SELECT 
    distinct department_id 
FROM
    employees;









