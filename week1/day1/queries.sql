select * from Employee;

select name,salary from Employee;

select * from Employee where age>30;

select name from Department;

select e.name from Employee e join Department d
on e.department_id=d.department_id
where d.name='IT';

select * from Employee where name like 'J%';

select * from Employee where name like '%e';

select * from Employee where name like '%a%';

select * from Employee where length(name)=9;

select * from Employee where name like '_o%';

select * from Employee where year(hire_date)=2020;

select * from Employee where month(hire_date)=1;

select * from Employee where hire_date<'2019-01-01';

select * from Employee where hire_date>='2021-03-01';

select * from Employee
where hire_date>=date_sub(curdate(),interval 2 year);

select sum(salary) as total_salary from Employee;

select avg(salary) as average_salary from Employee;

select min(salary) as minimum_salary from Employee;

select department_id,count(*) as employee_count
from Employee group by department_id;

select department_id,avg(salary) as average_salary
from Employee group by department_id;

select department_id,sum(salary) as total_salary
from Employee group by department_id;

select department_id,avg(age) as average_age
from Employee group by department_id;

select year(hire_date) as hire_year,count(*) as employee_count
from Employee group by year(hire_date);

select department_id,max(salary) as highest_salary
from Employee group by department_id;

select department_id,avg(salary) as avg_salary
from Employee
group by department_id
order by avg_salary desc limit 1;

select department_id,count(*) as employee_count
from Employee
group by department_id
having count(*)>2;

select department_id,avg(salary) as avg_salary
from Employee
group by department_id
having avg(salary)>55000;

select year(hire_date) as hire_year,count(*) as employee_count
from Employee
group by year(hire_date)
having count(*)>1;

select department_id,sum(salary) as total_salary
from Employee
group by department_id
having sum(salary)<100000;

select department_id,max(salary) as max_salary
from Employee
group by department_id
having max(salary)>75000;

select * from Employee order by salary;

select * from Employee order by age desc;

select * from Employee order by hire_date;

select * from Employee order by department_id,salary;

select department_id,sum(salary) as total_salary
from Employee
group by department_id
order by total_salary desc;

select e.name,d.name
from Employee e join Department d
on e.department_id=d.department_id;

select p.name,d.name
from Project p join Department d
on p.department_id=d.department_id;

select e.name,p.name
from Employee e join Project p
on e.department_id=p.department_id;

select e.*,d.name
from Employee e left join Department d
on e.department_id=d.department_id;

select d.name,e.name
from Department d left join Employee e
on d.department_id=e.department_id;

select e.name
from Employee e left join Project p
on e.department_id=p.department_id
where p.project_id is null;

select e.name,count(p.project_id) as project_count
from Employee e join Project p
on e.department_id=p.department_id
group by e.name;

select d.name
from Department d left join Employee e
on d.department_id=e.department_id
where e.emp_id is null;

select name from Employee
where department_id=(
select department_id from Employee
where name='John Doe');

select d.name
from Department d join Employee e
on d.department_id=e.department_id
group by d.name
order by avg(e.salary) desc limit 1;

select * from Employee
where salary=(select max(salary) from Employee);

select * from Employee
where salary>(select avg(salary) from Employee);

select max(salary) as second_highest_salary
from Employee
where salary<(select max(salary) from Employee);

select department_id,count(*) as employee_count
from Employee
group by department_id
order by employee_count desc limit 1;

select * from Employee e
where salary>(
select avg(salary)
from Employee
where department_id=e.department_id);

select distinct salary
from Employee e1
where 3=(
select count(distinct salary)
from Employee e2
where e2.salary>=e1.salary);

select * from Employee
where age>all(
select age
from Employee e join Department d
on e.department_id=d.department_id
where d.name='HR');

select d.name
from Department d join Employee e
on d.department_id=e.department_id
group by d.name
having avg(e.salary)>55000;

select * from Employee
where department_id in(
select department_id
from Project
group by department_id
having count(project_id)>=2);

select * from Employee
where hire_date=(
select hire_date from Employee
where name='Jane Smith');

select sum(salary) as total_salary
from Employee
where year(hire_date)=2020;

select department_id,avg(salary) as average_salary
from Employee
group by department_id
order by average_salary desc;

select department_id,count(*) as employee_count,
avg(salary) as average_salary
from Employee
group by department_id
having count(*)>1 and avg(salary)>55000;

select * from Employee
where hire_date>=date_sub(curdate(),interval 2 year)
order by hire_date;

select department_id,count(*) as total_employees,
avg(salary) as average_salary
from Employee
group by department_id
having count(*)>2;

select name,salary
from Employee e
where salary>(
select avg(salary)
from Employee
where department_id=e.department_id);

select name from Employee
where hire_date=(
select min(hire_date) from Employee);

select d.name,count(p.project_id) as total_projects
from Department d left join Project p
on d.department_id=p.department_id
group by d.name
order by total_projects desc;

select e.name,e.salary,e.department_id
from Employee e
where salary=(
select max(salary)
from Employee
where department_id=e.department_id);

select name,salary
from Employee e
where age>(
select avg(age)
from Employee
where department_id=e.department_id);
