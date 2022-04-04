create database DEPARTMENT;
use DEPARTMENT;

create table dept(Deptno varchar(10),Dname varchar(30),Loc varchar(15));

insert into dept(Deptno,Dname,Loc) values('d001','mechanic','10'),
('d002','civil','50'),
('d003','computer','60');

select * from dept;

alter table dept rename to department;
select * from department;

alter table department add Pincode varchar(10);
select * from department;

alter table department rename column Dname to Deptname;
select * from department;

alter table department modify column Loc char(10);
select * from department;

Drop table department;