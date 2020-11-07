create table student(sno int,name char[20],mark int,dept char[20],primary key(sno));
insert into student values(1,'jose',50,'computer'); 
insert into student values(2,'sachin',42,'mechanical');
alter table student add column age int; 
alter table student modify column dept varchar(20);
alter table student drop column mark;
alter table student rename students; 
delete from students;
drop table students;