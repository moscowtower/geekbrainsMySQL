use pharma;

drop function if exists total_price;
delimiter //
create function total_price(sID int) 
returns varchar(255) deterministic 
begin
	declare cID, nonphonesale, phonesale INT;
	select sum(SP.price*SM.quantity) from sales_medications SM 
    join store_products SP on SM.medication_id=SP.id 
    where sale_id=sID into nonphonesale;
    select sum(WP.price*PSM.quantity) from phone_sales_medications PSM
	join sales S on PSM.sale_id=S.id
	join warehouse_products WP on PSM.medication_id=WP.id
    where sale_id=sID into phonesale;
    select customer_id from sales where id=sID into cID;
    if cID in (select customer_id from discounts) then
	return (nonphonesale + phonesale) * (select discount from discounts where customer_id = cID);
    else 
		return nonphonesale + phonesale;
    end if;
end//
delimiter ;
select total_price(1);

drop trigger if exists auto_dispatch;
delimiter //
create trigger auto_dispatch after update on sales
for each row 
begin
	if `status`='Отправлен' then
    insert into dispatched(sale_id, customer_id)
    values (new.id, new.customer_id);
	end if;
end//

drop trigger if exists check_quantity;
delimiter //
create trigger check_quantity after update on store_products
for each row
begin
	if quantity < 10 then
    signal sqlstate '01000' set message_text = 'Количество одного или нескольких товаров ниже 10шт, требуется поставка.';
    end if;
end //
