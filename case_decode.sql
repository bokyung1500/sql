-- case ~ end 문

select job_id from employees;

select employee_id, salary, job_id,
		case job_id
			when 'AC_ACCOUNT' then salary + salary*0.1
			when 'AC_MGR' then salary + salary*0.2
			when 'AC_ASST' then salary + salary*0.3
			else salary
		end as "이번달 웝급"
	from employees;
	
	
--decode 함수 사용
select employee_id,
		salary,
		decode(job_id,
				'AC_ACCOUNT', salary + salary*0.1,
				'AC_MGR', salary + salary*0.2,
				'AC_ASST', salary + salary*0.3,
				salary) as "이번달 월급"
		from employees;

