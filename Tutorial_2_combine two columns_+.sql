#1  add 2 columns into one, 

# example 1: select 100+90
# example 2: select '123' + 90; '123' will be transform to number
# example 3: 'john' + 90; if transform failed, the string will be to 0 --> 0+90=90
# example 4: null+10; whenever one if null, the result is null

use myemployees;
select concat('a','b','c') as result;
SELECT 
    concat(last_name, ' ', first_name) as 'name'
FROM
    employees;
    
# show all list in table employees, and use ',' to separate, and list name is out_put
SELECT 
    IFNULL(commission_pct, 0) AS commission, commission_pct
FROM
    employees;


SELECT 
    CONCAT(first_name,
            ', ',
            last_name,
            ', ',
            job_id,
            ', ',
            ifnull(commission_pct, 0)) AS out_put
FROM
    employees;