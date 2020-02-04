/* 
Get the total number of assistance_requests for a teacher.
So under assistance requests, count the number of assistance requests for a specific teacher 
 
 /* 
Just seeing if I can do it with nested sub query
 
select count(*) as total_assistances
from assistance_requests
where teacher_id = (select id
from teachers
where teachers.name = 'Waylon Boehm'); 
*/


select count(*) as total_assistances, name
from teachers
join assistance_requests on teachers.id = teacher_id
group by teachers.name
having teachers.name = 'Waylon Boehm';


/* 
How compass solved the problem:

select teachers.name, count(assistance_requests.*) as total_assistances
from assistance_requests
join teachers on teacher_id = teachers.id
where teachers.name = 'Waylon Boehm'
group by teachers.name; 
*/



