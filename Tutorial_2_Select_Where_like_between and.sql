use myemployees;

/*
like  ---- use with common  --- % : with any strings, include zero string  ---- _ : any one string
between and
in
is null | is not null
*/


# LIKE

# 1 :  find all at employee include at string  'a' 
SELECT 
    *
FROM
    employees
WHERE
    last_name LIKE '%a%';
    
#2 find last_name and salary at employee name include the third letter is 'n', fifth letter is 'l'
SELECT 
    last_name, salary
FROM
    employees
WHERE
    last_name LIKE '__n_l%';
    
#3 find last_name at last_name include the second string is  ' _ ' 
SELECT 
    last_name
FROM
    employees
WHERE
    last_name LIKE '_\_%';  # _ can be \,  we can also do like this : last_name like '_$_%' ESCAPE '$' --- that means is we can change symbol to string
    

    

#  between and
/*
 1. include >= and <= 
 2. CANNOT switch numbers  between 100 and 120  ; between 120 and 100
 

*/

#1: Find all at employee_id between 100 to 120
SELECT 
    *
FROM
    employees
WHERE
    employee_id BETWEEN 100 AND 120;
    

#  in 
/*

 1. determine value in a string in a column
 2. format:  xxx in ('xx', 'xx', 'xx')
 3. all value type should be the same inside in : CANNOT put % inside the ' ' not as same as LIKE, otherwise, we search % for the column has the name includes ' %' . 
 
 
*/
#1. find last_name and job_id at  job id in  IT_PROG, AD_VP, AD_PRES 
SELECT 
    last_name, job_id
FROM
    employees
WHERE
    job_id IN ('IT_PROG' , 'AD_VP', 'AD_PRES');

 
 
 
 #  is null /is not null
 
 /*
1. =, < > cannot use for null value
2.  can use is null or is not null for null value
3. CANNOT use is for numbers :  salary is 12000 

 */
 
 #1 find last_name and commission at commission is none
 
 SELECT 
    last_name, commission_pct
FROM
    employees
WHERE
    commission_pct IS NULL;
    
    