--sql 실습문제 기본
--1
select * from employees;
select first_name || ' ' || last_name as "이름", email as "이메일",
phone_number as "전화번호" from employees order by hire_date asc;

--2
select job_title as "업무 이름", max_salary as "최고임금" 
from jobs order by max_salary desc;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
--3
select count(*) from employees where manager_id is null;

--4
select job_title from jobs order by max_salary desc;

--5
select distinct count(department_id) from departments;

--6
select department_name from departments order by length(department_name) desc; 

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

select lower(city) from locations order by city asc;
