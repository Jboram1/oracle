select *from stuscore;

select *from member;

select *from mem;

select *from stuinfo;

select *from
(
select rownum rnum, a.* from
(select * from board
order by bgroup) a
)
where rnum>=11 and rnum<=20
;



select *from
(select ROW_NUMBER() OVER (ORDER BY bgroup) rnum, a.*
from board a)
where rnum>=11 and rnum<=20
;

select *from
(select ROW_NUMBER() OVER (ORDER BY bgroup) rnum, a.*
from board a)
where rnum between 11 and 20
;

select *from stuscore;

select * from stuinfo;

select *from board;

desc board;