create table if not exists city(
    id bigserial primary key not null,
    name varchar(50) not null
);

alter table employee add if not exists city_id int references city(id);


insert into city (name) values ('Казань');
insert into city (name) values ('Москва');
insert into city (name) values ('Нефтекамск');
insert into city (name) values ('Питер');
insert into city (name) values ('Янаул');
insert into city (name) values ('Красноярск');

update employee
set city_id=1 where id=1;
update employee
set city_id=2 where id=2;
update employee
set city_id=2 where id=3;
update employee
set city_id=4 where id=4;
update employee
set city_id=3 where id=5;

select first_name,last_name,c.name as city from employee e inner join city c on c.id = e.city_id;

select c.name as city,e.first_name,e.last_name from city c left outer join employee e on c.id = e.city_id;

select first_name,last_name,name as city from employee full outer join public.city c on employee.city_id = c.id;

select first_name,name as city from employee cross join city c;