/* 
Get each day with the total number of assignments and the total duration of the assignments.
*/

select day, count(*) as number_of_assignments, sum(duration) as duration
from assignments
group by day
order by day;
