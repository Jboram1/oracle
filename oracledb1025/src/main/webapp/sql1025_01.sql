select * from employees;

select salary,salary+100,salary-100 from employees;

select sysdate, sysdate+365 from dual; --dual �ӽô������̺�

select 1+3 from dual; -- �ٷ� ��Ģ���� ����

select 1+'3' from dual; --����'3'�� ��Ģ������ �ϸ� ���ڷ� �ڵ���ȯ

select 1+'a' from dual; --����'a'�� ��Ģ������ �ϸ� ������ ��. ���ڸ� ����

select 'a'+'b' from dual; --���ڴ� ��Ģ������ �Ҽ� ����.

select 'a'||'b' from dual; --���� ������ ||, concat ��ɾ�
select concat('a','b') from dual;

select*from employees;

--emp_name(email) �̷��� ����Ͻÿ�.
--��������(onulee) -u_nikid(������)
--Donald OCconnell(DOCONNEL)
select emp_name ||'('|| email ||')' from employees; -- ||�����
select emp_name ||'('|| email ||')' u_nikid from employees;
select concat(emp_name,concat('(',concat(email,')'))) from employees; --concat����


select employee_id, emp_name, hire_date from employees
order by hire_date asc;


--00/01/01 ���� �Ի��� ����� ����Ͻÿ�.
--00/01/24, 00-01-01, 2000-01-01 �� ���� ���´�
select *from employees
where hire_date>'00/01/01' order by hire_date asc;


select * from employees
order by salary desc; --

select count(*) from employees;
select max(salary) from employees; --24000

--where �ڿ��� ���ǹ��� ���µ� select�� �� �����ִ�.
select * from employees
where salary=(select max(salary) from employees);--��������


select *from employees
where commission_pct is not null;

--�μ���ȣ�� 80�� �̻��� ����� ����Ͻÿ�.
select *from employees
where employee_id>=80 order by department_id asc;

--�μ���ȣ�� 80�� ����� ���� ����Ͻÿ�.
select *from employees
where not employee_id=80 order by department_id asc;

-- <>, !=, not (�ƴѰ� ã��)
select *from employees
where  employee_id!=80 order by department_id asc;

--�μ���ȣ�� 50���̸鼭 ����6000�̻��� ����� ����Ͻÿ�.
select *from employees
where department_id=50 and salary>=6000;

--2000�̻� 3000����
--and, between A and B �ΰ��� �ִ�.
select *from employees
where salary>=2000 and salary<=3000;

--between A and B (2000~3000), �׷��� ��� 2000,3000�� ���Եȴ�.
select *from employees
where salary between 2000 and 3000;

--avg, count, max, min (�׷��Լ�)
select avg(salary) from employees;

--��պ��� ���� ���
select *from employees
where salary <=6461 --����� �ø� �����ؾ��Ѵ�.
order by salary desc;

select *from employees
where salary <=(select avg(salary) from employees) --����� �þ �������.
order by salary desc;


--����3000, 4000, 6000
--or, in
select *from employees
where salary=3000 or salary=4000 or salary=6000;

select *from employees
where salary in(3000,4000,6000);


select *from employees;


--�����ȣ 101,151,200
select employee_id, salary from employees 
where employee_id=101 or employee_id=151 or employee_id=200;

select employee_id, salary from employees
where employee_id in(101,151,200);

--������ 2000�̸� 3000�ʰ��� ����� ���
--btween �տ� not�� �ٿ��� btween ���� ���Խ�Ű�� �ʴ´�.
select *from employees
where salary<2000 or salary>3000;

select *from employees
where salary not between 2000 and 3000;

--�Ի��� 00/01/01 - 00/12/31 ����� ���
--or, and, between ��¥���� ����
select *from employees
where hire_date between '00/01/01' and '00/12/31';

select *from employees
where hire_date>='00/01/01' and hire_date<= '00/12/31';

select emp_name from employees;

--�̸��� �빮�� S�� ���۵Ǵ� �̸��� ����Ͻÿ�.
--like 'S%' -S�ڿ� � ���ڰ� �־ S�� �����ϴ� �� ��
select emp_name from employees
where emp_name like 'S%';
--n�� ������ �̸��� ���
--like '%n' - �տ� � ���ڰ� �־ n���� ������ �� ��
select emp_name from employees
where emp_name like '%n';
--ó��, ��, �߰� e�� �ִ� �̸��� ���
--���� ���̿� 'e'�� �ִ� ����� '%e%' �ۼ�Ʈ ���̿� �־��ش�.
select emp_name from employees
where emp_name like '%e%';