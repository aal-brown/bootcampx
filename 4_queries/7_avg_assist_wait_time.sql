/* 
Calculate the average time it takes to start an assistance request.
*/

select avg(started_at - created_at) as average_wait_time
from assistance_requests;
