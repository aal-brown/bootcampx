select day, count(name) as total_assignments
from assignments
group by day
having count(name) >= 10
order by day;