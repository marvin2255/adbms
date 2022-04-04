drop database employee;
create database employee;
use employee;

create table emplo(EMPNO varchar(10),EMPNAME varchar(30),DEPT varchar(20),SALARY int(10),DOJ varchar(10),BRANCH varchar(20));

insert into emplo(EMPNO,EMPNAME,DEPT,SALARY,DOJ,BRANCH) values('E101','Amit','production',45000,'12-Mar-00','Bangalore'),
('E102','Amit','HR',70000,'03-Jul-02','Bangalore'),
('E103','sunita','Manager',120000,'11-Jan-01','Mysore'),
('E103','sunita','IT',67000,'01-Aug-01','Mysore'),
('E104','Mahesh','Civil',145000,'20-Sep-03','Mumbai');

select * from emplo;

select EMPNO,SALARY from emplo;

select avg(SALARY) from emplo;

select count(EMPNAME) from emplo;

select distinct EMPNAME from emplo;

select sum(SALARY),count(EMPNAME),EMPNAME from emplo group by EMPNAME having count(EMPNAME)>0;

select * from emplo where SALARY>120000;

select * from emplo order by EMPNAME desc;

select * from emplo where EMPNAME='Amit' and SALARY>50000;

Drop table emplo;