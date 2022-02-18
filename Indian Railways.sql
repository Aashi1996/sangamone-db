create database Indian_Railways;
use Indian_Railways;

drop table train;
drop table station;
drop table route;
drop table fares;
create table train (
train_id int auto_increment primary key,
train_no int,
train_name varchar(60),
train_type varchar(50),
route_id int
);

create table station (
station_id int auto_increment primary key,
station_name varchar(60)
);

create table route (
route_id int auto_increment primary key,
start varchar(50),
stop varchar(50),
via varchar(100)
);

create table fares (
train_id int,
start_station varchar(50),
stop_station varchar(50),
fare int,
primary key(train_id, start_station, stop_station)
);

alter table train add foreign key(route_id) references route(route_id) on delete cascade;
alter table fares add foreign key(train_id) references train(train_id) on delete cascade;

insert into train(train_no, train_name, train_type, route_id) values(09017, 'HW FESTIVAL SPL', 'Shatabdi', 2);
insert into train(train_no, train_name, train_type, route_id) values(09019, 'BDTS HW SPL', 'Express', 1);
insert into train(train_no, train_name, train_type, route_id) values(04417, 'NZM FESTIVAL SPL', 'Passenger', 2);
insert into train(train_no, train_name, train_type, route_id) values(02951, 'NDLS RAJ SPL', 'Rajdhani', 1);
insert into train(train_no, train_name, train_type, route_id) values(02953, 'NZM Rajdhani SPL', 'Rajdhani', 2);
insert into train(train_no, train_name, train_type, route_id) values(02903, 'MMCT ASR SPL', 'Shatabdi', 1);
insert into train(train_no, train_name, train_type, route_id) values(09052, 'BDTS ASR SF SPL', 'Super Fast', 1);
insert into train(train_no, train_name, train_type, route_id) values(02925, 'BDTS ASR SPL', 'Passenger', 2);
insert into train(train_no, train_name, train_type, route_id) values(09047, 'BDTS NZM SPL', 'Shatabdi', 2);
insert into train(train_no, train_name, train_type, route_id) values(02617, 'MANGLADWEEP EXP', 'Express', 1);

insert into station(station_name) values('Churchgate');
insert into station(station_name) values('CST');
insert into station(station_name) values('New Delhi');
insert into station(station_name) values('Surat');
insert into station(station_name) values('Baroda');
insert into station(station_name) values('Kota');
insert into station(station_name) values('Manmad');
insert into station(station_name) values('Nasik');
insert into station(station_name) values('Bhopal');
insert into station(station_name) values('Mumbai');

insert into route(start, stop, via) values('Churchgate', 'New Delhi', 'Surat, Baroda, Kota');
insert into route(start, stop, via) values('CST', 'New Delhi', 'Manmad, Bhopal, Nasik');

insert into fares values(3, 'Churchgate', 'New Delhi', 575);
insert into fares values(4, 'CST', 'New Delhi', 725);
insert into fares values(5, 'Kota', 'Baroda', 390);
insert into fares values(6, 'Manmad', 'Bhopal', 280);
insert into fares values(7, 'Bhopal', 'Nasik', 440);
insert into fares values(8, 'Surat', 'Kota', 650);
insert into fares values(9, 'Churchgate', 'Baroda', 400);
insert into fares values(10, 'CST', 'Bhopal', 350);
insert into fares values(11, 'CST', 'Nasik', 460);
insert into fares values(12, 'Mumbai', 'New Delhi', 1030);

select * from train;
select * from station;
select * from route;
select * from fares;

select * from fares where train_id=5 OR start_station='Bhopal';
select * from train where route_id=2;