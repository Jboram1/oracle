select * from member
where id='aaa' and pw='1111';

desc mem;

alter table member add mdate date; 

desc member;

update member set mdate=sysdate-1;

commit;

select *from member;

--삭제,추가,수정 꼭 알기
--delete, select, update, add
--ins
delete from member
where id='kkk'
;

insert into member values(
'fff','1111','김유신','010-6666-6666','Male','game,golf',sysdate);

select *from member where id='aaa' and pw='2222';

select *from member where id='aaa' and pw='1111';

insert into member values('a','1111','홍길동','11','Male','cook',sysdate);

rollback;

select *from member;

delete from member
where id='ggg'
;

commit;