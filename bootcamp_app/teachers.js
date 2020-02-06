const { Pool } = require('pg');

//Here we define "pool" as a new instance of Pool. Pool appears to be a constructor function or class of some sort that takes in an object as an argument.
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2] || 'JUL02';
const values = [`${cohortName}`];

const queryString = `
  select distinct teachers.name as teacher, cohorts.name as cohort
  from assistance_requests
  join teachers on teacher_id = teachers.id
  join students on student_id = students.id
  join cohorts on students.cohort_id = cohorts.id
  where cohorts.name = $1
  order by teachers.name;
  `;

pool.query(queryString, values)
  .then((res) => {
    res.rows.forEach((value) => {
      console.log(`${value.cohort}: ${value.teacher}`);
    });
  })
  .catch((err) => console.error('query error', err.stack));