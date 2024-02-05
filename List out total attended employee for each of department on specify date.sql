
select ed.description, count(ea.employee_id) attend_employee_count, count(el.employee_id) onLeave_employee_count,
count (ex.employee_id) noShow_employee_count
from employee e
join employee_department ed on e.department_id = ed.department_id
join employee_position ep on e.position_id = ep.position_id
left outer join employee_attendance ea on e.employee_id = ea.employee_id and ea.attendance_date = '2024-1-2'
left outer join employee_leave el on e.employee_id = el.employee_id and el.leave_date = '2024-1-2'
left outer join 
(
select employee_id
	from employee e
	where not exists ( select 1 from employee_attendance ea where e.employee_id = ea.employee_id
	and ea.attendance_date = '2024-1-2' ) 
)ex on e.employee_id = ex.employee_id
group by ed.description


