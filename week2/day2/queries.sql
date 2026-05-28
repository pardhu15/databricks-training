-- NULL FUNCTIONS PRACTICE

select * from Employees
where salary is null;

select * from Orders
where discount is not null;

select * from Products
where category is null;

select count(*) as null_manager_count
from Employees
where manager_id is null;


select emp_id,name,isnull(salary,0) as salary
from Employees;

select emp_id,name,isnull(bonus,1000) as bonus
from Employees;

select order_id,customer_name,isnull(amount,500) as amount
from Orders;

select product_id,product_name,isnull(stock,0) as stock
from Products;


select name,
coalesce(salary,bonus) as earnings
from Employees;

select name,
coalesce(salary,bonus,0) as income
from Employees;

select product_name,
coalesce(price,1000) as price
from Products;

select customer_name,
coalesce(amount,discount,0) as payment
from Orders;


select name,
nullif(salary,0) as salary
from Employees;

select order_id,
nullif(discount,0) as discount
from Orders;

select amount / nullif(discount,0) as result
from Orders;

select order_id,
nullif(coupon_code,'DISC10') as coupon_code
from Orders;


select name,
isnull(salary,0) + isnull(bonus,0) as total_earnings
from Employees;

select * from Employees
where salary is null
and bonus is null;

select * from Products
where price is null
and category is not null;

select * from Orders
where amount is null
and discount is null;


select name,
coalesce(salary,bonus,1000) as income
from Employees;

select order_id,
nullif(discount,0) as discount
from Orders;

select order_id,
isnull(amount,0) - isnull(discount,0) as final_amount
from Orders;

select * from Employees
where salary is null
and manager_id is not null;