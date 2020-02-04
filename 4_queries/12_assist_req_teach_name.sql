/* 
Get the name of all teachers that performed an assistance request during a cohort.
Use a specific cohort, and don't repeat the teacher name, so use distinct
*/

select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests
join teachers on teacher_id = teachers.id
join students on student_id = students.id
join cohorts on students.cohort_id = cohorts.id
where cohorts.name = 'JUL02'
order by teachers.name;