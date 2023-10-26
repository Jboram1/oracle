--����� Ȧ�� �� ����� ���
select employee_id from employees
where mod(employee_id,2) = 1;

--board
select *from board;
desc board;

--���糯¥ ���
select sysdate from dual;

select *from board order by bno desc;

insert into board values (
board_seq.nextval,'�̺�Ʈ ����','�����Դϴ�.',sysdate,'ccc',board_seq.currval,0,0,1,'');

insert into board values (
board_seq.nextval,'�Խñ��� ����մϴ�.','�Խñ� �����Դϴ�.',sysdate,'ccc',board_seq.currval,0,0,1,'2.jpg');

insert into board values(
board_seq.nextval,'�Խñ��� ����մϴ�.','�Խñ� �����Դϴ�.2',sysdate,'ccc',board_seq.currval,0,0,1,'3.jpg');

select *from board order by bno desc;

commit;

--��¥ �˾Ƴ���
select sysdate-1 ����, sysdate ����, sysdate+1 ���� from dual;

select bdate from board
order by bdate desc;

--���糯¥ ���� 5�� ������ �Խñ� ���
--��ȣ,����,�ۼ��ϸ� ���
select sysdate-5 from dual;

select  bno, btitle, bdate from board
where bdate > sysdate-5
order by bdate desc;

--employees �Ի��Ͽ��� ���糯¥���� �Ⱓ�� ���
--�Ҽ����� ����
select employee_id, emp_name, hire_date, department_id, trunc(sysdate - hire_date) from employees;

--�ٰ��� ������ ���
--�����ϸ� �� ������ ��¥�� �˷���
select next_day(sysdate,'�����') from dual;
select next_day(sysdate,'��')from dual;
select next_day(sysdate,7)from dual;

--�Է��� ���� ������ ���� ���
select last_day(sysdate) from dual;
select last_day('20231201')from dual;
select last_day('20221101')from dual;
select last_day('221101')from dual;

--add, months
--���� ���ϰų� �� �� �ִ�
select add_months(sysdate,-2) from dual;
select add_months(sysdate,+12) from dual;
select add_months('20220101',+6) from dual;

--����޿��� �Ի��� �ޱ����� ������
--�ݿø��� round, ���ں��̱�� ||' '
select round(months_between(sysdate,hire_date))||'����' from employees;

--����������� 6�������� �Խñ��� �ۼ��� ���� ���. board���
select bno, btitle, bdate
from board
where bdate> add_months(sysdate,-6)
order by bdate desc;

--��¥ �� �⵵��, �޸�, �ϸ� ��� : extract
select extract(year from bdate) from board;
select extract(month from bdate) from board;
select extract(day from bdate) from board;

--3�� 5�� 7���� �Է��� �Խñ��� ����Ͻÿ�.
select bno, btitle, bdate from board
where extract(month from bdate) in(3,5,7) order by bdate asc;

--��¥ round - 15�����ϴ� 1�� ����, 16�Ϻ��ʹ� 1�� �߰�, trunc 1�� �������� ������
--round(bdate,'month') ���ڿ� 15�� �̻��̸� 1���� �ö�
--trunc(bdate,'month') ���� ����
select bno, btitle, bdate from board;
select bdate,round(bdate,'month'),trunc(bdate,'month') from board;
--to_date�� ����ȯ �Լ�
--('2023-02-16')���� �տ� to_date�� �־ ���ڷ� ��ȯ
select round(to_date('2023-02-16'),'month') from dual;

--to_char ��¥->��������ȯ
--DAY(�����), DY(��)
select bdate from board;
select to_char(bdate,'YYYY-MM-DD DAY HH:MI:SS')from board order by bdate desc;

select bno, btitle,bcontent, to_char(bdate,'YYYY"��"MM"��"DD"��') bdate, bgroup ,bstep, bindent, bhit,bfile from board;

