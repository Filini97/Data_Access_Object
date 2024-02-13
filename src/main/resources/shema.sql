create table if not exists CUSTOMERS
(
    id           serial primary key,
    mane         varchar(50) not null default ('default'),
    surname      varchar(50) not null default ('default'),
    age          int,
    phone_number int
    );

create table if not exists ORDERS
(
    id           serial primary key,
    date         date,
    customer_id  int references CUSTOMERS (id),
    product_name varchar(255),
    amount       int
    );

insert into CUSTOMERS(mane, surname, age, phone_number)
values
    ('Alexey', 'Ivanov', 26, 88002223535),
    ('Borya', 'Popov', 72, 84972501492),
    ('Alexey', 'Bro', 41, 89856512875);

insert into ORDERS(date, customer_id, product_name, amount)
values
    (2024-01-05, 1, 'Product A', 21),
    (2024-02-21, 2, 'Product B', 4),
    (2024-02-21, 2, 'Product A', 50),
    (2024-08-13, 3, 'Product C', 12);