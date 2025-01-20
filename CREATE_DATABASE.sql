-- CREATE, INSERT, UPDATE, DELETE, RETURNING

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);

INSERT INTO account(username, password, email, created_on)
VALUES ('Dgkn', 'password', 'dgkn@gmail.com', CURRENT_TIMESTAMP);

SELECT * FROM account;

INSERT INTO job(job_name) VALUES ('Developer');

INSERT INTO account_job(user_id, job_id, hire_date) VALUES (1, 1, CURRENT_TIMESTAMP);
SELECT * FROM account_job;

UPDATE account SET last_login = CURRENT_TIMESTAMP

SELECT * FROM account

UPDATE account_job SET hire_date = account.created_on FROM account
WHERE account_job.user_id = account.user_id

UPDATE account SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login

INSERT INTO job(job_name) VALUES ('Cowboy')

DELETE FROM job WHERE job_name = 'Cowboy'
RETURNING job_id, job_name

-- ALTER - allows for change to an existing table structure
-- adding, dropping and renaming columns
-- changing a column's data type
-- set DEFAULT values for a column
-- add CHECK constraints
-- rename table

CREATE TABLE information (
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(250) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information  RENAME TO new_information

SELECT * FROM information  -- error

ALTER TABLE new_information RENAME COLUMN person TO people

ALTER TABLE new_information ALTER COLUMN people DROP NOT NULL

-- DROP
ALTER TABLE new_information DROP COLUMN people

SELECT * FROM new_information

-- CHECK constraint

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hiredate DATE CHECK (hiredate > birthdate),
	salary INTEGER CHECK (salary > 0)
)

INSERT INTO employees(first_name,last_name,birthdate,hiredate,salary)
VALUES ('dgkn', 'dg', '1998-01-01','2025-01-01','10000')

SELECT * FROM employees;





