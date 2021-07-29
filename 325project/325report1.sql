--Philip Toulinov
--Cs 325-Fall 2019
--Last Modified: 12/12/19

spool 325report1-results.txt
ttitle '***PICK-UP/DROP-OFF INFORMATION FOR SECTION B***';
btitle '********* END OF B SECTION INFORMATION**********'

col appointment_id format a14
col appointment_time format a16
col drop_off_loc format a12
col pick_up_loc format a12
col appointment_time format a9
col drop_off_loc heading "Drop Off"
col pick_up_loc heading "Pick Up"
col appointment_id heading "Appointment #"
col appointment_time heading "Time"

break on drop_off_loc

--the purpose of this report if so that customer's and worker's are able
--to see the drop off and pick up location if they were dropping their
--dog off a location B and planned to pick them up at location A

select drop_off_loc,pick_up_loc,appointment_id,appointment_time
from grooming_appointment
where drop_off_loc ='B' and pick_up_loc ='A'
order by appointment_id desc;

clear breaks;
clear computes;
clear columns;
ttitle off;
btitle off;
set feedback off;

spool off;
 

