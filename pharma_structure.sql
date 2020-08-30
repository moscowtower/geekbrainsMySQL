drop database if exists pharma;
create database pharma;
use pharma;

drop table if exists warehouses;
create table warehouses (
	id serial,
    `name` varchar(255),
    created_at datetime default now(),
    updated_at datetime on update now()
) comment 'Склады';

drop table if exists warehouse_products;
create table warehouse_products (
	id serial,
    warehouse_id bigint unsigned not null,
    medication varchar(50),
    manufacturer varchar(100),
    quantity bigint unsigned,
    price bigint unsigned,
    prescription boolean default 0,
    received_at datetime default now(),
    
    foreign key (warehouse_id) references warehouses(id)
) comment 'Медикаменты на складах';

drop table if exists stores;
create table stores (
	id serial,
    `name` varchar(255),
    location text,
    created_at datetime default now(),
    updated_at datetime on update now()
    );
    
drop table if exists store_products;
create table store_products ( 
	id serial,
    store_id bigint unsigned not null,
    medication varchar(50),
    manufacturer varchar(100),
    quantity bigint unsigned,
    price bigint unsigned,
    prescription boolean default 0,
    received_at datetime default now(),
    
    foreign key (store_id) references stores(id)
) comment 'Медикаменты в магазинах';
    
drop table if exists employees;
create table employees (
	id bigint unsigned not null auto_increment primary key,
    firstname varchar(50),
    lastname varchar(50),
    position varchar(50),
    store_id bigint unsigned not null,
    email varchar(120) unique,
    phone bigint unsigned unique,
    
    foreign key (store_id) references stores(id)
) comment 'Сотрудники';

drop table if exists customers;
create table customers (
	id serial,
	firstname varchar(255),
    lastname varchar(255),
    age tinyint unsigned,
    telephone bigint unique,
    insurance text,
    address text,
    allergies text
) comment 'Клиенты';

drop table if exists calls;
create table calls (
	id serial,
    telephone_number bigint,
    `date` datetime,
    duration time,
    recording blob,
    agent_id bigint unsigned not null,
    customer_id bigint unsigned not null,
    
    foreign key (agent_id) references employees(id),
    foreign key (customer_id) references customers(id)
) comment 'Звонки';

drop table if exists sales;
create table sales (
	id serial,
    customer_id bigint unsigned not null,
    agent_id bigint unsigned not null,
    `status` text,
    created_at datetime default now(),
    updated_at datetime on update now(),
    
    foreign key (customer_id) references customers(id),
    foreign key (agent_id) references employees(id)
) comment 'Продажи';
    
drop table if exists sales_medications;
create table sales_medications (
	id serial,
    sale_id bigint unsigned not null,
    medication_id bigint unsigned not null,
    created_at datetime default now(),
    updated_at datetime on update now(),
    
    foreign key (sale_id) references sales(id),
    foreign key (medication_id) references store_products(id)
) comment 'Составы заказов';

drop table if exists discounts;
create table discounts (
	id serial,
    customer_id bigint unsigned not null,
    discount float not null, /* unsigned float запрещен так как будет удален из mysql в будущем, довольствуемся тем что есть */
    valid_from datetime default now(),
    invalid_after datetime,
    created_at datetime default now(),
    updated_at datetime on update now(),
    
    foreign key (customer_id) references customers(id)
) comment 'Скидки';

drop table if exists dispatched;
create table dispatched (
	id serial,
    sale_id bigint unsigned not null,
    customer_id bigint unsigned not null,
    warehouse_id bigint unsigned not null,
    
    foreign key (sale_id) references sales(id),
    foreign key (customer_id) references customers(id),
    foreign key (warehouse_id) references warehouses(id)
    ) comment 'Отправленные заказы';