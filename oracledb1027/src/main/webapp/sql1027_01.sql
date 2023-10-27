select sysdate from dual;

--sysdate+1은 하루 증가, add_months(sysdate,1)은 한달 증가
select sysdate, sysdate+1, add_months(sysdate,1) from dual;

--그달의 마지막 일자를 알려줌
select last_day(sysdate) from dual;
select last_day('2022-01-01') from dual;

--날짜에서 년도, 월, 일만 출력
select extract(year from sysdate) from dual;
select extract(month from sysdate) from dual;
select extract(day from sysdate) from dual;

--날짜에서 날짜를 빼면 기간의 일을 알수 있음.
select bdate, trunc(sysdate - bdate)||'일' from board;

--지난 개월수를 출력
select bdate,trunc(months_between(sysdate,bdate))||'개월' from board;

--날짜->문자로 형변환, 날짜포맷 변경
select sysdate from dual;
--2023-10-27 오전 09:52:14형태로 출력
select to_char(sysdate, 'YYYY-MM-DD AM HH:MI:SS') from dual;
--2023년 10월 27일 금요일 형태로 출력
select to_char(sysdate, 'YYYY"년" MM"월" DD"일"DAY') from dual;

--숫자->문자로 형변환, 천단위표시, 원화표시
--9로 자리수 표시를 하면, 없을때는 빈공백, 0으로 자리수 표시를 하면, 없을때 0으로 출력됨.
select 1234500000 from dual;
select to_char(1234500000,'999,999,999,999') from dual;--1,234,500,000
select trim(to_char(1234500000,'999,999,999,999')) from dual;--trim빈공백제거
select to_char(1234500000,'000,999,999,999') from dual;--001,234,500,000
select to_char(1234500000,'L999,999,999,999') from dual;--원화표시 L(나라별원화), $(달러)

--문자->날짜 형변환, 기존의 날짜가 얼만큼 지났는지 확인
select '2023-10-27' from dual;
select  add_months('2023-10-27',1) from dual;
select sysdate-to_date('2023-10-01', 'YYYY-MM-DD') from dual;

--nvl(commission_pct,0)
--manager_id null값에 'ceo'
select manager_id from employees;
--manager_id 타입 : number
select nvl(manager_id,'0') from employees;
--숫자->문자형변환 'ceo' 글자를 입력
select nvl(to_char(manager_id),'ceo') from employees;

--월급 총금액 - 천단위, $
select to_cahr(sum(salary),'$999,999,999') from employees;
--환률 1342.32곱해서 천단위, \ 표시
select to_char(avg(salary)*1342.32,'L999,999,999') from employees;

--월급의 최대값, 최소값
select max(salary), min(salary) from employees;

select department_id from employees;

--그룹조사
select emp_name, max(salary) from employees
where department_id =50
group by emp_name;

--한사람 조사
select emp_name, salary from employees where salary = (select max(salary) from employees);

select department_id, max(salary), min(salary) from employees
group by department_id;
--단일함수는 그룹함수와 같이 쓸 수 없다.

--똑같은 이름이 없기 때문에 의미가 없는 그룹이다.
--select emp_name, salary from employees 와 똑같은 것이다.
select emp_name, max(salary) from employees
group by emp_name;

--count(*) 출력 :107
select count(*) from employees;
--null값이 카운트에서 제외되기 때문에 106
select count(manager_id) from employees;

select id from board;

select emp_name from employees;

--대문자, 소문자 다 적어줘야 검색된다.
select emp_name from employees where emp_name like ('%D%') or emp_name like('%d%');
--전부다 소문자로 바꿔서 d가 포함된 이름을 찾아준다. : lower
select emp_name from employees where lower(emp_name) like('%d%');

--빈공백을 0으로 출력
--나머지 자리는 0으로 채우고 천단위 표시가 된다.
select to_char(12,'000,000') from dual;
--12포함 6자리까지 0으로 채워달라. 그러나 천단위 표시가 안 된다.
select lpad(12,6,'0') from dual;

select id from board;
select substr(id,3,3) from board;
select bdate from board;

--20230816
--20230816형태로 변환.
select to_char(bdate, 'YYYYMMDD') from board;
--20230816형태로 변환 후 첫번째 자리에서 6자리까지 출력.
select substr(to_char(bdate,'YYYYMMDD'),1,6) from board;

--특정 글자 찾기
--id에서 ff들어간 아이디 찾기
select instr(id,'ff') from board;
select id, instr(id,'ff') i_id from board where instr(id,'ff') !='0';

