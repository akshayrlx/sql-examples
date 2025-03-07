CREATE TABLE players 
(player_id int not null,
player_name varchar(25),
player_number int primary key);

insert into players values (1,'messi',10),(2,'ronaldo',7);

create table player_details 
(player_number int,
nationality varchar(30) not null,
club_name varchar(30)not null,
foreign key(player_number) references players(player_number));
drop table player_details;
insert into player_details values (10,'argentina','barcelona'),(7,'portugal','real madrid');

describe players;
describe player_details;
describe sports;
describe test;

alter table sports add primary key (`type`);
alter table sports modify column date_ int not null;
alter table sports add unique(fans);

ALTER TABLE test
ADD CONSTRAINT UC_Person UNIQUE (passengerID);

alter table test drop constraint uc_person;
select * from test;
alter table test add constraint check_age check (age>0);










