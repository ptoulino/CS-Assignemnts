

--get rid of cust_num
--change m to I
-- get rid of groomer_available



//Philip Toulinov
//CS 325 -Fall 2019
//LAST MODIFIED: 11/17/19


//This table is the customer table whose duty is to assign contact information for the customer.


drop table customer cascade constraints;
create table customer
(
 cust_num    varchar2(5),
 cust_fname  varchar2(30) not null,
 cust_email  varchar2(30) not null,
 cust_lname  varchar2(30) not null,
 cust_payment int,
primary key (cust_num));


//This table is the multi-value attribute of customer email
//which is referencing cust_num throught customer.


drop table customer_email cascade constraints;
create table customer_email
(
 cust_email varchar2(30),
 primary key(cust_email),
 foreign key(cust_num) references customer);


//This table is the dog table which duty is to assign the dog attributes
// and keep track of which dog belongs to which owner.


drop table dog cascade constraints;
create table dog
(
 cust_dog_id varchar2(5),
 cust_dog_name  char(10) not null,
 cust_dog_food char(30) not null,
primary key(cust_dog_name),
foreign key(cust_num) references customer);

//This table is the appointment table which allows the customer to chose specific 
//options on the appointment including time and location.

drop table grooming_appointment cascade constraints;
create table grooming_appointment
(
 appointment_id varchar2(5),
 appointment_time varchar2(10),
 drop_off_loc varchar(30) not null,
 pick_up_loc  varchar(30) not null,
 walking_loc  varchar(30) not null
 primary key(appointment_id),
 foreign key(cust_num)references customer);

//This table is the service table which allows the customer to chose specific 
//options on the service such as a specific time change allowed or specific service
//type.

drop table service cascade constraints;
create table service
(
 serv_id varchar2(5),
 serv_type varchar(30) not null,
 serv_change varchar(30) not null,
 serv_charge int not null,
 primary key(serv_id),
 foreign key(cust_num) references customer);

//This table is the groomer table which allows customer to chose specific groomer
//and access the specific price of that groomer and check availability of that 
//groomer.

drop table groomer cascade constraints;
create table groomer
(
 groomer_id varchar2(5),
 groomer_fname varchar(30) not null,
 groomer_price int not null,
 groomer_available varchar(10) not null,
 primary key(groomer_id),
 foreign key (cust_num) references customer);
 
 //Intercest table of the service and appointment table which is a many to many 
 //relation between appointment and service.
 
 drop table grooming_service cascade constraints;
 create table grooming_service 
 (
  appointment_id varchar2(5),
  serv_id varchar2(5),
  primary key(appointment_id),
  primary key(serv_id),
  foreign key(appointment_id) references appointment(appoinment_id),
  foriegn key(serv_id) references service(serv_id));
  
  
 

delete from groomer;

delete from grooming_appointment;

delete from service;

delete from dog;

delete from customer;