select length(id) from board;

--hire_date employees
--substr 월을 출력
select hire_date from employees;--01/06/21
select substr(hire_date,4,2) from employees;--06

--이름에서 3부터 3개와 월을 함께 출력
-- aaa06
select emp_name, hire_date,substr(emp_name,3,3)||substr(hire_date,4,2) from employees;

--마지막 날짜 last_day
--입사일의 월의 마지막 날짜
select hire_date, last_day(hire_date) from employees;

select *from emp01;

--테이블생성되면서 모든 데이터 추가
create table fboard as select * from board;

--bhit에 100을 추가하는 방법
select bhit,bhit+100 from board;
update board set bhit = bhit+100;

select bno,bhit from board;

--게시글을 클릭시마다 +1씩 증가
update board set bhit = bhit+1;--전체가 증가한다.
update board set bhit = bhit+1 where bno=31;--31번 게시글에만 +1증가

--두개의 테이블 사용, 별칭 사용
select a.bno,a.bhit,b.bno, b.bhit from fboard a, board b;
commit;

select bno, bhit from board;

update fboard a
set bhit = (select bhit from board b where a.bno=b.bno);


desc fboard;

alter table fboard add userid varchar2(30);

select userid from fboard;

--id 1번째부터 3개, bdate 월을 합친 값을 userid에 입력.
select substr(id,1,3)|| substr(bdate,4,2) from board;
update fboard a
set userid = (select substr(id,1,3)|| substr(bdate,4,2) from fboard b where a.bno=b.bno);

select *from fboard;

--테이블 컬럼 추가
alter table fboard
add u_id varchar2(30);


--테이블 컬럼명을 변경
alter table fboard rename column userid to uuid;

--테이블 컬럼 타입 변경
alter table fboard
modify uuid varchar(40);

--컴럼 삭제
alter table fboard drop column uuid;

--테이블생성되면서 모든 데이터 추가
create table emp2 as select * from employees;

--테이블 이름 변경
rename emp2 to emp02;


desc board;
--drop table emp02;
--desc fboard;
--drop table emp01;
--drop table emp2;

desc member;

create table mem(
id varchar2(30) primary key, --not null, unique,primary key는 다 같다
pw varchar2(30) not null, --null값 허용안함
name varchar2(30) not null,
phone varchar2(13), --010-1111-1111
gender varchar2(1) check(gender in('M','F')), --M,F
hobby varchar2(80),
mlevel number(2) check(mlevel between 1 and 10), --1~10사이 값만 가능
mdate date default sysdate --입력하지 않으면 현재날짜 등록
);


alter table mem
modify phone varchar2(13);


insert into mem values (
'aaa','1111','홍길동','010-1111-1111','M','game',1,sysdate );

insert into mem(id,pw,name) values (
'bbb','1111','유관순' );

insert into mem(id,pw,name) values (
'bbb','2222','이순신' );-- 중복아이디라서 에러

insert into mem(id,pw,name) values (
'ccc','222','이순신','MALE' );--테이블 생성시 설정한 'M','F'만가능하다. MALE은 에러 소문자m도 에러.

insert into mem(id,pw,name,gender) values (
'ccc','222','이순신','M' );

select *from mem;

commit;

select *from member;

desc member;

--오라클 switch, if 조건문
--decode 같은 값인 경우만 비교 가능함.
select *from employees;

select department_id from employees;

select department_id, department_name from departments;

--10 총무기획부 20마케팅 30구매/생산부 40인사부 50배송부
select department_id from employees;

select department_id, 
decode(department_id,
10,'총부기획부',
20,'마케팅',
30,'구매/생산부',
40,'인사부',
50,'배송부'
)
from employees;

select a.department_id, department_name 
from departments a,employees b
where a.department_id = b.department_id;

--학생성적 테이블
create table sscore (
sno number(4) primary key, -- 점수에 부여되는 순번
sid varchar2(20),
total number(3) default 0 --미입력시 0으로 출력
);

insert into sscore values (sscore_seq.nextval,'a1',50);
insert into sscore values (sscore_seq.nextval,'a2',90);
insert into sscore values (sscore_seq.nextval,'a3',80);
insert into sscore values (sscore_seq.nextval,'a4',10);
insert into sscore values (sscore_seq.nextval,'a5',100);
insert into sscore values (sscore_seq.nextval,'a6',70);
insert into sscore values (sscore_seq.nextval,'a7',60);
insert into sscore values (sscore_seq.nextval,'a8',30);
insert into sscore values (sscore_seq.nextval,'a9',20);
insert into sscore values (sscore_seq.nextval,'a10',80);

