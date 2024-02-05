select e.employee_name, ed.description, ep.description
from employee e
join employee_department ed on e.department_id = ed.department_id
join employee_position ep on e.position_id = ep.position_id
where not exists ( 
	select 1 
  	from employee_leave el 
  	where e.employee_id = el.employee_id
	and leave_date = '2024-1-2'
				 )
and not exists (
	select 1
	from employee_attendance ea
	where e.employee_id = ea.employee_id
	and attendance_date = '2024-1-2'
);