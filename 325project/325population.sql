
delete from grooming_service;

delete from groomer;

delete from service;

delete from grooming_appointment;

delete from dog;

delete from customer_email;

delete from customer;


insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00000','Brian','hjasd@yahoo.com','Lockly','99');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00001','Bri','hello@yahoo.com','Adams','100');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00002','Dave','bye@yahoo.com','Curry','5');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00003','Emil','holla@yahoo.com','Doner','22');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00004','Phil','1234@yahoo.com','Heroe','25');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00005','Jack','qwerty@yahoo.com','Nicholson','20');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00006','Paul','byebye@yahoo.com','Portnoy','24');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00007','Sharon','lkj@yahoo.com','Sheryl','124');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00008','Howard','34@gmail.com','Beeker','14');

insert into customer(cust_num,cust_fname,cust_email,cust_lname,cust_payment)
values('00009','Jim','12@gmail.com','Finer','23');





insert into customer_email(cust_num,cust_email)
values('00000','hjasd@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00001','hello@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00002','bye@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00003','holla@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00004','1234@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00005','qwerty@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00006','byebye@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00007','lkj@yahoo.com');

insert into customer_email(cust_num,cust_email)
values('00008','34@gmail.com');

insert into customer_email(cust_num,cust_email)
values('00009','12@gmail.com');





insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00000','ABCD','Nifa','Apples');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00001','A123','Jack','Chicken');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00002','B123','Blue','Cheetos');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00003','C123','Jamie','Chorrizo');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00004','D123','Henry','Chicken');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00005','E123','Louise','Chicken');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00006','F123','James','Steak');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00007','G123','Joe','Apples');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00008','H123','Anabel','Blueberry');

insert into dog(cust_num,cust_dog_id,cust_dog_name,cust_dog_food)
values('00009','I123','Suddy','Oreo');






insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00000','0123','06:00 PM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00001','0234','05:00 PM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00002','0345','04:00 PM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00003','0456','03:00 PM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00004','0567','02:00 PM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00005','0678','01:00 PM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00006','0789','11:00 AM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00007','0891','80:00 AM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00008','0912','90:00 AM','A','A','C');

insert into grooming_appointment(cust_num,appointment_id,appointment_time,
drop_off_loc,pick_up_loc,walking_loc)
values('00009','0011','10:00 AM','A','A','C');






insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00000','000','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00001','001','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00002','002','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00003','003','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00004','004','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00005','005','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00006','006','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00007','007','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00008','008','wash','walk','1.00');

insert into service(cust_num,serv_id,serv_type,serv_change,serv_charge)
values('00009','009','wash','walk','2.00');






insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00000','G0','Blair','20.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00001','G1','Chris','25.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00002','G2','Jamie','50.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00003','G3','Jack','40.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00004','G4','Cody','50.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00005','G5','Jackie','23.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00006','G6','Jones','22.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00007','G7','Kyle','30.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00008','G8','Patty','60.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00009','G9','Mack','55.00');

insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
values('00000','







insert into grooming_service(cust_num,appointment_id,serv_id)
values('00000','0123','000');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00001','0234','001');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00002','0345','002');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00003','0456','003');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00004','0567','004');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00005','0678','005');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00006','0789','006');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00007','0891','007');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00008','0912','008');

insert into grooming_service(cust_num,appointment_id,serv_id)
values('00009','0011','009');





--insert into groomer(cust_num,groomer_id,groomer_fname,groomer_price)
--values('00000','123','philip','2.00');


--insert into grooming_service(cust_num,appointment_id,serv_id)
--values('00000','01','00');






