-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary
from employees_1 e
inner join employee_salary es on es.employee_id = e.id
inner join salary_1 s on es.salary_id = s.id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary
from employees_1 e
inner join employee_salary es on es.employee_id = e.id
inner join salary_1 s on es.salary_id = s.id
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен.
-- (ЗП есть, но не понятно кто её получает.)
SELECT e.employee_name, s.monthly_salary 
	FROM employees_1 e
	right join employee_salary es
		ON e.id = es.employee_id
	right join salary_1 s on es.salary_id = s.id
		 WHERE employee_name IS null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним
-- не назначен. (ЗП есть, но не понятно кто её получает.)
SELECT e.employee_name, s.monthly_salary 
	FROM employees_1 e
	right join employee_salary es ON e.id = es.employee_id
	right join salary_1 s on es.salary_id = s.id
		 WHERE employee_name IS null and monthly_salary < 2000;
		
--5. Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary
from employees_1 e 
left join employee_salary es on es.employee_id  = e.id
left join salary_1 s on es.salary_id = s.id 
where monthly_salary is null; 

--6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name
from employees_1 e 
full join roles_employee re on re.employee_id = e.id
left join roles r on re.role_id = r.id;

select e.employee_name, r.role_name
from employees_1 e 
join roles_employee re on re.employee_id = e.id
join roles r on re.role_id = r.id;

--7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.

select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name
from employees_1 e 
join roles_employee re on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like  '%Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
	WHERE role_name LIKE '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Middle%'

--14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Senior%'

--15. Вывести зарплаты Java разработчиков
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Java developer%'

--16. Вывести зарплаты Python разработчиков
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Python%'

--17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Junior Python%'

--18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Middle JavaScript%'

--19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Senior Java developer%'

--20. Вывести зарплаты Junior QA инженеров
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Junior%'
	and role_name like '%QA%'
	
--21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Junior%'

--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%JavaScript%'

--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%QA%'

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%QA%'

--25. Вывести количество QA инженеров
select count(employee_name)
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%QA%';

--26. Вывести количество Middle специалистов.
select count(employee_name)
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(employee_name)
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%developer%'

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id 
order by monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов
--по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов
--по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
where monthly_salary < 2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов
--по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;

