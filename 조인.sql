--Join

--Inner join (Equi Join)
select e.first_name
from employees e, departments d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID --join 조건(n-1)
and d.department_name like 'P%'; --row 선택조건

---Inner join (Equi Join, Self Join)
select e.first_name
from employees e, employees e1
where e.manager_id = e1.employee_id;

--Outer Join
select count(*) from employees a, departments b
where a.department_id (+)= b.department_id;

select nvl(a.first_name, '소속 직원이 없음'), b.department_name
from employees a, departments b
where a.department_id (+)= b.department_id;


select count(*) from employees a, departments b
where b.department_id (+)= a.department_id;

select a.first_name, nvl(b.department_name, '부서가없음') 
from employees a, departments b
where b.department_id (+)= a.department_id;