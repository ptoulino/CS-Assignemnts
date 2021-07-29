/*=====
Philip Toulinov
325-HOMEWORK 3-ADDING DOMAIN CONSTRAINTS
last modified: 20-SEP-20
=====*/

drop table client cascade constraints; 

create table client
(cli_id     char(4),
 cli_lname  varchar2(15) NOT NULL, 
 cli_fname  varchar2(15),
 cli_phone  varchar2(12) NOT NULL,  -- could be char(8) also
 primary key (cli_id)
);

drop table video cascade constraints;

create table video
(vid_id             char(6),
 vid_format         varchar2(6) check(vid_format in('DVD','HD-DVD',
'BluRay')) NOT NULL,
 vid_purchase_date  date default sysdate,
 vid_rental_price   decimal(4, 2) check(vid_rental_price >0) NOT NULL,
 vid_length         integer check(vid_length >0),
 primary key        (vid_id)
);

drop table rental cascade constraints;

create table rental
(cli_id      char(4),
 vid_id      char(6),
 primary key (cli_id, vid_id),
 foreign key (cli_id) references client,
 foreign key (vid_id) references video
);
