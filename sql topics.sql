/*
creating database  = create database name;
use database       = use databasename;

create table       = create table name(name char(30),age int,course char(30));
show table details = select * from tablename; or select column name from tablename;

insert values      = insert into name values("akshay",21,"data analyst"),("shiyas",21,"data science");
delete table values= truncate tablename;
aggregate functions = max , min  ,avg , sum , count
  max  =   select max(column name) from salaries;
           select max(totalpay) as tp,EmployeeName,id from salaries group by EmployeeName,id order by tp desc limit 1;
  min  =   select min(overtimepay)as op,employeename,id from salaries group by employeename,id order by op asc limit 1;
  sum  =   select sum(column name)from salaries;
  avg  =   select avg(column name)from salaries;
 count =   select count(column name)from salaries;
           select count(EmployeeName) from salaries where year=2011;
           select count(EmployeeName) from salaries where jobtitle like 'DEPUTY CHIEF%';
           select count(EmployeeName) from salaries where employeename like 'd%';
           select count(EmployeeName) from salaries where employeename like 'c%';
           select count(employeename) from salaries where employeename like '%CHIEF%';
           select count(EmployeeName) from salaries where basepay>15000;

count(distinct)filter multiple values = count(distinct columnname) from salaries;

select curdate();
select curtime();
select now();
select day('2020/7/24');
select month('2020/7/24');
select year('2020/7/24');
select dayname('2023/7/24');
select sysdate();

select concat ('anu','rag') as name;
select upper ('anjana') as caps;
select lower ('anjana')as lower;
select reverse('anjana')as rev;
select char_length('anjana')as len;
select substr("hello hai",1,5)as str;
select repeat('anjana',2)as caps;


select abs(-123);
select ceiling(25.3);#next higher number
select cieling(25.9);
select floor(25.8);#previous higher number
select floor(26.3);
select round(25.2);
select round(25.234,2);
select pi();
select sqrt(9);
select rand();
select rand()*11;
select floor(rand()*11);
select floor(rand()*60+20);
select floor(rand()*60+60);
*/