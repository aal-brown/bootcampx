/* 
Get the total number of assistance_requests for a student.
*/

select count(*) as total_assistances, students.name
from assistance_requests
join students on student_id = students.id
where students.name = 'Elliot Dickinson'
group by students.name; /* This groups the final result, so if this isn't one of the columns in our table, it will give us an error. */