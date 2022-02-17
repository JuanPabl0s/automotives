create table client(
                       client_id serial primary key,
                       first_name text not null,
                       last_name text not null,
                       phone text not null,
                       birth_day date not null,
                       address text not null,
                       legal_person boolean
);


create table car(
                    car_id serial primary key,
                    brand text not null,
                    color text not null,
                    year date not null,
                    wheels_number numeric not null,
                    hp text not null,
                    client_id integer not null,
                    foreign key (client_id) references client(client_id)
);


create table sales_person(
                             sales_person_id serial primary key,
                             first_name text,
                             last_name text,
                             hire_date date,
                             salary decimal,
                             active boolean,
                             address text,
                             fire_date date
);

create table sale (
                      sale_id serial primary key,
                      sale_fiscal_number numeric,
                      amount numeric,
                      tax numeric,
                      car_id integer not null,
                      client_id integer not null,
                      sales_person_id integer not null,
                      foreign key (car_id) references car(car_id),
                      foreign key (client_id) references client(client_id),
                      foreign key (sales_person_id) references sales_person(sales_person_id)
);


drop table sale;
drop table car;
drop table client ;
drop table sales_person;






