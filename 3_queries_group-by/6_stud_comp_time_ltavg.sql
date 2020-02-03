/* 
Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.
*/

select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration,
avg(assignments.duration) as average_assignment_duration
from assignment_submissions
join students on assignment_submissions.student_id = students.id
join assignments on assignment_submissions.assignment_id = assignments.id
where students.end_date is null
group by students.name
having avg(assignment_submissions.duration) < avg(assignments.duration)
order by avg(assignment_submissions.duration);