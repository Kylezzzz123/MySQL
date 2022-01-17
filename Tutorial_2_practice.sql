use myemployees;
SELECT 
    last_name,
    department_id,
    salary * 12 * (1 + IFNULL(commission_pct, 0)) AS annulary_salary
FROM
    employees;
    
#1 find last_name at no commmision and salary less than 18000
SELECT 
    last_name, salary
FROM
    employees
WHERE
    commission_pct IS NULL
        AND salary < 18000;
	
#2 find all at job_id not in 'IT' or salary is 12000
SELECT 
    *
FROM
    employees
WHERE
    job_id NOT IN ('IT') OR salary = 12000;

#3 check department description
desc departments;

#4 find the docation ID in departments
SELECT
	distinct location_id
from 
	departments