select * from employees;

select salary,salary+100,salary-100 from employees;

select sysdate, sysdate+365 from dual; --dual 임시더미테이블

select 1+3 from dual; -- 바로 사칙연산 가능

select 1+'3' from dual; --문자'3'을 사칙연산을 하면 숫자로 자동변환

select 1+'a' from dual; --문자'a'는 사칙연산을 하면 에러가 남. 숫자만 가능

select 'a'+'b' from dual; --문자는 사칙연산을 할수 없음.

select 'a'||'b' from dual; --문자 결합은 ||, concat 명령어
select concat('a','b') from dual;

select*from employees;

--emp_name(email) 이렇게 출력하시오.
--운이조아(onulee) -u_nikid(변수명)
--Donald OCconnell(DOCONNEL)
select emp_name ||'('|| email ||')' from employees; -- ||사용방법
select emp_name ||'('|| email ||')' u_nikid from employees;
select concat(emp_name,concat('(',concat(email,')'))) from employees; --concat사용법


select employee_id, emp_name, hire_date from employees
order by hire_date asc;


--00/01/01 이후 입사한 사원을 출력하시오.
--00/01/24, 00-01-01, 2000-01-01 다 같은 형태다
select *from employees
where hire_date>'00/01/01' order by hire_date asc;


select * from employees
order by salary desc; --

select count(*) from employees;
select max(salary) from employees; --24000

--where 뒤에는 조건문이 오는데 select가 올 수도있다.
select * from employees
where salary=(select max(salary) from employees);--이중쿼리


select *from employees
where commission_pct is not null;

--부서번호가 80번 이상인 사원을 출력하시오.
select *from employees
where employee_id>=80 order by department_id asc;

--부서번호가 80인 사원만 빼고 출력하시오.
select *from employees
where not employee_id=80 order by department_id asc;

-- <>, !=, not (아닌거 찾기)
select *from employees
where  employee_id!=80 order by department_id asc;

--부서번호가 50번이면서 연봉6000이상인 사원을 출력하시오.
select *from employees
where department_id=50 and salary>=6000;

--2000이상 3000이하
--and, between A and B 두가지 있다.
select *from employees
where salary>=2000 and salary<=3000;

--between A and B (2000~3000), 그런데 얘는 2000,3000이 포함된다.
select *from employees
where salary between 2000 and 3000;

--avg, count, max, min (그룹함수)
select avg(salary) from employees;

--평균보다 낮은 사원
select *from employees
where salary <=6461 --사원이 늘면 수정해야한다.
order by salary desc;

select *from employees
where salary <=(select avg(salary) from employees) --사원이 늘어도 상관없다.
order by salary desc;


--월급3000, 4000, 6000
--or, in
select *from employees
where salary=3000 or salary=4000 or salary=6000;

select *from employees
where salary in(3000,4000,6000);


select *from employees;


--사원번호 101,151,200
select employee_id, salary from employees 
where employee_id=101 or employee_id=151 or employee_id=200;

select employee_id, salary from employees
where employee_id in(101,151,200);

--월급이 2000미만 3000초과인 사원을 출력
--btween 앞에 not을 붙여서 btween 값을 포함시키지 않는다.
select *from employees
where salary<2000 or salary>3000;

select *from employees
where salary not between 2000 and 3000;

--입사일 00/01/01 - 00/12/31 사원을 출력
--or, and, between 날짜에도 가능
select *from employees
where hire_date between '00/01/01' and '00/12/31';

select *from employees
where hire_date>='00/01/01' and hire_date<= '00/12/31';

select emp_name from employees;

--이름이 대문자 S로 시작되는 이름을 출력하시오.
--like 'S%' -S뒤에 어떤 문자가 있어도 S로 시작하는 건 다
select emp_name from employees
where emp_name like 'S%';
--n로 끝나는 이름을 출력
--like '%n' - 앞에 어떤 문자가 있어도 n으로 끝나는 건 다
select emp_name from employees
where emp_name like '%n';
--처음, 끝, 중간 e가 있는 이름을 출력
--문자 사이에 'e'가 있는 사람은 '%e%' 퍼센트 사이에 넣어준다.
select emp_name from employees
where emp_name like '%e%';