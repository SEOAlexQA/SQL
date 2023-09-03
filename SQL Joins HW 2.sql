 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
select e.employee_name, s.monthly_salary from employees e
join employees_salary_s es on es.employees_id = e.id
join salary s on s.id = es.salary_s_id
order by s.monthly_salary;

 2. Вывести всех работников у которых ЗП меньше 2000.
 
 select e.employee_name, s.monthly_salary from employees e 
join employees_salary_s es on es.employees_id = e.id
join salary s on s.id = es.salary_s_id
where s.monthly_salary < 2000
order by s.monthly_salary;

3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) 

select e.employee_name, s.monthly_salary from employees e
right join employees_salary_s es on e.id = es.employees_id 
right join salary s on es.salary_s_id = s.id
where e.employee_name is null
order by s.monthly_salary;

 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

 select e.employee_name, s.monthly_salary from employees e
right join employees_salary_s es on e.id = es.employees_id 
right join salary s on es.salary_s_id = s.id
where e.employee_name is null and
s.monthly_salary < 2000
order by s.monthly_salary;

5. Найти всех работников кому не начислена ЗП.

select employees.employee_name, salary_s.monthly_salary from employees
 left join employees_salary_s on employees.id = employees_salary_s.employees_id 
 left join salary_s on salary_s.id = employees_salary_s.salary_s_id 
 where salary_s.monthly_salary is null;

 6. Вывести всех работников с названиями их должности.
 
 select employees.employee_name, roles_s.role_name from roles_employees 
 join employees on roles_employees.employees_id = employees.id 
 join roles_s on roles_s.id = roles_employees.roles_s_id;
  
 7. Вывести имена и должность только Java разработчиков.
 
 select employees.employee_name, roles_s.role_name from roles_employees 
 join employees on roles_employees.employees_id = employees.id 
 join roles_s on roles_s.id = roles_employees.roles_s_id
 where roles_s.role_name like '%Java%';
 
 8. Вывести имена и должность только Python разработчиков.
 
  select employees.employee_name, roles_s.role_name from roles_employees 
 join employees on roles_employees.employees_id = employees.id 
 join roles_s on roles_s.id = roles_employees.roles_s_id
 where roles_s.role_name like '%Python%';
 
 9. Вывести имена и должность всех QA инженеров.
 
 select employees.employee_name, roles_s.role_name from roles_employees 
 join employees on roles_employees.employees_id = employees.id 
 join roles_s on roles_s.id = roles_employees.roles_s_id
 where roles_s.role_name like '%QA%';
  
 10. Вывести имена и должность ручных QA инженеров.
 
  select employees.employee_name, roles_s.role_name from roles_employees 
 join employees on roles_employees.employees_id = employees.id 
 join roles_s on roles_s.id = roles_employees.roles_s_id
 where roles_s.role_name like '%Manual%';
 
 11. Вывести имена и должность автоматизаторов QA
 
 select employees.employee_name, roles_s.role_name from roles_employees 
 join employees on roles_employees.employees_id = employees.id 
 join roles_s on roles_s.id = roles_employees.roles_s_id
 where roles_s.role_name like '%Automation%';
  
 12. Вывести имена и зарплаты Junior специалистов
 
select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Junior%';
   
 13. Вывести имена и зарплаты Middle специалистов
 
 select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Middle%';
 
 14. Вывести имена и зарплаты Senior специалистов
 
 select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Senior%';
 
 15. Вывести зарплаты Java разработчиков
 
  select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Java%';

 16. Вывести зарплаты Python разработчиков
 
select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Python%';
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Junior%Python%';
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Middle%JavaScript%';
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Senior%JavaScript%';
 
 20. Вывести зарплаты Junior QA инженеров
 
 select e.employee_name, r.role_name, s.monthly_salary  from 
employees_salary_s as es
join employees e on es.employees_id = e.id 
join salary_s  s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Junior%QA%';
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
 select avg(s.monthly_salary)  from employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees as re on es.employees_id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Junior%';
 
 22. Вывести сумму зарплат JS разработчиков

 select sum(s.monthly_salary)  from 
employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on es.employees_id  = re.employees_id  
join roles_s  r on re.roles_s_id = r.id 
where r.role_name like '%JavaScript%';
  
 23. Вывести минимальную ЗП QA инженеров
 
 select min(s.monthly_salary)  from employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on es.employees_id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%QA%';
 
 24. Вывести максимальную ЗП QA инженеров

select max (s.monthly_salary)  from employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on es.employees_id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%QA%';

 25. Вывести количество QA инженеров
 
select count(r.role_name)  from employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on es.employees_id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%QA%';
  
 26. Вывести количество Middle специалистов.
 
select count(r.role_name)  from employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on es.employees_id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%Middle%';
 
 27. Вывести количество разработчиков
 
 select count(r.role_name)  from employees_salary_s es
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on es.employees_id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%developer%';
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select sum(s.monthly_salary)  from employees_salary_s es
join employees e on es.employees_id = e.id 
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where r.role_name like '%developer%';
  
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select e.employee_name, r.role_name, s.monthly_salary  from employees_salary_s  es
join employees e on es.employees_id = e.id 
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
order by s.monthly_salary ;
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select e.employee_name, r.role_name, s.monthly_salary  from employees_salary_s  es
join employees e on es.employees_id = e.id 
join salary_s as s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

 select e.employee_name, r.role_name, s.monthly_salary  from employees_salary_s  es
join employees e on es.employees_id = e.id 
join salary_s s on es.salary_s_id = s.id 
join roles_employees as re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where s.monthly_salary < 2300
order by s.monthly_salary ;
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

 select e.employee_name, r.role_name, s.monthly_salary  from employees_salary_s es
join employees e on es.employees_id = e.id 
join salary_s s on es.salary_s_id = s.id 
join roles_employees re on e.id  = re.employees_id  
join roles_s r on re.roles_s_id = r.id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;
