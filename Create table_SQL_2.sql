create table employees_1 (
	id serial primary key,
	employee_name varchar(50) not null
); 

insert into employees_1 (id, employee_name)
values (default, 'Svetlana Gruzdkova');

--===============================================

create table salary_1 (
	id serial primary key, 
	monthly_salary int not null
);

insert into salary_1 (id, monthly_salary)
values (default, 2500);

--========================================
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (id, employee_id, salary_id)
values (default, 59,15);
--=================================================

create table roles (
	id serial primary key,
	role_name int not null unique 
);
 
alter table roles 
alter column role_name type varchar(30)
using role_name::varchar(30);

insert into roles (id, role_name)
values (default, 'Senior Automation QA engineer');
--=====================================================

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees_1 (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 56,12)

select * from roles_employee;