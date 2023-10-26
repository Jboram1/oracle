
select count (*) from board;

--drop table board;

--bcontent �÷��� 'faucibus' �ܾ �� �ִ� �Խñ��� ����Ͻÿ�.
select *from board where bcontent like '%faucibus%';

--bcontent �÷��� 'ven' ����
--btitle 'ven' ����
select *from board where bcontent like '%ven%';--233
select *from board where btitle like '%ven%';--13

--btitle, bcontent �÷��� ven �� �Խñ� ���
--2���� �̻��϶� or����ϱ�
select *from board where bcontent like '%ven%' or btitle like '%ven%';--245

--bcontent n���� �����ϸ鼭 4���� ���ڴܾ �ִ� �Խñ��� ����Ͻÿ�.
--nibh, naabb, uisque
--%n___%, %
select bcontent from board
where bcontent like '% n___';

select *from employees;

select emp_name from employees
where emp_name like 'D_____ %'; -- '__'�ϳ��� �ܾ �ǹ�, _�� % ���̿��� ����.

select * from employees where emp_name like 'D%';--9
select * from employees where emp_name like '%a%';--83

--�ι�° ���ڰ� a �� ����̸��� ���
--not�� ������ �� �� ���
select *from employees where emp_name like '_a%';--32
select *from employees where emp_name not like '_a%';--75


--������ ���� ������ ����Ͻÿ�.
select emp_name, salary from employees
order by salary asc; --desc(������, ��������, ����)

select employee_id,emp_name,job_id, hire_date from employees
order by emp_name desc;

--�μ���ȣ�� ��������, �̸��� ��������
select employee_id, emp_name, department_id, job_id, hire_date from employees
order by department_id asc, emp_name desc;

--�������� ��������, �Ի��� ��������
select employee_id, emp_name, department_id, job_id, hire_date,salary from employees
order by salary asc, hire_date desc;

--abs:���밪
select -10, abs(-10) "���밪" from dual;--������ �������� dual��¥���̺�

--floor:����
select 10.54578, floor(10.54578) from dual;

--trunc(��, ������ġ) :Ư���ڸ� ����
select 10.54578, trunc(10.5478,2), floor(10.54578)from dual;

--round(��, �ݿø���ġ):Ư���ڸ� �ݿø�
--round�� �ڸ����� �� �ϸ� ù°�ڸ����� �ݿø�
select 10.54578, round(10.54578), round(10.54578,3) from dual;

select *from stuscore;
--floor�� ����, round�� �ݿø�
select stunum,name,math, kor, eng,kor+eng,floor((kor+math)/2) from stuscore;

--������ ��ȭ�� ȯ��, 1342 �Ҽ���2�ڸ� �ݿø��ؼ� ����Ͻÿ�.
--���, �����, ����, ����ȯ��, ����ȯ��3�ڸ� �ݿø�
select employee_id, emp_name, salary, salary*1342.32, round(salary*1342.32,2) from employees;

--�Ի����� ���糯¥���� �ɸ� ���ڸ� ���
--�Ҽ��� 3�ڸ����� �ݿø� (3�ڸ����� �ݿø��ϴ� 2�ڸ������� ������ ��)
-- -1�� �Ҽ��� �ٷ� ��
select round(sysdate - hire_date,2) from employees;

-- �Ի��Ͽ��� ���糯¥���� �ɸ� ���ڸ� ���
-- �Ҽ��� �ڸ��� �ݿø��ϰ�, ���� ������ ȯ���Ͻÿ�
--sdate��� �������� �ְ�, ������
select emp_name, floor(round(sysdate - hire_date)/365) sdate from employees
order by sdate asc;

select * from member;

select * from employees;

--������ �Լ�
select mod(27,2), mod(27,5), mod(27,7) from dual;

--employees ����� Ȧ���� ����� ����Ͻÿ�.
select * from employees where mod(employee_id,2)=1 order by employee_id asc;

--�μ���ȣ�� ¦���� ����� ����Ͻÿ�. ���, �����, �Ի���, ����, �����ڹ�ȣ, �μ���ȣ ���
select employee_id,emp_name,hire_date, salary, manager_id, department_id  from employees where mod(manager_id,2)=1 order by manager_id asc;

select * from board;

select bhit from board;
--��ȸ�� ���
select avg(bhit) from board;
--2�ڸ����� �ݿø�
select round(avg(bhit),1) from board;
--�Ҽ��� ����
select floor(avg(bhit)) from board;
select trunc(avg(bhit)) from board;
--��չ޾� ���� ��ȸ���� ���� �Խñ� ���
select * from board where bhit >= (select avg(bhit) from board) order by bhit asc;

--����ȯ( , )
select to_char(salary,'999,999'),to_char(round(salary*1342.32),'999,999,999') from employees;

--������
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

select board_seq.currval from dual;--�����ȣ
select board_seq.nextval from dual;--nextval�� ������ +1�� ����

select member_seq.nextval from dual;

insert into board values(  --currval �����ȣ �о���°�
board_seq.nextval,'�����Դϴ�.','�����Դϴ�.',sysdate,'aaa',board_seq.currval,0,0,1,'1.jpg');

--dept_seq2 ����10, ���� 10
select dept_seq.nextval from dual;

desc stuscore;

select *from stuscore;
--delete stuscore;
commit;

select *from stuscore
order by total desc;

select stunum,  rank() over (order by total desc) m_rank
from stuscore ;

--total�� �������� �������� �� ����� ���
select stunum,rank() over (order by total desc) 
from stuscore;

update stuscore set rank=1
where stunum=1;

select *from stuscore a, member b; --a,b �� ��Ī

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

--1. emp2�� �����ȣ�� employees �����ȣ �Ȱ��� ��ġ.
--2. emp2�� �����ڹ�ȣ�� employees �����ڹ�ȣ�� �˻���.
--3. employees�����ڹ�ȣ�� emp2�� �����ڹ�ȣ�� �Է½�Ŵ
--�߿��ϴ� �����غ����� ����غ�����.
update (select a.manager_id a_m, b.manager_id b_m from emp2 a, employees b where a.employee_id = b.employee_id) 
set a_m=b_m;
--()�ȿ� ���� �̰�
select a.manager_id a_m, b.manager_id b_m
from emp2 a, employees b
where a.employee_id = b.employee_id;

--�̰͵� �߿�
update stuscore a
set rank = ( -- select stunum,rank from stuscore
select b_rank from
(select stunum b_num, rank() over (order by total desc) as b_rank from stuscore) b
where a.stunum = b.b_num);



--emp_seq, ���� 1, ����1, �ּ�1, �ִ�100000
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
values(emp_seq.nextval, 'ȫ�浿', sysdate);

insert into emp01
values(emp_seq.nextval,'������',sysdate);

insert into emp01
values(emp_seq.nextval,'�̼���',sysdate);

insert into emp01
values(emp_seq.nextval,'ȫ����',sysdate);

insert into emp01
values(emp_seq.nextval,'ȫ���',sysdate);

select *from emp01;

drop table emp01;
commit;

select employee_id, emp_name, job_id, hire_date from employees
order by hire_date desc;
