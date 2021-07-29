--Philip Toulinov
--Cs 325-Fall 2019
--Last Modified: 12/12/19


spool 325report2-results.txt
ttitle '******************DAILY TASK REPORT********************';
btitle '*****************END OF TASK REPORT********************';
set pagesize 18
col cust_fname format a14 tru
col cust_dog_name format a9 tru
col serv_type format a9 tru

col cust_fname heading "Customer name"
col cust_dog_name heading "Dog name"
col serv_type heading "Service"

--the purpose of this reoport would be to show the customers
--what service they have signed up for as well as their dog's name.

select distinct cust_fname,cust_dog_name,serv_type
from customer,service,dog
where customer.cust_num=dog.cust_num and serv_type='wash'
order by cust_fname;

ttitle off;
btitle off;

spool off;
