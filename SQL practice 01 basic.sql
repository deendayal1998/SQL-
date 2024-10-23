CREATE DATABASE Students;
USE Students;
CREATE TABLE Students123(Student_id int,
Studentname Varchar(50),address Varchar(50),
date_of_enrolling date);
-- Retrive (select)
 -- Select column_name from table_name
 -- * means all columns
Select * from Students123;
Select student_id,Studentname from Students123;
-- Insert into
-- data is inserted through insert into
-- Syntax
-- Insert into tablename(column1,column2,coumn3........) values (value1,value2,value3,value4,value5........)
Insert into Students123(student_id,Studentname,address,date_of_enrolling) values (68,'Bhanu Sharma','Jaipur','2024-09-10'),(23,'abc','abc','2024-09-02');
Select * from Students123;
Insert into Students123 values (68,'Bhanu Sharma','Jaipur','2024-09-10'),(23,'abc','abc','2024-09-02');
Insert into Students123(student_id,Studentname,address) values (68,'Bhanu Sharma','Jaipur'),(23,'abc','abc');
