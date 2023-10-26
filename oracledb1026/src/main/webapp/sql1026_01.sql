--사번이 홀수 인 사원을 출력
select employee_id from employees
where mod(employee_id,2) = 1;

--board
select *from board;
desc board;

--현재날짜 출력
select sysdate from dual;

select *from board order by bno desc;

insert into board values (
board_seq.nextval,'이벤트 진행','내용입니다.',sysdate,'ccc',board_seq.currval,0,0,1,'');

insert into board values (
board_seq.nextval,'게시글을 등록합니다.','게시글 내용입니다.',sysdate,'ccc',board_seq.currval,0,0,1,'2.jpg');

insert into board values(
board_seq.nextval,'게시글을 등록합니다.','게시글 내용입니다.2',sysdate,'ccc',board_seq.currval,0,0,1,'3.jpg');

select *from board order by bno desc;

commit;

--날짜 알아내기
select sysdate-1 어제, sysdate 오늘, sysdate+1 내일 from dual;

select bdate from board
order by bdate desc;

--현재날짜 기준 5일 이전에 게시글 출력
--번호,제목,작성일만 출력
select sysdate-5 from dual;

select  bno, btitle, bdate from board
where bdate > sysdate-5
order by bdate desc;

--employees 입사일에서 현재날짜까지 기간을 출력
--소수점은 절사
select employee_id, emp_name, hire_date, department_id, trunc(sysdate - hire_date) from employees;

--다가올 요일을 출력
--실행하면 그 요일의 날짜를 알려줌
select next_day(sysdate,'목요일') from dual;
select next_day(sysdate,'목')from dual;
select next_day(sysdate,7)from dual;

--입력한 날의 마지막 일을 출력
select last_day(sysdate) from dual;
select last_day('20231201')from dual;
select last_day('20221101')from dual;
select last_day('221101')from dual;

--add, months
--달을 더하거나 뺄 수 있다
select add_months(sysdate,-2) from dual;
select add_months(sysdate,+12) from dual;
select add_months('20220101',+6) from dual;

--현재달에서 입사한 달까지의 개월수
--반올림은 round, 문자붙이기는 ||' '
select round(months_between(sysdate,hire_date))||'개월' from employees;

--현재기준으로 6개월동안 게시글이 작성된 글을 출력. board사용
select bno, btitle, bdate
from board
where bdate> add_months(sysdate,-6)
order by bdate desc;

--날짜 중 년도만, 달만, 일만 출력 : extract
select extract(year from bdate) from board;
select extract(month from bdate) from board;
select extract(day from bdate) from board;

--3월 5월 7월에 입력한 게시글을 출력하시오.
select bno, btitle, bdate from board
where extract(month from bdate) in(3,5,7) order by bdate asc;

--날짜 round - 15일이하는 1일 세팅, 16일부터는 1달 추가, trunc 1일 기준으로 변경함
--round(bdate,'month') 일자에 15일 이상이면 1개월 올라감
--trunc(bdate,'month') 일자 절사
select bno, btitle, bdate from board;
select bdate,round(bdate,'month'),trunc(bdate,'month') from board;
--to_date는 형변환 함수
--('2023-02-16')문자 앞에 to_date를 넣어서 숫자로 변환
select round(to_date('2023-02-16'),'month') from dual;

--to_char 날짜->문자형변환
--DAY(목요일), DY(목)
select bdate from board;
select to_char(bdate,'YYYY-MM-DD DAY HH:MI:SS')from board order by bdate desc;

select bno, btitle,bcontent, to_char(bdate,'YYYY"년"MM"월"DD"일') bdate, bgroup ,bstep, bindent, bhit,bfile from board;

