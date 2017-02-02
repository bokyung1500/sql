--select 기본 연습
select employee_id, first_name, last_name from employees;

select first_name as "이름", last_name as "성" from employees;

--문자열 합치는 concat 연산자 ||
select first_name || ' ' || last_name as "이름",
	salary*12 as "연봉"
	from employees;

