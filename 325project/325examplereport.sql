--Philip Toulinov
--Cs 325-Fall 2019
--Last Modified: 12/12/19

spool 325report3-results.txt
btitle '**********CUSTOMER BALANCE DUE WITH @YAHOO EMAILS**************';
btitle '**********CUSTOMER BALANCE DUE WITH @YAHOO EMAILS**************';
set pagesize 15
col name format a13 tru
col cust_dog_name format a8 tru
col cust_email format a17 tru

col name heading"Customer Name"
col cust_dog_name heading "Dog Name"
col cust_email heading "Email"
col cust_payment heading "Fees"

--the purpose of this report is to show the whoever is charged of payment
-- the balance the customer is due with email's ending with @yahoo.com
-- and ordered by customer payment.


select cust_fname||' '||cust_lname as Name, cust_dog_name,cust_email,cust_payment
from customer,dog
where customer.cust_num=dog.cust_num and cust_email like '%@yahoo.com%'
order by cust_payment;

clear breaks;
clear computes;
clear columns;
ttitle off;
btitle off;
set feedback off;


spool off;





