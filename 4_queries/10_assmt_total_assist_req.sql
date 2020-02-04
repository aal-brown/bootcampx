/* 
List each assignment with the total number of assistance requests with it.
*/

select assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.id) as total_requests
from assignments
join assistance_requests on assignments.id = assistance_requests.assignment_id
group by assignments.id
order by total_requests desc;
