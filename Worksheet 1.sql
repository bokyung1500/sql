--select 기본 연습
select employee_id, first_name, last_name from employees;

select first_name as "이름", last_name as "성" from employees;

--문자열 합치는 concat 연산자 ||
select first_name || ' ' || last_name as "이름",
	salary*12 as "연봉"
	from employees;
	
	
--where 절 연습

select first_name, salary from employees where salary<20000;

select first_name, salary from employees where salary between 10000 and 20000;

select first_name, manager_id from employees where manager_id is not null;

--null을 포함한 산술식은 null
select first_name, commission_pct, (salary +salary* commission_pct)as "이번달 월급"
from employees
where commission_pct is not null;

select first_name, (salary +salary* nvl(commission_pct,0))as "이번달 월급"
from employees;

--literal

select 'Hello World' from dual;
select 10 from dual;
select sysdate from dual;

select 'name is ' ||
		first_name ||
		' ' ||
		last_name
	from employees;


-- Like
select first_name from employees;


select first_name from employees
	where first_name like '%ma%';


select first_name from employees
	where first_name like '_a_';


select first_name, hire_date from employees
	order by hire_date;
	
select lower('Database Management System') from dual;

select first_name, upper(last_name) from employees;

select initcap('database management system') from dual;

select concat(concat(first_name, ' '), last_name) from employees;

select substr('Database Management System', 2,4) from dual;

select length('Database Management System') from dual;

select instr('Database Management System', 'Sys') from dual;

select employee_id, lpad(salary, 10, ' ') from employees;

select employee_id, rpad(salary, 10, ' ') from employees;

select trim('#' from '##Data###base##') from dual;

select ltrim('##Data###base##','#') from dual;
select rtrim('##Data###base##','#') from dual;

select replace('Database Management System','a','A') from dual;

select abs(-1000) from dual;
select ceil(3.111) from dual;
select floor(3.9999) from dual;
select mod(9999, 6) from dual;
select power(2,10) from dual;
select round(3.3364,2) from dual;

--기본 date type 출력 포멧 알아보기

SELECT value FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT';

select hire_date from employees;

-- date 함수
select add_months(sysdate, 1) from dual;
select add_months('16/02/02', 1) from dual;

select last_day( sysdate) from dual;
select last_day('17/12/01') from dual;

select months_between( sysdate, '17/12/02') from dual;
select next_day(sysdate, 1) from dual;

select employee_id, hire_date from employees;

select employee_id, to_char(hire_date, 'yyyy-mm-dd hh:mi:ss')
	from employees;

select employee_id, to_char(hire_date, 'yyyy"년" mm"월" dd"일" PM hh24:mi:ss')
	from employees;

select employee_id, to_char(hire_date, 'yyyy"년" mm"월" dd"일" d"요일" ddd"일 째 되는날"')
	from employees;

select employee_id, to_char(hire_date , 'rr') from employees;























