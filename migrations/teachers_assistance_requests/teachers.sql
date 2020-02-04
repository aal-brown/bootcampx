create table teachers (
  id serial primary key not null,
  name varchar(255) not null,
  start_date date,
  end_date date,
  is_active boolean default true
)