/*=====
Philip Toulinov
325-HOMEWORK 6-PROBLEM 2
last modified: 18-OCT-2019
=====*/
spool 325hw6-out.txt
prompt PHILIP TOULINOV

prompt
prompt 2-1
prompt

select avg(vid_rental_price)
from video;

prompt
prompt 2-2
prompt

select vid_id,vid_format
from video
where vid_rental_price <(select avg(vid_rental_price)
			from video);
prompt
prompt 2-3
prompt

select client_lname,client_fname
from client
where client_num in
	     (select client_num
	      from rental
	      where vid_id='130012');
prompt
prompt 2-4
prompt

select movie_title || ': ' || movie_rating "Movie : Rating"
from movie;

prompt
prompt 2-5
prompt

select movie_title ||':('||movie_yr_released||')'"Movies",movie_director_lname "Director"
from movie;

prompt 2-6
prompt
select client_lname,client_fname,date_due
from client,rental
where client.client_num=rental.client_num and (rental.vid_id='130012');

prompt 2-7
prompt

select client_lname,client_fname,client_phone,client_credit_rtg
from client
where exists
	( select 'a'
	  from rental
	  where rental.client_num=client.client_num
	  and date_returned is null);
prompt
prompt 2-8
prompt

select movie_title
from movie
where not exists
	(select 'a'
	 from video
	 where video.movie_num=movie.movie_num
	 and vid_format ='Blu-Ray');

spool off;
