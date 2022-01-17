# function date

#1. now : return system date and time
select now();


#2. curdate : current date: return system date only
select curdate();


#3. curtime: current time: return system time only
select curtime();


select year(now()); #output: 2022
select year('1999-1-1'); #output: 1999

select year(hiredate) from employees;
select month(now());
select monthname(now());





# str_to_date:  bring date string to date format: (Note: %Y is 4 digits 1999, %y is 2 digits 99)
SELECT STR_TO_DATE('09-10-2000', '%d-%m-%Y') AS output;

#1 find the hire date 1992-4-3 
select * from employees where hiredate = str_to_date('4-3 1992', '%c-%d %Y');





# date_format: bring date to date format string
select date_format(now(), '%y/%m/%d/') as output;

#1. find all information with people has commission and hire date (m/d/y)

select hiredate
from employees;

select last_name, date_format(hiredate, '%m/%d/%Y')
from employees
where commission_pct is not null;

