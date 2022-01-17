# math function

#1 round 
select round(3.65);    # output: 4
select round(3.65,1); # output: 3.7
select round(3.65,2); # output: 3.65
select round(-3.65);   # output: -4



#2 ceil :  return >= the minimum integer
select ceil(3.65);    #output: 4
select ceil(1.00);    #output: 1
select ceil(-1.02);   #output: -1
select ceil(1.55);    #output: 2
select ceil(1.34);   #output: 2
select ceil(1); #output: 1


#3 floor: return <= the minimum integer
select floor(3.65);  #output: 4
select floor(-9.99); #output: -10
select floor(-1.05); #output:-2
select floor(1);   #output: 1
select floor(1.1); #output: 1
select floor(1.5); #output: 1
select floor(1.54); #output: 1
select floor(1.39); #output: 1
select floor(-1.99); #output: -2


#4 truncate : cut, cut how many numbers after decimal place
select truncate(1.65, 1); #output: 1.6



#5 mod : %
select mod(10,3); #output: 1
select mod(-10,-3); #output: -1
select mod(-10, 3); #output: -1


