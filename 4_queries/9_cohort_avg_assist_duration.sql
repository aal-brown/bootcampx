/* 
Calculate the average total duration of assistance requests for each cohort.
*/

select avg(total_duration) as average_total_duration
from (select cohorts.name as cohort, SUM(completed_at - started_at) as total_duration
from assistance_requests
join students on student_id = students.id
join cohorts on students.cohort_id = cohorts.id
group by cohorts.name) as sub_query;