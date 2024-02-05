-- list out all active employee in company 
select e.employee_name, ed.description, ep.description, e.date_join
from employee e
join employee_department ed on e.department_id = ed.department_id
join employee_position ep on e.position_id = ep.position_id
where date_terminate is null;