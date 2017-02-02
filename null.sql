-- null 관련함수
select nvl(null, 0) from dual;
select employee_id, nvl(commission_pct,0) from employees;

select nvl2(null, 10, 0) from dual;
select nvl2(1, 10, 0) from dual;

select employee_id, salary + salary*nvl(commission_pct,0) from employees;

select employee_id, nvl2(commission_pct,salary*commission_pct, salary) from employees;

select nullif(10, 5+5) from dual;
select nullif(10, 2+5) from dual;

select coalesce (1, 2, 3, 4, 5, 6) from dual;
select coalesce (null, 2, 3, 4, 5, 6) from dual;

-- 주의 (에러, 대체값은 타입이 같아야한다)
select employee_id, nvl(manager_id, 'No Manager')
	from employees;
	
select employee_id, nvl(to_char(manager_id), 'No Manager')
	from employees;