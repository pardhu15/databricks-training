-- DATE AND TIMESTAMP FUNCTIONS PRACTICE

select curdate();

select current_date();

select curtime();

select current_time();

select now();

select current_timestamp;


select
year(order_date),
month(order_date),
day(order_date)
from orders;


select
extract(year from order_date),
extract(month from order_date),
extract(day from order_date)
from orders;


select
monthname(order_date),
dayname(order_date)
from orders;


select
weekday(order_date),
dayofweek(order_date)
from orders;


select order_id , order_date
from orders
where dayname(order_date) in ('Saturday','Sunday');


select order_id , order_date
from orders
where dayofweek(order_date) in (1,7);


select order_id , order_date
from orders
where dayofweek(order_date) between 2 and 6;


select order_date ,
date_add(order_date,interval 5 day)
from orders;


select order_date ,
date_sub(order_date,interval 3 day)
from orders;


select date_add(order_date,interval 1 month)
from orders;


select date_sub(order_date,interval 2 month)
from orders;


select date_add(order_date,interval 1 year)
from orders;


select order_id ,
datediff(delivery_date,order_date) as delivery_days
from orders;


select
timestampdiff(day,order_date,delivery_date) as days_diff,
timestampdiff(month,order_date,delivery_date) as months_diff
from orders;


select last_day(order_date)
from orders;


select date_sub(order_date,interval day(order_date)-1 day)
from orders;


select date_format(order_date,'%d-%m-%Y')
from orders;


select date_format(order_date,'%M %d, %Y')
from orders;


select str_to_date('15-01-2024','%d-%m-%Y');


select date_format(order_timestamp,'%d-%m-%Y %H:%i:%s')
from orders;


select *
from orders
where month(order_date)=1;


select *
from orders
where monthname(order_date)='February';


select order_date,
case
when month(order_date) >=4
then concat(year(order_date),'-',year(order_date)+1)
else concat(year(order_date)-1,'-',year(order_date))
end as financial_year
from orders;


select *
from orders
where order_date >= curdate() - interval 7 day;


select *
from orders
where date(order_timestamp)=curdate();