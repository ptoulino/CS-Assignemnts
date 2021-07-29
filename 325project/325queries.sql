--Philip Toulinov
--CS 325 Fall 2019
--Last modified: 12/08/19

spool 325query-results.txt

prompt Query 1(Join on customer and grooming table))

select *
from customer,grooming_appointment
where customer.cust_num=grooming_appointment.cust_num;

prompt Query 2 (Nested query of customer last name Doner)
select *
from customer
where cust_lname in
		(select cust_lname
		 from customer
		 where cust_lname = 'Doner');

prompt Query 3(Show avg cust_payment due people with @yahoo email))

select avg(cust_payment)
from customer
where cust_email like '%@yahoo.com%';


prompt Query 4(Compound where dropoff/pickup location are both A)

select drop_off_loc,pick_up_loc,appointment_id,appointment_time
from grooming_appointment
where drop_off_loc ='A' and pick_up_loc ='A';


prompt Query 5(Shows salary in ascending  and groomer id in descending order) 
select salary,groomer_id
from groomer
order by groomer_id asc, salary desc;

prompt Query 6(Shows groomer id, price, first name and salary where price <=25 and salary<=45000)
select groomer_id,groomer_price,groomer_fname,salary
from groomer
where groomer_price <= 25 and salary <=45000
order by salary;

prompt Query 7(Shows service id,type,change and charge of those who did not change service)
select serv_id,serv_type,serv_change,serv_charge
from service
where serv_change='none'
order by serv_charge;

prompt Query 8(Shows sum of salary,max groomer price with groomers containing letter a in name)
select sum(salary),max(groomer_price)
from groomer
where groomer_fname like '%a%'
group by salary;

spool off;

