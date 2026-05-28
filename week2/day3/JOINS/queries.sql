-- JOIN  QUERIES

-- 1
select e.emp_name , m.emp_name as manager_name
from employees e
left join employees m
on e.manager_id = m.emp_id;

-- 2
select e.emp_name , d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;

-- 3
select e.emp_name , m.emp_name as manager_name
from employees e
join employees m
on e.manager_id = m.emp_id;

-- 4
select d.dept_name , count(e.emp_id) as total_employees
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_name;

-- 5
select *
from employees
where dept_id is null;

-- 6
select e.emp_name , p.project_name
from employees e
left join projects p
on e.emp_id = p.emp_id;

-- 7
select e.emp_name , p.project_name
from employees e
join projects p
on e.emp_id = p.emp_id;

-- 8
select e.emp_name , p.project_name
from employees e
right join projects p
on e.emp_id = p.emp_id;

-- 9
select emp_name , null as salary
from employees;

-- 10
select e.emp_name , d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;

-- 11
select d.dept_name , e.emp_name
from departments d
left join employees e
on d.dept_id = e.dept_id;

-- 12
select emp_name , null as contact_info
from employees;

-- 13
select e.emp_name , d.dept_name
from employees e
full outer join departments d
on e.dept_id = d.dept_id;

-- 14
select e.emp_name , p.project_name
from employees e
left join projects p
on e.emp_id = p.emp_id
where p.project_name is null;

-- 15
select e.emp_name , p.project_name
from employees e
left join projects p
on e.emp_id = p.emp_id;

-- 16
select p.project_name , e.emp_name
from projects p
left join employees e
on p.emp_id = e.emp_id;

-- 17
select e.emp_name ,
m.emp_name as manager_name ,
p.project_name
from employees e
join employees m
on e.manager_id = m.emp_id
join projects p
on e.emp_id = p.emp_id;

-- 18
select e.emp_name , d.dept_name
from employees e
join departments d
on e.dept_id = d.dept_id;

-- 19
select e.emp_name , d.dept_name
from employees e
join departments d
on e.dept_id = d.dept_id;

-- 20
select d.dept_name , e.emp_name
from departments d
left join employees e
on d.dept_id = e.dept_id;

-- 21
select e.emp_name , p.project_name
from employees e
join projects p
on e.emp_id = p.emp_id
where e.dept_id is null;

-- 22
select d.dept_name ,
count(e.emp_id) as employee_count
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_name;

-- 23
select e.emp_name ,
m.emp_name as manager_name
from employees e
join employees m
on e.manager_id = m.emp_id;

-- 24
select e.emp_name ,
m.emp_name as manager_name
from employees e
left join employees m
on e.manager_id = m.emp_id;

-- 25
select d.dept_name ,
count(e.emp_id) as total_employees
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_name;

-- 26
select e.emp_name , d.dept_name
from employees e
right join departments d
on e.dept_id = d.dept_id;

-- 27
select emp_name
from employees;

-- 28
select e.emp_name , p.project_name
from employees e
left join projects p
on e.emp_id = p.emp_id;

-- 29
select e.emp_name ,
d.dept_name ,
p.project_name
from employees e
left join departments d
on e.dept_id = d.dept_id
left join projects p
on e.emp_id = p.emp_id;

-- 30
select e.emp_name , d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;