create table customers(customer_id int,customer_name varchar(30),country varcharacter(20));
insert into customers values(
1,	"John"	,"USA"),
(2,  "mary" , "canada"),
(3,	"Paul"	,"UK"),
(4,	"Anna"	,"Germany"),
(5,	"Peter"	,"USA");
select * from customers;


create table orders (Order_ID int,Customer_ID int,Order_Date date,Total_Amount float);
insert into orders values(
101,	1,	"2025-02-01"	,250.50),
(102,	2,	"2025-02-05"	,120.00),
(103,	3,	"2025-02-07"	,350.00),
(104,	1,	"2025-02-10"	,190.00),
(105,	5,	"2025-02-12"	,180.75);
insert into orders values(105,	6,	"2025-02-16"	,190.75);
select * from orders;
use akshay;


select * from customers join orders  on customers.customer_id=orders.Customer_ID;
select * from customers inner join orders  on customers.customer_id=orders.Customer_ID;
select * from customers left join orders  on customers.customer_id=orders.Customer_ID;
select * from customers right join orders  on customers.customer_id=orders.Customer_ID;
select * from customers cross join orders  on customers.customer_id=orders.Customer_ID;
select * from customers full  join orders;

select count(customer_name),country   from customers group by country order by count(customer_name) desc;
use akshay;
select * from `country-code`;
select * from zomato;
select * from `country-code` full join  zomato;
select * from `country-code` inner join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from `country-code` left join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from `country-code` right join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from `country-code` cross join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;

select * from `country-code` left join zomato  on `country-code`.`Country Code`=zomato.`Country Code`
union
select * from `country-code` right join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;

select * from `country-code` left join zomato  on `country-code`.`Country Code`=zomato.`Country Code`
union all
select * from `country-code` right join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from zomato;
select * from  `country-code`;
select zomato.`country code`, country,city, cuisines,`restaurant ID` from zomato join `country-code` on `country-code`.`Country Code`=zomato.`Country Code` where cuisines like '%Brazilian%' or cuisines like '%Indian%';
select country,count(`restaurant ID`) from zomato join `country-code` on `country-code`.`Country Code`=zomato.`Country Code` group by country limit 1 offset 1 ;

insert into `country-code` values (85,"chinna");

update `country-code` set `country code`=86 where country="chinna";
set sql_safe_updates=0;
update `country-code` set country="china" where `country code`=86;

select * from rolex;

update `rolex` set `date`="02-03-2025" where price=7999;
insert into `rolex` values(26,"01-03-2025",'rolex new',29999,"https://www.rolex new.com");

delete from `rolex` where `price`=7999;

select * from basi;
drop table basi;

select * from sports;
delete from sports;
select * from customers;
/*alter table rolex rename column  MyUnknownColumn to `index`;*/
ALTER TABLE customers
ADD column city varchar(25);
update CUSTOMERS SET CITY= case 
when customer_id=1 then 'new york' 
when customer_id=2 then 'ottawa'
when customer_id=3 then 'london'
when customer_id=4 then 'berlin'
else 'new jersey'                           #when customer_=5 then 'new jersy'
end;
alter table customers modify column city char(15);
alter table customers modify column city varchar(30);
describe customers;

alter table customers drop column population;
alter table customers add column numbers int;

select * from rolex;
select `INDEX`,price,
case 
when price >15000 then 'the price is greater than 15000'
when price <15000 then 'the price is lesser than 15000'
end as pricetext
from rolex;

select country, city ,numbers from customers 
order by (case when numbers is null then city else numbers end);
############################
select * from customers join orders  on customers.customer_id=orders.Customer_ID;
select * from orders;
select * from customers;
select  c.country, count(o.customer_id) as countc from customers c left join orders o  on c.customer_id=o.Customer_ID group by c.country order by countc;
select  c.country, count(o.customer_id) as countc from customers c left join orders o  on c.customer_id=o.Customer_ID group by c.country having countc=1;
select customer_name from customers where customer_id in (select customer_ID from orders where Total_Amount>200);







