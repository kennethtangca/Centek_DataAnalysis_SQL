
select e.employee_name, ed.description, ep.description, ea.clockin_time, ea.clockout_time
from employee e
join employee_department ed on e.department_id = ed.department_id
join employee_position ep on e.position_id = ep.position_id
left outer join employee_attendance ea on e.employee_id = ea.employee_id
where ea.attendance_date = '2024-1-3'
and ed.description = 'HR';