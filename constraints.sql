#constraints
 use akshay;
 create table student(id int auto_increment,
 namee char(30) not null,
 doj date,
 mark int,
 check (mark>=45),
 statuss char(30) default 'Pass',
 primary key(id)) ;
 select * from student;
 insert into student(namee,doj,mark) values('amaan','2024-06-02',45);
 
 create table team(playernumber int primary key,
 name char(25) not null,
 doj date,
 points int,
 check (points>=50),
 satus char(30) default 'qualified');
 
 select * from team;
 
 insert into team (playernumber,name,doj,points)values 
 (12,'ahh','2025-01-01',null),(13,'ahu','2025-01-01',100);

select * from customer join market on customer.Cust_id=market.Cust_id;


SELECT region, SUM(sales) AS total_sales
FROM customer 
JOIN market ON customer.cust_id = market.cust_id 
GROUP BY region 
ORDER BY total_sales DESC 
LIMIT 1;

select * from market;
select * from customer order by customer_name;
 
select customer_name,region from customer where exists(select  sales from market where customer.cust_id=market.cust_id and sales>15000);

select customer_name from customer where cust_id =any(select cust_id from market where sales>15000);
select customer_name from customer where cust_id =any(select cust_id from market where sales='136.81');
select customer_name from customer where cust_id =any(select cust_id from market where Order_Quantity>25) order by customer_name;
select customer_name,order_quantity from customer c join market m where  c.cust_id =m.cust_id and Order_Quantity>25 order by customer_name;

select customer_name from customer where cust_id =all (select cust_id from market where Order_Quantity=35) order by customer_name;

create table salary (employee_id int,employee_name varchar(40),basepay int,overtime int, total_pay int);

create trigger payment_trigger 
before insert
on salary
for each row 
set new.total_pay= new.basepay+ new.overtime*(new.basepay/50);

insert into salary values(1,"Thomus",50000,4,0);
select * from salary;
drop trigger payment_trigger;

create table student_score(student_name varchar(30),mark int ,internal_mark int,total int);

create trigger student_score 
before insert 
on student_score
for each row
set new.total=new.mark+new.internal_mark;

insert into student_score values ('akash',50,10,0);

select * from student_score;

use akshay;
create table student_details(student_name varchar(30),mark int ,internal_mark int,total int,percentage int);
create trigger student_details
before insert 
on student_details
for each row
set new.total=new.mark+new.internal_mark,
new.percentage=(new.total/100)*100;
insert into student_details values ('akshay',70,15,0,0);

select * from student_details;
use sakila;
#create view as film_view on film(film_id,title,release_year,rental_rate,replacement_cost,rating,last_update);
create view film_view as select film_id,title,release_year,rental_rate,replacement_cost,rating,last_update from film where replacement_cost>=10;
select count(film_id) from film_view where rating="PG";
select * from film_view where rating="PG";

use akshay;
create view railway_view as select `transaction id`,`purchase type`,`ticket class`,`ticket type`,price from railway where price >50;
drop view railway_view;
select* from railway_view;
select count(`transaction id`) from railway_view where `ticket class`='standard';
select avg(price) from railway_view;
select count(`transaction id`)total ,`purchase type` from railway_view group by `purchase type`;


create view calories_view as select User_ID,Gender,Height,Weight,Calories from calories;
select* from calories_view;

create table student_score(student_name varchar(30),mark int ,internal_mark int,total int);


insert into student_score values ('basi',70,10,0);
select* from student_score;
drop trigger student_score;

update student_score set total=mark+internal_mark;


create trigger student_score 
after insert 
on student_score
for each row
set total=mark+internal_mark;

select* from orders;
alter table orders add column percentage int;

ALTER TABLE orders DROP COLUMN percentage;

create trigger orders_trigger
after insert 
 on orders
for each row 
set percentage=((total_amount/100)*100);


use akshay;
insert into student_details(student_name) select student_name from student_score;
select * from student_details;

create index ticket on railway(`Transaction ID`(255),`Date of Purchase`(255),`Time of Purchase`(255));
describe railway;




