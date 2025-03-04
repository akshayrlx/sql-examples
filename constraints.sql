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


