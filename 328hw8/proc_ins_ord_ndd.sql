spool PhilipToulinov-ck-proc-tests.txt
prompt Philip Toulinov

/*========
    procedure: proc_ins_ord_ndd: varchar2 number -> varchar2

    purpose: expects an ISBN and an order quantity, 
             and if the ISBN is not currently on-order
             and is not already in a pending order_needed,
             has the side-effect of inserting a new row into
             order_needed, 
             *   whose key is one more than the current 
                 largest key  
             *   with the given isbn and desired quantity 
             *   and with date_need_noted of the current date
             *   and with a null ord_num (since not ordered yet!)          

             and does not return anything, since it is a procedure!

   uses: functions next_ord_needed_id, is_on_order
========*/

create or replace procedure proc_ins_ord_ndd(p_isbn varchar2,
                                             p_order_qty number) as
    next_id   number;
begin

    -- is it OK to insert this order_needed row? 

    if ((not is_on_order(p_isbn)) 
        and (not pending_order_needed(p_isbn))) then
        
        -- obtain a suitable key for the new row

        next_id := next_ord_needed_id();

        -- insert the desired order_needed row with today's date for
        --     its creation date

        insert into order_needed(ord_needed_id, ttl_isbn, qty_desired, 
                                 date_need_noted)
        values
        (next_id, p_isbn, p_order_qty, sysdate);

    end if;

exception

    -- if insert failed for other reasons (such as non-existent ISBN)

    when others then
        return;
end;
/
show errors

start proc_ins_ord_ndd_test.sql

spool off
