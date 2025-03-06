delimiter //
create procedure co()
begin
	select  c.country, count(o.customer_id) as countc from customers c left join orders o  on c.customer_id=o.Customer_ID group by c.country order by countc;
end //
delimiter ;
call co();


delimiter //
create procedure students()
begin
	insert into student_details(student_name) select student_name from student_score;
    select * from student_details;
end //
delimiter ;

call students();









