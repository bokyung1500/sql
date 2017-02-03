--sql 실습문제 집계

--1
select max_salary as "최고임금", min_salary as "최저임금",
max_salary - min_salary as "최고임금 - 최저임금" from jobs;

--집계함수 사용
select max(salary) as "최고임금", min(salary) as "최저임금",
max(salary) - min(salary) as "최고임금 - 최저임금" from employees;

--2
select max(hire_date) from employees ;
select extract(year from max(hire_date)) || '년 ' 
|| extract(month from max(hire_date)) || '월 '
|| extract(day from max(hire_date)) || '일' as "입사일"
from employees;

select to_char(max(hire_date), 'yyyy"년" mm"월" dd"일"') as "입사일" from employees;

--3
select department_id as "부서",
avg(salary) as "평균임금", max(salary) as "최고임금", min(salary) as "최저임금"
from employees
group by department_id
order by 평균임금 desc, 최고임금 desc, 최저임금 desc;

--4
select job_id as "업무",
avg(salary) as "평균임금", max(salary) as "최고임금", min(salary) as "최저임금"
from employees
group by job_id
order by 평균임금 desc, 최고임금 desc, 최저임금 desc;

--5
select min(hire_date) from employees ;
select extract(year from min(hire_date)) || '년 ' 
|| extract(month from min(hire_date)) || '월 '
|| extract(day from min(hire_date)) || '일' as "입사일"
from employees;

select to_char(min(hire_date), 'yyyy"년" mm"월" dd"일"') as "입사일" from employees;


--6
select department_id as "부서", 
	round(avg(salary)) as "평균임금", 
	round(min(salary)) as "최저임금",
	round(avg(salary) - min(salary)) as "(평균임금 - 최저임금)"
from employees
group by department_id
having (avg(salary) - min(salary)) < 2000 and (avg(salary) - min(salary)) > 0;

--7**??
select * from jobs;
select job_title, (max_salary - min_salary) as "차이" from jobs;

select j.job_title, (max(e.salary) - min(e.salary)) as "차이"
from employees e, jobs j
where e.job_id = j.job_id
group by job_title
order by 차이 desc;



select job_id, (max(salary) - min(salary)) as "차이" 
from employees
having (max(salary) - min(salary)) >= 
all(select (max(e.salary) - min(e.salary)) from employees e group by e.job_id)
group by job_id;



--어떤부서가 max, min, 그 차이가 얼마냐 employees 사용