/*=====
Philip Toulinov
325-HOMEWORK 5-PROBLEM 1
last modified: 4-OCT-2019
=====*/

spool 325hw5-out.txt

prompt Homework 5 Problem 1

prompt Philip Toulinov
prompt
prompt relational selection 

select *
from client
where client_credit_rtg > 3.4;


prompt pure relational projection
select distinct movie_rating,movie_yr_released
from movie;

prompt  equi-join of client and movie_category
select *
from client,movie_category
where client.client_fave_cat=movie_category.category_code;

prompt Project just the rented video IDs, date out, and date due for rentals that have not yet been returned
select vid_id,date_out,date_due
from rental
where date_returned is null;

prompt Project just the video IDs, video formats, and rental prices for videos that do not have the format Blu-Ray
select vid_id,vid_format,vid_rental_price
from video
where vid_format != 'Blu-Ray'; 

prompt 1-6

select category_name,client_lname,client_credit_rtg
from movie_category,client
where client.client_fave_cat=movie_category.category_code;
 
prompt 1-7

select *
from video
where vid_purchase_date  between '15-JUL-2008' and '1-DEC-2011';

prompt 1-8
select *
from video
where vid_rental_price >= 3.99 and vid_purchase_date >= '1-JAN-2011';

prompt 1-9

select movie_title,movie_rating
from movie
where movie_title like '%the%';

prompt 1-10
select vid_id,vid_format,vid_rental_price*.80 
from video
where vid_format != 'Blu-Ray';

prompt 1-11
select movie_rating,movie_title
from movie
where movie_rating IN('PG-13','R','A');

prompt 1-12
select avg(movie_num)as totalvideos,avg(vid_rental_price) as avgrental
from video;

