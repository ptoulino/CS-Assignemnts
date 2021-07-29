/*=====
Philip Toulinov
325-HOMEWORK 3-POPULATE TABLES
last modified: 20-SEP-20
=====*/

/*========
    in case this is re-run (to get a "fresh" set of initial
    contents), delete any current contents
========*/

delete from rental;
delete from video;
delete from client;


-- inserting initial client rows

insert into client
values
('000A', 'Alpha', 'Ann', '000-0001');

insert into client
values
('111B', 'Beta', 'Bob', '111-1112');

insert into client
values
('222B', 'Beta', 'Ann', '222-2223');

insert into client
values
('333C', 'Carlos', 'David', '333-3334');

insert into client
values
('444D', 'Delta', 'Edie', '111-1112');

-- inserting initial video rows

insert into video
values
('00000D', 'DVD', '10-Jan-2018', 1.99, 73); 

insert into video
values
('11111H', 'HD-DVD', '20-Feb-2019', 4.99, 91); 

insert into video
values
('22222B', 'BluRay', '30-Mar-2017', 1.99, 105); 

insert into video
values
('33333H', 'HD-DVD', '20-Feb-2019', 3.99, 69); 

insert into video
values
('44444B', 'BluRay', '04-Apr-2015', 0.99, 91); 

-- inserting initial rental rows

insert into rental
values
('111B', '11111H');

insert into rental
values
('222B', '00000D');

insert into rental
values
('222B', '22222B');

insert into rental
values
('333C', '22222B');

insert into rental
values
('333C', '00000D');

insert into rental
values
('333C', '11111H');

insert into rental
values
('000A', '44444B');


insert into client
values
('555B', 'Brown', 'Charlie', '555-5555');

insert into video
values
('55555D', 'HD-DVD', sysdate, 2.99, 75);

insert into rental
values
('555B', '55555D');

select *
from client;

select *
from video;

select *
from rental;
