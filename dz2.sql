use DZ2;
-- serial = bigINT not nill ai unique
create table sales(
	id serial primary key,		
    order_date date not null,
    count_product int
    );
INSERT INTO sales(order_date, count_product)
VALUES
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);
-- select * from sales;

select id,
	case 
		when count_product < 100 then 'маленький заказ'
		when count_product between 100 and 300 then 'средний заказ'
		when count_product > 300 then 'большой заказ'
		else 'не определено'
	end as 'тип заказа'
from sales;

create table orders(
	id serial primary key,		
    employee_id varchar(50) not null,
    amount double,
    order_status varchar(50) not null
    );
INSERT INTO orders(employee_id, amount, order_status)
VALUES
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED");
-- select * from orders;
select id, employee_id, amount,
	case 
		when order_status = "OPEN" then 'Order is in open state'
		when order_status = "CLOSED" then 'Order is closed'
		when order_status = "CANCELLED" then 'Order is cancelled'
	
	end as 'full_order_status'
from orders;
