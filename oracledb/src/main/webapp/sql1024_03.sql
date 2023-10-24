select * from departments;
select * from departments order by manager_id asc;
--employees ���̺��� employee_id�� ��������
select * from employees order by employee_id asc;
select * from employees where employee_id>=200;
select * from employees
where employee_id>=190 and employee_id<=250;
--salsty 5000�̻��̸鼭 ����� salary�������İ˻��Ͻÿ�.
select * from employees
where salary>=5000 order by salary asc;
--���, �̸�, ����, �μ�, ���޸� ����Ͻÿ�.
select employee_id, emp_name, job_id, department_id, salary from employees;
--���̺��� ������ ����
create table emp2 as select * from employees;
select * from emp2;
--�÷� Ÿ��
desc emp2;
--�÷� �̸� ����
alter table emp2 rename column emp_name to e_name;
--�÷� ������ Ÿ��,���� ����
--email �ȿ� �����Ͱ� ���ڰ� �ƴϸ� ������ �ȵ�.
--alter table emp2 modify email number(50);  number�� ���ڿ��� ������.
alter table emp2 modify email varchar2(50);
--�÷� ����
alter table emp2 drop column create_date;
--�÷� �߰�
alter table emp2 add create_date date;   --�߰��ϸ� �׻� �ǵڿ� �ٴ´�.
--�÷� ���� ����
alter table emp2 modify update_date invisible;
alter table emp2 modify update_date visible;
select * from emp2;
--�÷��� �����͸� ����
insert into emp2 select * from employees;
select * from emp2;
commit;
drop table emp2;

--emp2���� �̸� ���� �Ի����� ����ؼ� �̸� ��������
select emp_name, salary, hire_date from emp2;

alter table emp2 modify salary invisible;
alter table emp2 modify manager_id invisible;
alter table emp2 modify commission_pct invisible;
alter table emp2 modify retire_date invisible;
alter table emp2 modify department_id invisible;
alter table emp2 modify job_id invisible;

alter table emp2 modify salary visible;
alter table emp2 modify manager_id visible;
alter table emp2 modify commission_pct visible;
alter table emp2 modify retire_date visible;
alter table emp2 modify department_id visible;
alter table emp2 modify job_id visible;


desc emp2;

insert into emp2(employee_id,emp_name) select employee_id, emp_name from employees;


--��Ī����, as������ ������ (�������� �����ϴ� ��) ex)y_salary, k_salary
select salary, salary*12 as y_salary,salary*12*1342 K_salary from employees;

select * from employees;


--��� nvl(����,0) null�ΰ�� 0���� ǥ���϶�.
select salary,salary*12, commission_pct from employees;

select 
salary, 
salary*12 as "���",
(salary*12)*nvl(commission_pct,0) as "�μ�Ƽ��", --����Ŭ�� null�� ���Ѵ�. �׷��� nvl(,0)�� ������Ѵ�.
(salary*12)+(salary*12)*nvl(commission_pct,0) as "��������" from employees;

select nvl(manager_id,0) from employees;


--���, ����, ����, Ŀ�̼�, ���,���+Ŀ�̼��� ���.
select employee_id, salary, manager_id, nvl(commission_pct,0) as "commission", salary*12 as "y_salary", (salary*12)+(salary*12)*nvl(commission_pct,0) as "c_salary" from employees;

--������ 6000�� ��� �˻�
select * from employees where salary=6000;

--Ŀ�̼��� null�� ����� ����Ͻÿ�. null�� is null (is not null�� null�� �ƴ� ����� ���)
select * from employees where commission_pct=null;
select * from employees where commission_pct is null;
select * from employees where commission_pct is not null;

select commission_pct from employees;

select * from departments;
--�μ���ȣ, �μ����� ����Ͻÿ�.
select department_id as "�μ���ȣ", department_name as "�μ���" from departments where department_id>=10 and department_id<=40;


-- ����Ÿ���� �ٿ��� ��� ||' '
select emp_name||'is a'||job_id from employees;
select  concat(concat(emp_name, 'is a'),job_id) con_name from employees; --���� ���� ������� ���´�. concat�� �ι� ���.

select * from stuscore;

select kor,eng,math,kor+eng+math,(kor+eng+math)/3 from stuscore; --����,����,����,�հ�,���

--�μ���ȣ �ߺ����� ��� �� ��������
select distinct department_id from employees order by department_id asc;

--job_id �ߺ����� ���
select distinct job_id from employees;


--���� 3000, 5000, 6000 ����Ͻÿ�.
select * from employees 
where salary=3000 or salary=6000 or salary=7000;

select * from employees 
where salary>=3000 and salary<=10000
order by salary desc;

--������ 5000������ ������� +1000 ������ �λ��ؼ� ����Ͻÿ�.

select salary "�⺻����", salary+1000 "�λ����", (salary+1000)*1342 "��ȭ"
from employees where salary<=5000;

--�μ���ȣ�� 10,30,50�� �����ȣ, ����̸�, �μ���ȣ, ����, ����, �Ի����� ����Ͻÿ�.
select employee_id, emp_name, department_id,job_id, salary, hire_date
from employees where department_id=10 or department_id=30 or department_id=50
order by department_id asc, employee_id asc; --department_id �ߺ����� employee_id�� ���������� ����.  (desc�� ������

select *from employees;

-- �Ի����� 2003/09/01 �����̸鼭 4000�̻� 8000���� �����ȣ, ����̸�, �޿�, �Ի���, �μ���ȣ ���
-- hire_date+100�ϸ� �Ի��Ϸκ��� 100���� �˷���. 
select employee_id, emp_name, salary, hire_date, hire_date+100, department_id 
from employees where salary>=4000 and salary<=8000 and hire_date>='2003/09/01';

commit;
