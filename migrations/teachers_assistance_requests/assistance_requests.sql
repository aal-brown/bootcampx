create table assistance_requests (
  id serial primary key not null,
  assignment_id integer references assignments(id) on delete cascade,
  student_id integer references students(id) on delete cascade,
  teacher_id integer references teachers(id) on delete cascade, 
  created_at timestamp,
  started_at timestamp,
  completed_at timestamp,
  student_feedback text,
  teacher_feedback text
)