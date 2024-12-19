-- tcl (transaction control language)
-- Transaction => 
select @@autocommit=0;
select @@autocommit;
use regex;
create table tushar(eid int);
insert into tushar values(20);
select* from tushar;
commit;
select* from tushar;
insert into tushar values(60);
insert into tushar values(70);
rollback;
select* from tushar;
create table cyz(id int);
rollback;
savepoint regex_insert;
delete from tushar where eid=20;

rollback to regex_insert;
select * from tushar;


