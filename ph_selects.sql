use pharma;
-- 1) Рецептурные медикаменты
select medication from warehouse_products 
union 
select medication from store_products 
where prescription=1;

-- 2) Медикаменты приобретенные конкретным человеком
select medication from sales S 
join sales_medications SM on S.id=SM.sale_id 
join store_products SP on SP.id=SM.medication_id
union
select medication from phone_sales_medications PSM
join sales S on PSM.sale_id=S.id
join warehouse_products WP on PSM.medication_id=WP.id
where S.customer_id=1;

-- 3) Медикаменты дешевле 150р 
select distinct medication from warehouse_products WP where price > 1500;

-- 4) Незавершенные заказы .
select * from sales where `status` != 'Отправлен';

-- 5) Продавцы-фармацевты
select concat(firstname, ' ', lastname) as 'Продавцы-фармацевты' 
from employees where position like 'п%';

