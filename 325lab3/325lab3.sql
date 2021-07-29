start initial_parts.sql
spool 325lab3-out.txt
prompt Names: Philip Toulinov Melanie Stevenson

insert into part_orders(order_num,cust_num,part_num,order_date,quantity,
order_code,delivery_code)
values
('123456',23,10603,08-SEP-17,2,'1','1')

insert into part_orders(order_num,cust_num,part_num,order_date,quantity,
order_code,delivery_code)
values
('123456',24,10604,08-SEP-17,3,'2','2')

insert into part_orders(order_num,cust_num,part_num,order_date,quantity,
order_code,delivery_code)
values
('123456',25,10605,08-SEP-17,4,'3','3')

select *
from part_orders;

delete from initial_parts
where part_num =10603;

update initial_parts
SET part_num=10603
WHERE part_num=10602;

update part_oders
set part_num=10603
where part_num=10000;

select *
from parts;

select *
from initial_parts;

spool off
