-- NUMBER FUNCTIONS PRACTICE

select abs(-100);

select round(base_salary,0)
from employee_salary;

select round(base_salary,2)
from employee_salary;

select ceil(base_salary)
from employee_salary;

select floor(base_salary)
from employee_salary;

select truncate(base_salary,1)
from employee_salary;

select mod(experience_years,2)
from employee_salary;

select power(2,3);

select pow(5,2);

select sqrt(64);

select sign(base_salary)
from employee_salary;

select rand();

select format(base_salary,2)
from employee_salary;

select emp_name,
greatest(base_salary,ifnull(bonus,0))
from employee_salary;

select emp_name,
least(base_salary,ifnull(bonus,0))
from employee_salary;