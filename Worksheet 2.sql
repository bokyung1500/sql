
--sql 실습문제 기본
--1
select * from employees;
select first_name || ' ' || last_name as "이름", email as "이메일",
phone_number as "전화번호" from employees order by hire_date asc;

--2
select j.job_title as "업무 이름", max(e.salary) as "최고임금" 
from employees e, jobs j where e.job_id = j.job_id group by job_title order by 최고임금 desc;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
--3
select count(*) from employees where manager_id is null;

--4
select job_id as "JOB_TITLE" from employees group by job_id 
order by max(salary) desc;

--5
select distinct count(job_id) from employees;

--6
select job_id from employees group by job_id order by length(job_id) desc; 

--7
select count(*) as "매니저없는부서" from employees where manager_id is null;

--8
select upper(country_name) from countries order by country_name;

--9
select * from regions;
select region_name from regions order by length(region_name) asc;

--10
select lower(l.city) from departments d, locations l 
where d.LOCATION_ID = l.LOCATION_ID
group by l.city order by l.city asc;



--sql 실습문제 집계

--1
select max(salary) as "최고임금", min(salary) as "최저임금",
max(salary) - min(salary) as "최고임금 - 최저임금" from employees;

--2
select max(hire_date) from employees ;
select extract(year from max(hire_date)) || '년 ' 
|| extract(month from max(hire_date)) || '월 '
|| extract(day from max(hire_date)) || '일' as "입사일"
from employees;

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

--6
select department_id as "부서", avg(salary) as "평균임금", min(salary) as "최저임금",
avg(salary) - min(salary) as "(평균임금 - 최저임금)"
from employees 
where department_id in 
	(select department_id from employees 
	where (avg(salary) - min(salary)) < 2000)
group by department_id;








