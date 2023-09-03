1)	Создать таблицу employees
- id. serial,  primary key,
- employee_name Varchar(50), not null
2)	Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);


insert into employees (employee_name)
values  ('Liam'),
('William'),
('Oliver'),
('James'),
('Benjamin'),
('Lucas'),
('Henry'),
('Theodore'),
('Jack'),
('Levi'),
('Alexander'),
('Mateo'),
('Daniel'),
('Michael'),
('Sebastian'),
('Logan'),
('Samuel'),
('Jacob'),
('John'),
('Joseph'),
('David'),
('Leo'),
('Luke'),
('Julian'),
('Ezra'),
('Gabriel'),
('Carter'),
('Isaac'),
('Luca'),
('Dylan'),
('Thomas'),
('Charles'),
('Christopher'),
('Miles'),
('Jaxon'),
('Andrew'),
('Nolan'),
('Adrian'),
('Aaron'),
('Cooper'),
('Christian'),
('Colton'),
('Roman'),
('Axel'),
('Jonathan'),
('Robert'),
('Greyson'),
('Hunter'),
('Leonardo'),
('Jose'),
('Bennett'),
('Nicholas'),
('Parker'),
('Weston'),
('Austin'),
('Connor'),
('Carson'),
('Dominic'),
('Jace'),
('Emmett'),
('Adam'),
('River'),
('Kingston'),
('Sawyer'),
('Evan'),
('Vincent'),
('Myles'),
('Harrison'),
('August'),
('Amir');


select * from employees

 ---------------------------------------------------------------   
    
   Таблица salary

3)	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
4)	Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
 
  
create table salary_s (
	id serial primary key,
	monthly_salary int not null
);

  
insert into salary_s (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
		
select * from salary_s

---------------------------------------------------------------------
	Таблица employee_salary

5)	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

	
create table employees_salary_s (
	id serial primary key,
	employees_id int unique not null,
	salary_s_id int not null,
		foreign key (employees_id)
		references employees(id),
	foreign key (salary_s_id)
		references salary_s(id)
);

insert into employees_salary_s (employees_id, salary_s_id)
values  (3, 7),  
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(2, 2),
		(7, 5),
		(4, 6),
		(6, 8),
		(8, 15),
		(10, 16),
		(12, 12),
		(13, 11),
		(14, 3),
		(18, 5),
		(20, 9),
		(19, 10),
		(22, 8),
		(21, 5),
		(44, 11),
		(25, 7),
		(27, 3),
		(30, 9);
	
		(71, 10),
		(73, 6),
		(72, 13),
		(74, 8),
		(76, 5),
		(75, 9),
		(77, 12),
		(79, 4),
		(80, 7),
		(82, 3),
		(81, 11);
		

select * from employees_salary_s

-----------------------------------------------------------------------------

7)	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
8)	Поменять тип столба role_name с int на varchar(30)
roles_s
9)	Наполнить таблицу roles 20 строками:

DROP TABLE roles_s CASCADE;

create table roles_s (
	id serial primary key,
	role_name varchar(50) not null
);


create table roles_s (
	id serial primary key,
	role_name int not null
);

Alter table roles_s
alter column role_name type varchar(50);

select * from roles_s;

insert into roles_s (role_name)
values  ('Junior_Python_developer'),
		('Middle_Python_developer'),
		('Senior_Python_developer'), 
		('Junior_Java_developer'),
		('Middle_Java_developer'),
		('Senior_Java_developer'),
		('Junior_JavaScript_developer'),
		('Middle_JavaScript_developer'),
		('Senior_JavaScript_developer'),
		('Junior_Manual_QA_engineer'),
		('Middle_Manual_QA_engineer'),
		('Senior_Manual_QA_engineer'),
		('Project_Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales_manager'),
		('Junior_Automation_QA_engineer'),
		('Middle_Automation_QA_engineer'),
		('Senior_Automation_QA_engineer');
		
-----------------------------------------------------------------------------

10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11)	Наполнить таблицу roles_employee 40 строками:



create table roles_employees (
	id serial primary key,
	employees_id int unique not null,
	roles_s_id int not null,
	foreign key (employees_id)
		references employees(id),
	foreign key (roles_s_id)
		references roles_s(id)
);


insert into roles_employees (employees_id, roles_s_id)
	values  (7, 2),
			(20, 4),
			(3, 9),
			(5, 13),
			(23, 4),
			(11, 2),
			(10, 9),
			(22, 13),
			(21, 3),
			(34, 4),
			(6, 7),
			(1, 5),
			(4, 10),
			(8, 3),
			(12, 7),
			(9, 4),
			(14, 9),
			(17, 12),
			(15, 9),
			(16, 8),
			(19, 1),
			(18, 7),
			(24, 11),
			(28, 8),
			(25, 3),
			(27, 5),
			(26, 9),
			(29, 10),
			(35, 7),
			(30, 6),
			(33, 15),
			(31, 20),
			(36, 17),
			(41, 19),
			(38, 14),
			(40, 20),
			(37, 16),
			(42, 17),
			(44, 14),
			(45, 12);

select * from roles_employees;

select roles_s.role_name, salary_s.monthly_salary from roles_s 
join salary_s
on roles_s.id = salary_s.id;


select * from pg_catalog.pg_tables pt;


