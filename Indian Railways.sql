select * from train where route_id=1;
describe fares;
drop table fares;
create table fares (
fare_id int not null auto_increment primary key,
train_id int,
start_station int,
stop_station int,
class_id int,
fare int,
foreign key(train_id) references train(train_id),
foreign key(start_station) references station(station_id),
foreign key(stop_station) references station(station_id),
foreign key(class_id) references class(class_id)
);

drop table class;
create table class (
class_id int not null auto_increment primary key,
class_name varchar(50)
);

select * from station;
select * from class;

insert into class(class_name) values('2S'), ('SL'), ('3A'), ('2A'), ('1A');

insert into fares(train_id, start_station, stop_station, class_id, fare) values(3,1,4,3,475);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(6,7,8,5,854);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(7,10,3,1,1039);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(12,2,9,4,1265);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(8,9,7,2,928);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(10,2,8,3,786);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(4,4,6,5,1320);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(5,6,4,4,467);
insert into fares(train_id, start_station, stop_station, class_id, fare) values(9,8,9,1,320);


desc fares;
desc train;
select * from route;
select * from train;
select * from fares;
select * from station;

select count(train_type), train_type from train group by train_type;
select * from train where train_name like '%ASR%';

select train.train_id, train.train_name, train.route_id, fare
from train
inner join fares on
train.train_id = fares.train_id;

select train.train_id, train.train_name, train.route_id, route.via as passing_through
from train
inner join route on
train.route_id = route.route_id;

select train.train_id, train.train_name, train.route_id, route.start as start_station, route.stop as stop_station, 
route.via as passing_through
from train
inner join route on
train.route_id = route.route_id;