commit;

select *from sscore;

select sno, sid, total, decode(total, --10='F'만 가능 10>'F'는 안 된다. 등가비교 안 됨. = 똑같을 때만 됨.
10,'F',
20,'F',
30,'F',
40,'F',
50,'F',
60,'F', 
70,'D',
80,'B',
90,'A',
100,'A' ) as hak from sscore;

--case 사용하여 학점 출력
select avg,
case
when avg >=90 then 'A'
when avg >=80 then 'B'
when avg >=70 then 'C'
when avg >=60 then 'D'
when avg <60 then 'F'
end as hak --컬럼 이름이 길어 별칭 달아주기
from stuscore;

--월급이 3000 이상은 E등급 4000~5000은 D등급 6000~8000 C등급 9000~10000 B등급 10000이상 A등급 출력
--employees salary
select rank,
case
when salary >= 10000 then 'A'
when salary >= 8001 then 'B'
when salary >= 5001 then 'C'
when salary >= 3000 then 'D'
when salary < 3000 then 'F'
end as rank from emp02;


alter table emp02 add rank varchar2(10);

update emp02 a set rank = (
select case
when salary >= 10000 then 'A등급'
when salary >= 8001 then 'B등급'
when salary >= 5001 then 'C등급'
when salary >= 3000 then 'D등급'
when salary < 3000 then 'E등급'
end as rank2 from emp02 b where a.employee_id = b.employee_id);

select salary, rank from emp02;


--사원중에 평균월급 이하로 받는 사원을 출력
--select 2개 이상 서브쿼리
select emp_name, salary from employees
where salary <= (select avg(salary) from employees);

select bhit, bhit+100 from fboard;

update fboard set bhit = bhit+100;

commit;

select bhit from fboard;
select bhit from board;

drop table fboard;

create table fboard as select *from board;

select bhit from fboard;
select bhit from board;
select a.bhit,b.bhit from fboard a, board b;--무작위로 합친거다. 이렇게 하면 안 됨.

select a.bhit,b.bhit from fboard a, board b
where a.bno=b.bno; --쪼인. 


desc member;

create table nboard(
bno number(4) primary key,
id varchar2(20),
btitle varchar2(1000) not null,
bcontent varchar2(4000),
bdate date,
constraint fk_nboard foreign key(id) references member(id));
--constraint->외래키 등록, 이름 fk_nboard

select * from nboard;

insert into nboard values(
nboard_seq.nextval,'ddd','제목6','내용6', sysdate
);

commit;

select *from nboard;
select *from member;

delete member
where id = 'ddd';
select *from member;
select *from nboard;

--외래키로 등록, primary key 테이블의 데이터가 삭제되면 외래키에 있는 데이터도 모두 삭제처리.
alter table nboard add constraint fk_nboard foreign key(id) references member(id)
on delete cascade;

alter table nboard
drop constraint fk_nboard;

--primary key 테이블의 데이터가 삭제되면 외래키에 있는 데이터의 id만 null값으로 변경
alter table nboard
add constraint fk_nboard_id foreign key(id) references member(id) on delete set null;

--외래키 삭제
alter table nboard drop constraint fk_nboard;
delete member where id = 'aaa';

select *from nboard;

--null값을 제외한 row를 검색한 후 그룹함수를 적용해서 출력
--커미션의 null값을 먼저 삭제하고 그룹함수 적용
select department_id,count(commission_pct)
from employees
where commission_pct is not null
group by department_id;

--그룹함수에서 그룹함수의 값의 조건을 처리하려면 having 명령어를 사용해야함
--그룹함수에서 먼저 적용하고 null값을 삭제
select department_id,count(commission_pct)
from employees
group by department_id
having count(commission_pct) !=0;

--부서별로 평균이 전체평균 이상인 부서만 출력하시오. 월급만 출력
--1. 부서별 평균을 출력
select department_id, avg(salary) from employees
group by department_id;
--2. 전체평균을 출력
select avg(salary) from employees;
--3.부서별로 평균이 전체평균 이상인 부서만 출력
select department_id, avg(salary)
from employees
group by department_id
having avg(salary)>(select avg(salary) from employees);

--이름까지 출력
select a.department_id,b.department_name,avg(salary) as aaa
from employees a, departments b
where a.department_id = b.department_id
group by a.department_id,b.department_name
having avg(salary)>(select avg(salary) from employees )
;

commit;