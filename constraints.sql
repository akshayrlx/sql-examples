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
 (9,'lewendowski','2025-01-01',67);

select * from customer join market on customer.Cust_id=market.Cust_id;



SELECT region, SUM(sales) AS total_sales
FROM customer 
JOIN market ON customer.cust_id = market.cust_id 
GROUP BY region 
ORDER BY total_sales DESC 
LIMIT 1;




