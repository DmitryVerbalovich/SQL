-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select e.employee_name, s.monthly_salary
from employees_1 e
inner join employee_salary es on es.employee_id = e.id
inner join salary_1 s on es.salary_id = s.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select e.employee_name, s.monthly_salary
from employees_1 e
inner join employee_salary es on es.employee_id = e.id
inner join salary_1 s on es.salary_id = s.id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������.
-- (�� ����, �� �� ������� ��� � ��������.)
SELECT e.employee_name, s.monthly_salary 
	FROM employees_1 e
	right join employee_salary es
		ON e.id = es.employee_id
	right join salary_1 s on es.salary_id = s.id
		 WHERE employee_name IS null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ���
-- �� ��������. (�� ����, �� �� ������� ��� � ��������.)
SELECT e.employee_name, s.monthly_salary 
	FROM employees_1 e
	right join employee_salary es ON e.id = es.employee_id
	right join salary_1 s on es.salary_id = s.id
		 WHERE employee_name IS null and monthly_salary < 2000;
		
--5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name, s.monthly_salary
from employees_1 e 
left join employee_salary es on es.employee_id  = e.id
left join salary_1 s on es.salary_id = s.id 
where monthly_salary is null; 

--6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name
from employees_1 e 
full join roles_employee re on re.employee_id = e.id
left join roles r on re.role_id = r.id;

select e.employee_name, r.role_name
from employees_1 e 
join roles_employee re on re.employee_id = e.id
join roles r on re.role_id = r.id;

--7. ������� ����� � ��������� ������ Java �������������.
select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.

select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Python%';

--9. ������� ����� � ��������� ���� QA ���������.
select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.
select e.employee_name, r.role_name 
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Manual QA%';

--11. ������� ����� � ��������� ��������������� QA
select e.employee_name, r.role_name
from employees_1 e 
join roles_employee re on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like  '%Automation QA%';

--12. ������� ����� � �������� Junior ������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
	WHERE role_name LIKE '%Junior%';

--13. ������� ����� � �������� Middle ������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Middle%'

--14. ������� ����� � �������� Senior ������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Senior%'

--15. ������� �������� Java �������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Java developer%'

--16. ������� �������� Python �������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Python%'

--17. ������� ����� � �������� Junior Python �������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Junior Python%'

--18. ������� ����� � �������� Middle JS �������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Middle JavaScript%'

--19. ������� ����� � �������� Senior Java �������������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Senior Java developer%'

--20. ������� �������� Junior QA ���������
select e.employee_name, r.role_name, s.monthly_salary
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Junior%'
	and role_name like '%QA%'
	
--21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%Junior%'

--22. ������� ����� ������� JS �������������
select sum(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%JavaScript%'

--23. ������� ����������� �� QA ���������
select min(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%QA%'

--24. ������� ������������ �� QA ���������
select max(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%QA%'

--25. ������� ���������� QA ���������
select count(employee_name)
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%QA%';

--26. ������� ���������� Middle ������������.
select count(employee_name)
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%Middle%';

--27. ������� ���������� �������������
select count(employee_name)
from employees_1 e
inner join roles_employee re on re.employee_id = e.id
inner join roles r on re.role_id = r.id
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary)
from employees_1 e 
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id 
join roles r on es.salary_id = r.id 
where role_name like '%developer%'

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id 
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������
--�� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

--31. ������� �����, ��������� � �� ���� ������������
--�� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
where monthly_salary < 2300
order by monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������
--�� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name,  r.role_name, s.monthly_salary
from employees_1 e
join employee_salary es on es.employee_id = e.id
join salary_1 s on es.salary_id = s.id
join roles r on es.salary_id = r.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;

