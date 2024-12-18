create database regexconst;
use regexconst;
create table product(pid int primary key, pname varchar(20), price int);
insert into product values(10,"tv",100),(20,"mobile",200),(30,"gyser",4000),(40,"yash",5000);
select * from product;

create table orders(oid int, city varchar(20), product_id int,
foreign key (product_id) references product(pid));
insert into orders values(1991,"jaipur",10),(1992,"goa",20),(1993,"uk",10),(1994,"shimla",40);
select * from orders;
insert into orders values(1995,"laptop",80);     -- show Error because we can't add the unwanted or New data which not related to parent table.

-- DDL => DATA DEFINATION LANGUAGE
-- create, drop, truncate, alter

create table test(id int, name1 varchar(20)); 
insert into test values(10,"tushar");
-- insert into test values("tushar");  --error
insert into test(name1) values("tushar");
insert into test values(20,"ram");
select * from test;    -- insert => DML Operation

-- update
update test set name1='xyz' where id=20;
select * from test; 

delete from test where id is null;
select * from test; 
drop table test;
select * from test; 
truncate test;
use regexconst;
create table companies(id int);
insert into companies values (10);
select * from companies; 
ALTER TABLE companies ADD column phone varchar(15);

ALTER TABLE companies ADD column employee_count3 int NOT NULL;

ALTER TABLE companies DROP column employee_count3;
-- rename tables
RENAME TABLE companies to newcompany1;
select * from companies;
select * from newcompany1;

ALTER TABLE newcompany1 RENAME companies;
select * from companies;

ALTER TABLE companies RENAME COLUMN id TO ids;
select * from companies;
use regex;
use regexconst;
insert into companies values(20);

-- drop primary key
alter table companies
add constraint regex_company_uk unique(company_name);

alter table companies change ids newids varchar(20);

use sakila; 
select * from payment;
select max(amount) from payment; 
select max(amount) from payment where amount < 11.99;