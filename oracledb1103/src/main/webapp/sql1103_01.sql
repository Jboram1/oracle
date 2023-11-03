select rownum,bno, btitle, bcontent,bdate
from board
order by bno;

select *from
(
select row_number() over (order by bno)
rnum, a.*
from board a
where bcontent like '%sum%'
)b
where b.rnum>=1 and b.rnum<=20;



select * from (select row_number() over (order by bno desc) as rnum, bno,btitle,bcontent,bdate
from board where bcontent like '%sum%' )a
where a.rnum>=11 and a.rnum<=20;



select * from(select row_number() over (order by bno desc) as
rnum, bno,btitle,bcontent,bdate from board where bcontent like '%sum%')a where a.rnum>=31 and a.rnum<=40;


select * from(select row_number() over (order by bno desc) as rnum, bno,btitle,bcontent,bdate from board where bcontent like '%sum%')a where a.rnum>=21 and a.rnum<=30;

select * from(select row_number() over (order by bno desc) as rnum, bno,btitle,bcontent,bdate from board where bcontent like '%all%')a where a.rnum>=81 and a.rnum<=90;



select row_number() over (order by bno desc)as rnum,bno,btitle,bcontent,bdate
from board 
where rnum>=1 and rnum<=10;

select *from board
where bno=1;