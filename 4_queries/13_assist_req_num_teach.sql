/* 
Perform the same query as before, but include the number of assistances as well.
*/

select teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances
from assistance_requests
join teachers on teacher_id = teachers.id
join students on student_id = students.id
join cohorts on students.cohort_id = cohorts.id
group by teachers.name, cohorts.name
having cohorts.name = 'JUL02'
order by teachers.name;