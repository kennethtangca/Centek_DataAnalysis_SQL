select e.employee_name, ed.description, ep.description, el.leave_date, el.leave_reason
from employee e
join employee_department ed on e.department_id = ed.department_id
join employee_position ep on e.position_id = ep.position_id
join employee_leave el on e.employee_id = el.employee_id
where el.leave_date between '2024-1-1' and '2024-1-5';