-- employees �Ի���(2023-11-01ȭ����
select emp_name, to_char(hire_date,'YYYY-MM-DD DAY')from employees;


--AM HH24:MI:SS (����, ����)
-- HH12:MI:SS (12�ñ���, 24�ñ���)
select to_char(bdate,'YYYY-MM-DD AM HH24:MI:SS') from board
order by bdate desc;

--[������ ��ȯ�Լ�]
--���ڸ� ���ڷ�
select to_char(1234567890)from dual;
--�޷�ǥ��, (,)��ǥ�� õ����ǥ��, 0-���ڸ��� 0����ǥ�õ�
select to_char(1234567890,'$9,999,999,999') from dual;
select to_char(123,'0000000000') from dual;
select to_char(123,'999,999') from dual;--123    �ں��ڸ��� �������� ��
--L�� ���� ȭ�����ǥ��
select to_char(1234567890,'L9,999,999,999') from dual;
--trim �յ� ���������Լ�
select trim(to_char(123456,'L9,999,999,999')) from dual; --\123,456


--����
--salary �޷�ǥ�ÿ� õ���� ǥ��
--salary*1342 ��ȭǥ�ÿ� õ����ǥ��, �Ҽ���1�ڸ����� �ݿø�ǥ��
select salary , to_char(salary,'$999,9999'), salary*1342.42, to_char(round(salary*1342.42,1),'L999,999,999.9')
from employees;

--����
-- 12345�� 9�ڸ����� ǥ�� �ϴµ�, ������� 0���� ä����.
select to_char(12345,'000000000') from dual;
--����2
--12,345�� 9�ڸ����� ǥ�� õ����ǥ���ϰ� ������� �����ؼ� ���
select trim(to_char(12345,'999,999,999')) from dual;

--����3
--board ���̺��� bdate �� ���ؼ� 20231023���ڿ� ���� �� �Է��� �Խñ��� ���
select bno, btitle, bdate 
from board
where bdate= to_date('20231023','YYYYMMDD') order by bdate desc;

--����4
--���� 20200101���� ������� �Ⱓ�� �󸶳� �������� ���
select trunc(sysdate-to_date('20200101','YYYYMMDD')) from dual;

--����5
--�ڱⰡ �¾ ���� �������� �󸶳� �������� ���
--�ڱⰡ �¾ ���� �������� ����� �������� ���
select trunc(sysdate-to_date('19901120','YYYYMMDD')) from dual;
select trunc(months_between(sysdate,to_date('19901120','YYYYMMDD'))) from dual;

--[���ڸ� ���ڷ� ����ȯ�Լ�]
--����20,000  - ����10,000�� ���̸� ����Ͻÿ�.
select to_number('20,000','99,999')from dual;
select to_number('10,000','99,999') from dual;
select to_number('20,000','99,999')-to_number('10,000','99,999') from dual;

select emp_name,  to_char(salary,'$999,999') from employees;

--����6
--���+Ŀ�̼�����
--����*12+(����*12*Ŀ�̼�) ��������ؼ� ���
--nvl-null���� ����� 0����
select employee_id, emp_name, salary, salary*12+((salary*12)*nvl(commission_pct,0)) "���" from employees;

select manager_id from employees
where manager_id is null;

select manager_id from employees;

--null 0���� ǥ�� ���
select nvl(manager_id,0) from employees;

--ceo��� ���ڷ� ǥ���ؼ� ���
--���ڸ� ���ڷ� ����ȯ�� CEO���� ���
select nvl(to_char(manager_id),'CEO') from employees;

--�׷��Լ�--
--�Խñ� ��ȸ�� ������ ���
--õ����ǥ��, ��������(trim)
select trim(to_char(sum(bhit), '999,999,999')) from board;
--���ǥ��
select trim(to_char(avg(bhit), '999,999,999')) from board;

--������ ��� ���, �Ҽ��� 2�ڸ����� �ݿø�
select round(avg(salary),2) from employees;

--emp_name �����Լ��� �׷��Լ��� �Բ� ����� �� ��.
select emp_name, avg(salary) from employees;

--min �ּҰ�, max �ִ밪, avg���, count����, sum�հ�
select min(salary), max(salary), avg(salary), count(*) from employees;

--�μ��� 50�� ������� salary�հ� ����� ���
--department_id
select sum(salary), avg(salary) from employees where department_id = 50;

--��� �μ��� �հ�� ����� �� �� ����
-- from employees �ڿ� group by�� �־��ش�
select department_id, sum(salary), avg(salary) from employees group by department_id order by department_id asc;

--����
--��¥ �Խñ� ������ ���
select bdate, count(*) from board
group by bdate order by bdate asc;

--�⵵�� ���� ������ ���
select to_char(bdate,'YYYYMM') from board;
select to_char(bdate,'YYYYMM')���, count(to_char(bdate,'YYYYMM'))���������
from board
group by to_char(bdate,'YYYYMM')
order by to_char(bdate,'YYYYMM');

select add_months(bdate,1) from board;

--�⵵�� ���
select extract(year from bdate) from board;
--���� ���
select extract(month from bdate) from board;
--�ϸ����
select extract(day from bdate) from board;

select extract(month from bdate), count(extract(month from bdate)) from board
group by extract(month from bdate) order by extract(month from bdate);

select count(*) from board;
select count(bno) from board;