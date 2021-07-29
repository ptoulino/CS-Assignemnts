--Philip Toulinov
--CS 325-Fall 2019
--Last modified: 12-02-19

spool 325result-contents.txt
set linesize 100
col drop_off_loc format a13 tru
col cust_fname format a13 tru


prompt Displaying Customer Table

select *
from customer;


prompt Displaying Customer Email Table

select * 
from customer_email;


prompt Displaying Dog Table

select *
from dog;


prompt Displaying Grooming Appointment Table

select*
from grooming_appointment;


prompt Displaying Service Table

select *
from service;


prompt Displaying Groomer Table

select *
from groomer;


prompt Displaying Grooming Service Table

select *
from grooming_service;





spool off;
