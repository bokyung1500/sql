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
