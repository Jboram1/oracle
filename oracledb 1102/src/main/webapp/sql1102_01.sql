select * from member;


select *from member where id='ccc' and pw='1111';


select *from board;

--sum이 들어간 글자 출력.
--bno로 정렬을 한 후 rownum을 붙여준다.
select rownum,a.*
from
--table
(select *from board where bcontent like '%sum%' order by bno) a --이중쿼리
where rownum>=11 and rownum<=20
;

select *from
(
select row_number() over(order by bno) rnum, a.*
from board a
where bcontent like '%sum%'
)b
where b.rnum>=11 and b.rnum <=20;


select *from board
where bcontent like '%sum%'
order by bno;