
select count (*) from board;

--drop table board;

--bcontent 컬럼에 'faucibus' 단어가 들어가 있는 게시글을 출력하시오.
select *from board where bcontent like '%faucibus%';

--bcontent 컬럼에 'ven' 개수
--btitle 'ven' 개수
select *from board where bcontent like '%ven%';--233
select *from board where btitle like '%ven%';--13

--btitle, bcontent 컬럼에 ven 들어간 게시글 출력
--2가지 이상일땐 or사용하기
select *from board where bcontent like '%ven%' or btitle like '%ven%';--245

--bcontent n으로 시작하면서 4개의 문자단어가 있는 게시글을 출력하시오.
--nibh, naabb, uisque
--%n___%, %
select bcontent from board
where bcontent like '% n___';

select *from employees;

select emp_name from employees
where emp_name like 'D_____ %'; -- '__'하나의 단어를 의미, _와 % 사이에는 띄어쓰기.

select * from employees where emp_name like 'D%';--9
select * from employees where emp_name like '%a%';--83

--두번째 글자가 a 인 사원이름을 출력
--not은 포함이 안 된 사람
select *from employees where emp_name like '_a%';--32
select *from employees where emp_name not like '_a%';--75


--월급을 낮은 순부터 출력하시오.
select emp_name, salary from employees
order by salary asc; --desc(높은순, 오름차순, 역순)

select employee_id,emp_name,job_id, hire_date from employees
order by emp_name desc;

--부서번호는 순차정렬, 이름은 역순정렬
select employee_id, emp_name, department_id, job_id, hire_date from employees
order by department_id asc, emp_name desc;

--월급으로 순차정렬, 입사일 역순정렬
select employee_id, emp_name, department_id, job_id, hire_date,salary from employees
order by salary asc, hire_date desc;

--abs:절대값
select -10, abs(-10) "절대값" from dual;--오류가 없기위한 dual가짜테이블

--floor:버림
select 10.54578, floor(10.54578) from dual;

--trunc(값, 버림위치) :특정자리 버림
select 10.54578, trunc(10.5478,2), floor(10.54578)from dual;

--round(값, 반올림위치):특정자리 반올림
--round에 자리지정 안 하면 첫째자리에서 반올림
select 10.54578, round(10.54578), round(10.54578,3) from dual;

select *from stuscore;
--floor는 버림, round는 반올림
select stunum,name,math, kor, eng,kor+eng,floor((kor+math)/2) from stuscore;

--월급을 원화로 환산, 1342 소수점2자리 반올림해서 출력하시오.
--사번, 사원명, 월급, 월급환상, 월급환산3자리 반올림
select employee_id, emp_name, salary, salary*1342.32, round(salary*1342.32,2) from employees;

--입사일이 현재날짜까지 걸린 일자를 출력
--소수점 3자리에서 반올림 (3자리에서 반올림하니 2자리까지만 나오면 됨)
-- -1은 소수점 바로 앞
select round(sysdate - hire_date,2) from employees;

-- 입사일에서 현재날짜까지 걸린 일자를 출력
-- 소수점 자리는 반올림하고, 일을 년으로 환산하시오
--sdate라는 변수명을 주고, 정렬함
select emp_name, floor(round(sysdate - hire_date)/365) sdate from employees
order by sdate asc;

select * from member;

select * from employees;

--나머지 함수
select mod(27,2), mod(27,5), mod(27,7) from dual;

--employees 사번이 홀수인 사원을 출력하시오.
select * from employees where mod(employee_id,2)=1 order by employee_id asc;

--부서번호가 짝수인 사원을 출력하시오. 사번, 사원명, 입사일, 월급, 관리자번호, 부서번호 출력
select employee_id,emp_name,hire_date, salary, manager_id, department_id  from employees where mod(manager_id,2)=1 order by manager_id asc;

select * from board;

select bhit from board;
--조회수 평균
select avg(bhit) from board;
--2자리에서 반올림
select round(avg(bhit),1) from board;
--소수점 버림
select floor(avg(bhit)) from board;
select trunc(avg(bhit)) from board;
--평균받아 높은 조회수를 가진 게시글 출력
select * from board where bhit >= (select avg(bhit) from board) order by bhit asc;

--형변환( , )
select to_char(salary,'999,999'),to_char(round(salary*1342.32),'999,999,999') from employees;

--시퀀스
create sequence member_seq
start with 1
increment by 1
minvalue 1
maxvalue 9999
nocycle
nocache;

create sequence board_seq
start with 1001
increment by 1
minvalue 1
maxvalue 9999
nocycle
nocache;

select * from board order by bno desc;

select board_seq.currval from dual;--현재번호
select board_seq.nextval from dual;--nextval은 무조건 +1씩 증가

select member_seq.nextval from dual;

insert into board values(  --currval 현재번호 읽어오는거
board_seq.nextval,'제목입니다.','내용입니다.',sysdate,'aaa',board_seq.currval,0,0,1,'1.jpg');

--dept_seq2 시작10, 증분 10
select dept_seq.nextval from dual;

desc stuscore;

select *from stuscore;
--delete stuscore;
commit;

select *from stuscore
order by total desc;

select stunum,  rank() over (order by total desc) m_rank
from stuscore ;

--total을 기준으로 역순정렬 후 등수를 출력
select stunum,rank() over (order by total desc) 
from stuscore;

update stuscore set rank=1
where stunum=1;

select *from stuscore a, member b; --a,b 는 별칭

select employee_id, emp_name,  employees.department_id , department_name, parent_id 
from employees a,departments b
where a.department_id = b.department_id
;





select department_id, department_name from departments;

select *from departments;

update stuscore a
set rank=1





where stunum=1;

--emp2
drop table emp2;
create table emp2 as select *from employees;
select *from emp2;

update emp2 set manager_id='';
commit;
select *from emp2;

--1. emp2의 사원번호와 employees 사원번호 똑같이 일치.
--2. emp2의 관리자번호와 employees 관리자번호를 검색함.
--3. employees관리자번호를 emp2의 관리자번호에 입력시킴
--중요하니 이해해보려고 노력해보세요.
update (select a.manager_id a_m, b.manager_id b_m from emp2 a, employees b where a.employee_id = b.employee_id) 
set a_m=b_m;
--()안에 들어간게 이거
select a.manager_id a_m, b.manager_id b_m
from emp2 a, employees b
where a.employee_id = b.employee_id;

--이것도 중요
update stuscore a
set rank = ( -- select stunum,rank from stuscore
select b_rank from
(select stunum b_num, rank() over (order by total desc) as b_rank from stuscore) b
where a.stunum = b.b_num);



--emp_seq, 시작 1, 증분1, 최소1, 최대100000
create sequence emp_seq
start with 1
increment by 1
minvalue 1
maxvalue 100000
nocycle
nocache;

create table emp01(
empno number(4) primary key,
ename varchar(10),
hiredate date);

insert into emp01
values(emp_seq.nextval, '홍길동', sysdate);

insert into emp01
values(emp_seq.nextval,'유관순',sysdate);

insert into emp01
values(emp_seq.nextval,'이순신',sysdate);

insert into emp01
values(emp_seq.nextval,'홍길자',sysdate);

insert into emp01
values(emp_seq.nextval,'홍길순',sysdate);

select *from emp01;

drop table emp01;
commit;

select employee_id, emp_name, job_id, hire_date from employees
order by hire_date desc;
