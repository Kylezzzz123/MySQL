use myemployees;
#1 find last_name and department id and anuual salary order by annual salary from top, order by last_name from low
SELECT 
    last_name,
    department_id,
    salary * 12 * (1 + IFNULL(commission_pct, 9)) AS annual_salary
FROM
    employees
ORDER BY annual_salary DESC , last_name ASC;

#2 find last_name and salary at salary not between 8000 to 170000, order by salary from high
select last_name, salary
from employees
where salary not between 8000 and 170000
order by salary desc;


#3 find all information in email with letter 'e', order by email letter from long to short, and order by department id from low to high
SELECT 
    *, length(email)
FROM
    employees
WHERE
    email LIKE '%e%'
ORDER BY LENGTH(email) DESC , department_id;
