--sql 조인 문제
--1
select e1.employee_id, e1.first_name, d.department_name, e2.first_name as "MANAGER"
from employees e1, employees e2, departments d
where e1.MANAGER_ID = e2.EMPLOYEE_ID and e1.DEPARTMENT_ID = d.DEPARTMENT_ID;

--2
select r.region_name, c.country_name
from regions r
left join countries c
on r.region_id = c.region_id;

--3
select d.department_id, d.department_name,
		e.first_name as "매니저이름",
		l.city,
		c.country_name,
		r.region_name
from departments d, employees e, locations l, countries c, regions r
where d.DEPARTMENT_ID = e.DEPARTMENT_ID and
		d.manager_id = e.employee_id and
		d.LOCATION_ID = l.LOCATION_ID and
		l.country_id = c.COUNTRY_ID and
		c.REGION_ID = r.REGION_ID;

--4
select e.employee_id, e.first_name
from employees e, job_history h
where e.EMPLOYEE_ID = h.employee_id
and h.job_id = 'AC_ACCOUNT' 
and e.job_id !='Public Accountant';

--5
select e.employee_id, e.first_name, e.last_name, nvl(d.DEPARTMENT_NAME,'부서없음')
from employees e
left join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--6
select e1.employee_id, e1.last_name, e1.hire_date
from employees e1, employees e2
where e1.MANAGER_ID = e2.EMPLOYEE_ID
and e1.HIRE_DATE < e2.HIRE_DATE;






