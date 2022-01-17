#  Function

/*
 select function_name(xyz)  
 [from xxx]
 
 1. single function: concat, length, innull
 2. group function  for integration
 
*/

#1 string function

# length  : get the length numbers of string
select length('john');
show variables like '%char%';

#2 concat :  combine string
select concat(last_name, '_', first_name) as 'name' from employees;

#3 upper, lower
select upper('john');
select lower('joHn');

# example: last name capital, first name lower case and then concat
select concat(upper(last_name), '_', lower(first_name)) as 'Name' from employees;


#4 substr : get string starts from 1
select substr('Kyle is software engineer', 6) as output;  # output: is software engineer
select substr('Kyle is software engineer', 1,4) as output;  # output: Kyle


#example :  last_name first letter capital, others in last_name lower case, use '_' to combine
select concat(upper(substr(last_name,1,1)), '_', lower(substr(last_name, 2)))
from employees;

#5 instr : find the string at the first time, if it can't find it, return 0
select instr('Bonnie loves Kyle', 'Kyle') as output;
 
#6 trim  : remove front and end string
select trim('          Kyle          ') as output;
select length(trim('         Kyle          '));
select trim('a' from 'aaaaaaaaaaaKaaaaayleaaaaaaaaaa') as output;
select trim('aa' from 'aaaaaaaaaaaKaaaaayleaaaaaaaaaa') as output;

#7 lpad: left padding, is to use something to fullfill the length of the string
select lpad('Kyle', 10, '*') as output; # ******Kyle

#8 rpad: right padding 
select rpad('Kyle', 12, 'ab') as output; 


#9 replace 
select replace('Kyle loves Bonnie', 'Bonnie', 'Tracy') as output; # output: Kyle loves Tracy



