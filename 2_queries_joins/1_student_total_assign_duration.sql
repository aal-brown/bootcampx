/* 
we want a final table with the studen name and the total assignment duration. So we will only want an inner join, where student Id matches and where  */

select SUM(assignment_submissions.duration) as total_duration
from students
join assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';