-- employees 입사일(2023-11-01화요일
select emp_name, to_char(hire_date,'YYYY-MM-DD DAY')from employees;


--AM HH24:MI:SS (오전, 오후)
-- HH12:MI:SS (12시기준, 24시기준)
select to_char(bdate,'YYYY-MM-DD AM HH24:MI:SS') from board
order by bdate desc;

--[문자형 변환함수]
--숫자를 문자로
select to_char(1234567890)from dual;
--달러표시, (,)쉼표는 천단위표시, 0-빈자리가 0으로표시됨
select to_char(1234567890,'$9,999,999,999') from dual;
select to_char(123,'0000000000') from dual;
select to_char(123,'999,999') from dual;--123    뒤빈자리가 공백으로 됨
--L은 나라별 화폐단위표시
select to_char(1234567890,'L9,999,999,999') from dual;
--trim 앞뒤 공백제거함수
select trim(to_char(123456,'L9,999,999,999')) from dual; --\123,456


--퀴즈
--salary 달러표시와 천단위 표시
--salary*1342 원화표시와 천단위표시, 소수점1자리까지 반올림표시
select salary , to_char(salary,'$999,9999'), salary*1342.42, to_char(round(salary*1342.42,1),'L999,999,999.9')
from employees;

--퀴지
-- 12345총 9자리까지 표시 하는데, 빈공백은 0으로 채워줌.
select to_char(12345,'000000000') from dual;
--퀴즈2
--12,345총 9자리까지 표시 천단위표시하고 빈공백은 제거해서 출력
select trim(to_char(12345,'999,999,999')) from dual;

--퀴즈3
--board 테이블에서 bdate 와 비교해서 20231023숫자와 같은 날 입력한 게시글을 출력
select bno, btitle, bdate 
from board
where bdate= to_date('20231023','YYYYMMDD') order by bdate desc;

--퀴즈4
--숫자 20200101부터 현재까지 기간이 얼마나 지났는지 출력
select trunc(sysdate-to_date('20200101','YYYYMMDD')) from dual;

--퀴즈5
--자기가 태어난 날을 기준으로 얼마나 지났는지 출력
--자기가 태어난 날을 기준으로 몇개월이 지났는지 출력
select trunc(sysdate-to_date('19901120','YYYYMMDD')) from dual;
select trunc(months_between(sysdate,to_date('19901120','YYYYMMDD'))) from dual;

--[문자를 숫자로 형변환함수]
--문자20,000  - 문자10,000의 차이를 출력하시오.
select to_number('20,000','99,999')from dual;
select to_number('10,000','99,999') from dual;
select to_number('20,000','99,999')-to_number('10,000','99,999') from dual;

select emp_name,  to_char(salary,'$999,999') from employees;

--퀴즈6
--년봉+커미션포함
--월급*12+(월급*12*커미션) 년봉으로해서 출력
--nvl-null값인 얘들은 0으로
select employee_id, emp_name, salary, salary*12+((salary*12)*nvl(commission_pct,0)) "년봉" from employees;

select manager_id from employees
where manager_id is null;

select manager_id from employees;

--null 0으로 표시 출력
select nvl(manager_id,0) from employees;

--ceo라는 글자로 표시해서 출력
--숫자를 문자로 형변환후 CEO글자 출력
select nvl(to_char(manager_id),'CEO') from employees;

--그룹함수--
--게시글 조회수 총합을 출력
--천단위표시, 공백제거(trim)
select trim(to_char(sum(bhit), '999,999,999')) from board;
--평균표시
select trim(to_char(avg(bhit), '999,999,999')) from board;

--월급의 평균 출력, 소수점 2자리까지 반올림
select round(avg(salary),2) from employees;

--emp_name 단일함수를 그룹함수와 함께 출력이 안 됨.
select emp_name, avg(salary) from employees;

--min 최소값, max 최대값, avg평균, count개수, sum합계
select min(salary), max(salary), avg(salary), count(*) from employees;

--부서가 50인 사원들의 salary합계 평균을 출력
--department_id
select sum(salary), avg(salary) from employees where department_id = 50;

--모든 부서의 합계와 평균을 볼 수 있음
-- from employees 뒤에 group by를 넣어준다
select department_id, sum(salary), avg(salary) from employees group by department_id order by department_id asc;

--퀴즈
--날짜 게시글 개수를 출력
select bdate, count(*) from board
group by bdate order by bdate asc;

--년도의 월별 개수를 출력
select to_char(bdate,'YYYYMM') from board;
select to_char(bdate,'YYYYMM')년월, count(to_char(bdate,'YYYYMM'))년월별개수
from board
group by to_char(bdate,'YYYYMM')
order by to_char(bdate,'YYYYMM');

select add_months(bdate,1) from board;

--년도만 출력
select extract(year from bdate) from board;
--월만 출력
select extract(month from bdate) from board;
--일만출력
select extract(day from bdate) from board;

select extract(month from bdate), count(extract(month from bdate)) from board
group by extract(month from bdate) order by extract(month from bdate);

select count(*) from board;
select count(bno) from board;