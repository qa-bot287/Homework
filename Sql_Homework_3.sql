/*1.������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.*/
select employee_name,monthly_salary from employess 
join employee_salary on employess.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 

/*2.������� ���� ���������� � ������� �� ������ 2000.*/
select employee_name,monthly_salary from employess 
join employee_salary on employess.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2000

/*3.������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select monthly_salary,employee_salary.employee_id,employee_name  from salary
join employee_salary on employee_salary.salary_id = salary.id 
left join employess on employess.id = employee_salary.employee_id 
where employee_name IS null

/*4.������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select monthly_salary,employee_salary.employee_id,employee_name  from salary
join employee_salary on employee_salary.salary_id = salary.id 
left join employess on employess.id = employee_salary.employee_id 
where employee_name IS null and monthly_salary < 2000

/*5.����� ���� ���������� ���� �� ��������� ��.*/
select employee_name,monthly_salary from employess
left join employee_salary on employee_salary.employee_id = employess.id 
left join salary on salary.id = employee_salary.salary_id 
where monthly_salary is null 

/*6.������� ���� ���������� � ���������� �� ���������.*/
select employee_name,role_name from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id

/*7.������� ����� � ��������� ������ Java �������������.*/
select employee_name,role_name from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
where role_name like '%Java developer'

/*8.������� ����� � ��������� ������ Python �������������.*/
select employee_name,role_name from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python developer'

/*9.������� ����� � ��������� ���� QA ���������.*/
select employee_name,role_name from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer'

/*10.������� ����� � ��������� ������ QA ���������.*/
select employee_name,role_name from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA engineer'

/*11.������� ����� � ��������� ��������������� QA.*/
select employee_name,role_name from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA engineer'

/*12.������� ����� � �������� Junior ������������.*/
select employee_name,monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior%'

/*13. ������� ����� � �������� Middle ������������.*/
select employee_name,monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Middle%'

/*14.������� ����� � �������� Senior ������������.*/
select employee_name,monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Senior%'

/*15.������� �������� Java �������������.*/
select monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java developer'

/*16.������� �������� Python �������������*/
select monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Python developer'

/*17.������� ����� � �������� Junior Python �������������*/
select employee_name,monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior Python developer'

/*18.������� ����� � �������� Middle JS �������������.*/
select employee_name,monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Middle JavaScript developer'

/*19.������� ����� � �������� Senior Java �������������.*/
select employee_name,monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Senior Java developer'

/*20.������� �������� Junior QA ���������.*/
select monthly_salary from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior%QA engineer'

/*21.������� ������� �������� ���� Junior ������������.*/
select avg(monthly_salary) from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where role_name like 'Junior%'

/*22.������� ����� ������� JS �������������*/
select sum(monthly_salary) from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript developer%'

/*23.������� ����������� �� QA ���������*/
select min(monthly_salary) from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer'

/*24.������� ������������ �� QA ���������.*/
select max(monthly_salary) from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer'

/*25.������� ���������� QA ���������.*/
select count(role_name)  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA engineer'

/*26.������� ���������� Middle ������������.*/
select count(role_name)  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where role_name like 'Middle%'

/*27.������� ���������� �������������*/
select count(employee_name)  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id

/*28.������� ���� (�����) �������� �������������.*/
select sum(monthly_salary)  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id

/*29.������� �����, ��������� � �� ���� ������������ �� �����������.*/
select employee_name,role_name, monthly_salary  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
order by employee_name,role_name,monthly_salary  asc

/*30.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300.*/
select employee_name,role_name, monthly_salary  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300
order by employee_name,role_name,monthly_salary  asc

/* 31.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300.*/
select employee_name,role_name, monthly_salary  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300
order by employee_name,role_name,monthly_salary asc

/*32.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000.*/
select employee_name,role_name, monthly_salary  from employess
join roles_employee on roles_employee.employee_id = employess.id
join roles on roles.id = roles_employee.role_id
join employee_salary on employee_salary.employee_id = employess.id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary in (1100,1500,2000)
order by employee_name,role_name,monthly_salary asc


