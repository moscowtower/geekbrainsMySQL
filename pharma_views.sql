use pharma;

create or replace view no_personal_info_customers(firstname, telephone, insurance, allergies, discount) as
select c.firstname, c.telephone, c.insurance, c.allergies, d.discount  from customers c
left join discounts d on c.id = d.customer_id;
select * from no_personal_info_customers;


create or replace view notify_customers(firstname, lastname, telephone, sale_id) as
select c.firstname, c.lastname, c.telephone, s.id from customers c
join sales s on s.customer_id = c.id;

select * from notify_customers;