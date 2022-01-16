use myemployees;
select * from departments;

# select where
/* 
> < = != <> >= <=
&& || ! 
and or not

&& and :  if 2 are true; result is true, otherwise is false
|| or : if one is true, result is true, otherwise is false
! or not: if self is false, result is true, otherwise is false

*/

# example 1 :  salary > 12000
SELECT 
    *
FROM
    employees
WHERE
    salary > 12000;
    
# example 2 :  find employee name and number department number not equal to 90 
SELECT 
    last_name, department_id
FROM
    employees
WHERE
    department_id != 90;
    
# example 3:  find employee name, salary and bonus at salary between 10000 to 20000

SELECT 
    last_name, salary, IFNULL(commission_pct, 0)
FROM
    employees
WHERE
    salary >= 1000 AND salary <= 20000;
    
# example 4:  find all at dapartment number not between 90 to 110 or salary > 15000
SELECT 
    *
FROM
    employees
WHERE
    NOT (department_id >= 90
        AND department_id <= 110)
        OR salary > 15000;
