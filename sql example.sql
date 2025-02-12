create table employees(name char(20),age int);
insert into employees values ('john',25),('adam',27);
select * from employees;

select * from salaries;
#agg-max,min,avg,sum,count
select employeename,totalpay from salaries;
select max(basepay) from salaries;
select max(totalpay) as tp,EmployeeName,id from salaries group by EmployeeName,id order by tp desc limit 1;
select min(overtimepay)as op,employeename,id from salaries group by employeename,id order by op asc limit 1;
select sum(totalpay)from salaries;
select avg(totalpay)from salaries;
select count(id)from salaries;
select max(totalpay) EmployeeName,id from salaries group by EmployeeName,id order by max(totalpay) desc limit 1;
select count(EmployeeName) from salaries;
select count(EmployeeName) from salaries where year=2011;
select count(EmployeeName) from salaries where jobtitle like 'DEPUTY CHIEF%';
select count(EmployeeName) from salaries where employeename like 'd%';
select count(EmployeeName) from salaries where employeename like 'c%';

select count(employeename) from salaries where employeename like '%CHIEF%';
use akshay;
select count(EmployeeName) from salaries where basepay>15000;
select count(distinct jobtitle) from salaries;
select * from example1;

select count(a) from example1;
select sum(a) from example1;
select max(a) b,c from example1 group by b,c order by max(a) desc limit 1;
select max(a) from example1 where c>5;
select * from banklist;
select * from salaries;

select  distinct jobtitle, count(employeename)jobtitle from salaries group by jobtitle order by count(employeename) desc;

select count(employeename) from salaries where basepay>10000 and overtimepay<1000;

select count(employeename)from salaries where totalpay>100000 and totalpay<200000;
select count(employeename)from salaries where totalpay between 100000 and 200000;
select * from banklist;
select * from railway;
select count(`transaction id`)from railway;
select distinct `payment method` from railway;

select concat ('anu','rag') as name;


select curdate();
select curtime();
select now();
select day('2023/7/24');
select month('2020/7/24');
select year('2020/7/24');
select dayname('2023/7/24');
select sysdate();

select concat ('anu','rag') as name;
select upper ('anjana') as caps;
select lower ('anjana')as lower;
select reverse('anjana')as rev;
select char_length('anjana')as len;
select substr("hello hai",7,3)as str;
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

select *from railway;

select count( `Date of Purchase`)from railway where `Date of Purchase`='2023-12-31';
select dayname(`Date of Purchase`), count(`Transaction ID`) as ct from railway group by dayname(`Date of Purchase`)  having ct>300 order by ct desc;
select dayname(`Date of purchase`),count(`Transaction ID`)as ct from railway group by dayname(`date of purchase`) order by ct desc;
select monthname(`date of purchase`),count(`Transaction ID`) from railway group by monthname(`date of purchase`) order by count(`Transaction ID`) desc;
select 









