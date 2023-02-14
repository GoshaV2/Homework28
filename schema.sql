drop table if exists employee;
create table if not exists employee
(
    id         bigserial   not null primary key,
    first_name varchar(50) not null,
    last_name  varchar(50) not null,
    gender     varchar(6)  not null,
    age        int         not null
);

insert into employee (first_name, last_name, gender, age)
values ('Тимур', 'Михайлов', 'муж', 43);

insert into employee (first_name, last_name, gender, age)
values ('Маша', 'Михалкова', 'жен', 42);

insert into employee (first_name, last_name, gender, age)
values ('Даша', 'Фамилия', 'же', 23);

insert into employee (first_name, last_name, gender, age)
values ('Дмитрий', 'Нагиев', 'муж', 19);

insert into employee (first_name, last_name, gender, age)
values ('Георгий', 'Тиунов', 'муж', 33);

select first_name, last_name
from employee;

select *
from employee
where age between 30 and 50;

select *
from employee
order by last_name DESC;

update employee
set first_name='Дмитрий'
where id = 1;

update employee
set first_name='Даша'
where id = 2;

select first_name, sum(age)
from employee
group by first_name;

select *
from employee
where age = (select min(age) from employee);

select first_name, max(age) as age
from employee
group by first_name
order by age;
