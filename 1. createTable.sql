-- Main table to store department
create table employee_department (
	department_id serial primary key,
	description varchar(100)
);

-- Main table to store the position of employee
create table employee_position (
	position_id serial primary key,
	description varchar(100)
);

-- main table to store all the leave type
create table leaveType (
	leaveType_id serial primary key,
	description varchar(100)
);

--table to store all employee information
create table employee (
 	employee_id SERIAL PRIMARY KEY,
 	employee_name varchar(50),
 	department_id integer references employee_department(department_id),
 	position_id integer references employee_position(position_id),
	date_join timestamp,
	date_terminate timestamp,
	salary decimal(10,2)
);

--table to store employee leave record
create table employee_leave (
	leave_id serial primary key,
	employee_id integer references employee(employee_id),
	leave_date timestamp,
	apply_date timestamp,
	leaveType_id integer references leaveType(leaveType_id),
	leave_reason varchar(500)
);

--table to store employe daily attendance record
create table employee_attendance (
	attendance_id serial primary key,
	attendance_date timestamp,
	employee_id integer references employee(employee_id),
	clockIn_time timestamp,
	clockOut_time timestamp
);
