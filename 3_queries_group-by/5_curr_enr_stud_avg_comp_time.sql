/* 
Get currently enrolled students' average assignment completion time.
So group all assignments by student and take the average of them

*/

select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
from assignment_submissions
join students on assignment_submissions.student_id = students.id
where end_date is null
group by students.name
order by avg(assignment_submissions.duration) DESC;