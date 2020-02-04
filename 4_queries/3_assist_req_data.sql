/* 
Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
*/


select teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) as duration
from assistance_requests
join teachers on teacher_id = teachers.id
join students on student_id = students.id
join assignments on assignment_id = assignments.id
order by duration;