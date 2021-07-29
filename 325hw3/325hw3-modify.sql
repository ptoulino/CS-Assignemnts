/*=====
Philip Toulinov
325-HOMEWORK 3-MODIFY TABLES
last modified: 20-SEP-20
=====*/

start 325hw3-pop.sql
spool 325hw3-out.txt

prompt PHILIP TOULINOV
promp THIS SHOULD SUCCEED!FIRST NAME NOT REQUIRED**
insert into client(cli_id,cli_lname,cli_phone)
values
('66E','TOULINOV','823-7537');

prompt THIS SHOULD FAIL!CLIENT NEEDS PHONE**
insert into client(cli_id,cli_lname)
values
('1234','EFIMENKO');

prompt THIS SHOULD FAIL!VIDEO NEEDS LEGAL FORMAT**
UPDATE video
SET vid_format = 'MOO'
WHERE vid_id='11111H';

prompt THIS SHOULD SUCCEED! DEMO OF DEFAULT AND MORE**
insert into video (vid_id,vid_format,vid_rental_price)
values
('54321A','DVD','2.78');

promp THIS SHOULD FAIL! NO LEG LENGTH**

insert into video(vid_length)
values
(0);

DELETE FROM rental WHERE cli_id='555B'; 

UPDATE video
SET vid_length='01'
WHERE vid_id='55555D';

select*
from client;

select *
from video;

select *
from rental;

spool off;
