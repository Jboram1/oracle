
--단일함수 사용은 group by 절에 추가해서 사용해야함
select department_id,count(*) from employees
group by department_id order by department_id;

select count(employee_id) from employees;--107
select count(manager_id) from employees;--106 : null

-- 조회수가 가장 낮은 제목,내용을 출력하시오.
select min(bhit) from board;

select bno, btitle, min(bhit) from board
group by bno,btitle; --이건 다 나옴
select *from board
where bhit = (select min(bhit) from board); --이중쿼리 사용해서 제목,내용만 뽑아낸다.

--조회수가 가장 높은 게시글을 출력
select *from board
where bhit = (select max(bhit) from board);

--[문자함수]--
select emp_name from employees;

--대소문자 구분없이 si 가 포함된 이름을 모두 출력
--SI, Si, sI, si (경우의 수
select emp_name from employees
where emp_name like('%SI%') or emp_name like('%Si%') or emp_name like('%sI%') or emp_name like('%si%');
--무조건 소문자
select emp_name from employees where lower (emp_name) like ('%si%');
--무조건 대문자
select emp_name from employees where upper (emp_name) like ('%SI%');

--employees에서 이름을 대문자로 출력하시오.
select upper(emp_name) from employees;

--자리수를 만들어서 지정한 문자를 채워 출력
--'0' -0으로 채워라 'a'- a로채워라
select lpad(12345,10,'0') from dual; --0000012345
select rpad(12345,10,'0') from dual; --1234500000

--12345 10자리로 천단위표시와 원화표시 추가해서 출력
--빈공백은 0으로 표시
select to_char(12345,'L0,000,000,000') from dual;

--ltrim- 왼쪽 공백 제거, rtrim-오른쪽공백제거, trim-모든공백제거
-- '   ABC DEF   C   '
select trim('   ABC DEF   C   ') from dual; -- ABC DEF   C (가운데 공백은 제거가 안 됨)

select *from employees;

--job_id asst -> ss-> |  asst -> ait
select replace(job_id,'ss','i') from employees;

--emp_name 안에 있는 공백 제거
select emp_name, replace(emp_name,' ','') from employees;
select '   ABC DEF   C   ', replace('   ABC DEF   C   ',' ','') from dual;

select job_id from emp2;
--SH_CLERK -> CLERK 변경해서 저장하시오.
update emp2
set job_id = 'CLERK'
where job_id = 'SH_CLERK';

--SH_CLERK을 CLERK으로 업데이트
--update emp2 a
--set job_id = (select replace(job_id,'CL','SH_CLERK) from emp2 b where a.employee_id = b.employee_id);

select replace(job_id,'SH_CLERK','CLERK') from emp2;

rollback;

--substr(해당컬럼,3,2) 해당컬럼에서 3번째 글자부터 2개를 짤라와 출력
--4번째부터 이름 3개를 가져옴
select emp_name, substr(emp_name,4,3) from employees;

select emp_name, substr(emp_name,1,5) from employees;
select hire_date from employees;

--이름 5개와 입사년도 출력
--Donal(1995)
select substr(emp_name,1,5)||to_char(hire_date,'(YYYY)') from employees;
select substr(emp_name,1,5)||'('||extract(year from hire_date)||')' from employees;

select *from employees;

--입사일이 6월 사람중에 이름이 d가 들어가 있는 사원을 출력
select * from employees
where extract(month from hire_date)=06 and emp_name like ('%d%');

update board set bhit=1;

select bhit from board;

rollback;

select bhit, bhit+100 from board;


update board a set bhit = (select bhit+100 from board b where a.bno = b.bno);
select bhit from board;

--sch_clrek을 clrek으로 
select job_id from emp2;
update emp2 a 
set job_id = (select replace(job_id,'SH_CLERK','CLERK') from emp2 b where a.employee_id = b.employee_id);


commit;

select *from board;

--게시글의 날짜를 1씩 증가해서 update하시오.
--bdate
update board a set  bdate = (select bdate+1 from board b where a.bno = b.bno);


select *from stuscore;

update stuscore set rank=0;

commit;

select * from stuscore;

select b_num, b_rank from
(select stunum b_num,rank() over(order by total desc) b_rank from stuscore);

update stuscore a
set rank = (select b_rank from
(select stunum b_num, rank() over(order by total desc) b_rank from stuscore b) where a.stunum = b_um);

--문자 길이 length
select length(emp_name), emp_name from employees;
--length평균출력
select avg(length(emp_name)) from employees;

--이름을 평균절사 길이만큼만 출력


-- employees 폰번호 5번째 3개와 이름 1-5번째까지 2개를 함께 출력
select *from employees;
select substr(phone_number,5,3)||substr(emp_name,1,5) from employees;

-- instr 찾고자 하는 위치 숫자출력
--사원번호가 198번인 사원의 사원명에서 알파벳'o'가 몇번째에 있는지.
select instr(emp_name,'o') from employees where employee_id=198;

--빈공백의 위치점을 알려준다.
select instr(emp_name, ' ') from employees;
--빈공백 제외 글자부터 떼어 올려면 +1
select emp_name, instr(emp_name, ' '),instr(emp_name, ' ')+1 from employees;
--1번째 공백이후부터 이름 가져오기 (빈공백을 기준으로 +1,-1)
select substr(emp_name, instr(emp_name,' ')+1) from employees;

--주민번호 앞에 자리 가져오기
--중간에 1이 시작위치. (첫번째 자리부터 가져와라.
select substr('880101-1101111',1,instr('880101-1101111','-')-1) from dual;

--주민번호 뒤에 자리 가져오기
select substr('880101-1101111',instr('880101-1101111','-')+1) from dual;

select *from employees;
--폰번호 출력하기
select substr(phone_number,1,instr(phone_number,'.')-1) from employees;--앞에 번호만 출력


select instr('123.456.789','.') from dual; --점이 있는 위치값

--첫번째 숫자(시작위치) 두번째숫자(점
select instr('123.456.789','.',2,2) from dual;--8, 2번째 .점의 위치에서 2번째 숫자 
select instr('123.456.789','.',1,1) from dual;--4, 1번째 .점의 위치에서 1번째 숫자
select instr('123.456.789.000','.',1,3) from dual;--12

select *from member;
--전화번호 - 첫번째 값 출력, 두번째, 세번째 값을 출력
--010
--1111
--1111
select substr(phone,1,instr(phone,'-')-1) from member; --1번째
select substr(phone,instr(phone,'-')+1,4) from member;--2번째
select substr(phone,instr(phone,'-',1,2)+1,4) from member;--3번째

select phone_number from employees;
--폰번호에서 123포함되어 있는 폰번호를 출력하시오.
select phone_number from employees
where phone_number like ('%123%');

--부서별 최대월급, 최소월급을 출력
select *from employees;
select department_id, count(*), max(salary), min(salary) from employees
group by department_id order by department_id;

--이름, 입사일을 1990년 11월 20일 월요일 의 모습으로 출력
select emp_name, hire_date, to_char(hire_date,'YYYY"년"MM"월"DD"일" DAY')  from employees;

commit;
