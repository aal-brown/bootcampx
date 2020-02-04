/* 
Get the total duration of all assistance requests for each cohort.
*/

select cohorts.name as cohort, SUM(completed_at - started_at) as total_duration
from assistance_requests
join students on student_id = students.id
join cohorts on students.cohort_id = cohorts.id
group by cohorts.name
order by total_duration;

