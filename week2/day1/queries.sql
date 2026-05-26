-- Q1
select emp_name,
upper(emp_name),
lower(emp_name),
round(base_salary + ifnull(bonus,0)) as total_income,
year(joining_date) as joining_year,
case
when year(current_date()) - year(joining_date) > 7 then 'Senior'
when year(current_date()) - year(joining_date) between 4 and 7 then 'Mid'
else 'Junior'
end as emp_type
from employee_payments;

-- Q2
select
upper(customer_name) as customer,
datediff(ifnull(delivery_date,current_date()),order_date) as delivery_days,
truncate(order_amount,1) as amount,
case
when delivery_date is null then 'Pending'
when datediff(delivery_date,order_date)=0 then 'Same-day'
when datediff(delivery_date,order_date)>3 then 'Delayed'
else 'Normal'
end as status
from orders_delivery;

-- Q3
select
initcap(cust_name) as customer_name,
monthname(purchase_date) as purchase_month,
round(purchase_amount) as rounded_amount,
abs(purchase_amount) as abs_amount,
case
when purchase_amount > 15000 then 'High'
when purchase_amount between 8000 and 15000 then 'Medium'
else 'Low'
end as spender_type
from customer_spending;

-- Q4

select
substring_index(user_email,'@',-1) as domain,
timestampdiff(month,start_date,end_date) as months_count,
format(subscription_fee,2) as fee,
datediff(end_date,current_date()) as remaining_days,
case
when end_date < current_date() then 'Expired'
when datediff(end_date,current_date()) <=30 then 'Expiring Soon'
else 'Active'
end as status
from subscriptions;

-- Q5

select
upper(customer_name) as customer,
power((1+interest_rate/100),1/12) as monthly_interest,
year(current_date()) - year(loan_start) as years_count,
round(loan_amount/12) as emi,
case
when interest_rate > 9 then 'High Risk'
when interest_rate between 8 and 9 then 'Medium Risk'
else 'Low Risk'
end as risk_type
from loan_details;