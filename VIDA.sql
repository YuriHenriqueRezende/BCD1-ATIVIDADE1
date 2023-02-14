create database vida;

use vida;

create table users(
	id bigint not null auto_increment,
	user_name varchar(100) not null,
	user_age int not null,
    user_dob datetime not null default now(),
	user_height double not null,
    user_weight int not null,
	primary key(id)
);

create table days(
	id bigint not null auto_increment,
    user_fk bigint not null,
    day date not null,
    primary key(id),
    foreign key (user_fk) references users(id)
);

create table meals(
	id bigint not null auto_increment,
    caloreis int not null,
    fat int,
    carbohydrates int not null,
    fibre int,
    protein int,
    day_fk bigint not null,
    primary key(id),
    foreign key (day_fk) references days(id)
);

insert into users 
(user_name, user_age, user_height, user_weight, user_dob) 
values 
('João',35,1.7,71,'2023-02-13 19:52:00');

insert into users 
(user_name, user_age, user_height, user_weight) 
values 
('Maria',45,1.9,60);

insert into users 
(user_name, user_age, user_height, user_weight) 
values 
('Pedro',45,2.8,42);

insert into days (day, user_fk) values ('2023-01-07', 2);

insert into days (day, user_fk) values ('2023-01-07', 1);

insert into days (day, user_fk) values ('2023-01-07', 3);

insert into meals 
(caloreis, fat, carbohydrates, fibre, protein,day_fk) 
values 
(670,15,178,50,78,1);

insert into meals 
(caloreis, fat, carbohydrates, fibre, protein,day_fk) 
values 
(670,15,178,50,78,2);

insert into meals 
(caloreis, fat, carbohydrates, fibre, protein,day_fk) 
values 
(500,20,170,100,50,3);

select *from meals;
select *from users;
select *from days;