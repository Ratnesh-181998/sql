Create database mysql_class;

use mysql_class;

create table student_table(
student_id INT,
student_name VARCHAR(100),
course_name VARCHAR(50)
);
alter table student_table add email varchar(100);

show tables;

describe student_table;

-- insert data

INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(1, 'John',"SQL", 'John11@gmail.com');

-- How to insert data into only few columns:

INSERT INTO student_table(student_id,student_name,email)
VALUES(1, 'John','John11@gmail.com');

-- How to insert multiple values in one Go:

INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES(2, 'Jane',"SQL", 'Jane22@gmail.com'),
    (3, 'Michael',"SQL", 'Michael33@gmail.com');


-- DQl(Select)

select student_id from student_table;

select student_id,student_name from student_table;

select student_id,student_name,course_name,email from student_table;

select * from student_table;

-- update

UPDATE student_table SET student_id = student_id * 2 WHERE email ='Jane22@gmail.com';

-- if using safe mode
SET SQL_SAFE_UPDATES = 0;

select * from student_table;


-- delete 
DELETE FROM student_table WHERE student_id =4;

select * from student_table;

DELETE FROM student_table;

truncate table student_table;

-- Datatype Mismatch:
INSERT INTO student_table(student_id,student_name,course_name,email)
VALUES('a', 'Shailja',"SQL",'Shailja11@gmail.com');


-- DML USING CONTRAINTS

-- Creating Table without NULL:

CREATE TABLE employee (
firstname varchar(20) NOT NULL,
middlename varchar(20),
lastname varchar(20) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL,
location varchar(20)
);

describe employee;

INSERT INTO employee(middlename, lastname, age, salary, location) VALUES ('Kumar','Sinha',29,10000,'bangalore');

-- Default Values:

alter table employee modify column location varchar(20) DEFAULT 'BANGLORE';

INSERT INTO employee(firstname, lastname, age, salary, location) VALUES ('satish','kumar',29,10000,'hyderabad');
select * from employee;

INSERT INTO employee(firstname, lastname, age, salary) VALUES ('rajesh','kumar',29,10000);
select * from employee;

-- Combination of NOT NOT and DEFAULT

alter table employee modify column location varchar(20) NOT NULL DEFAULT 'BANGLORE';

INSERT INTO employee(firstname, lastname, age, salary) VALUES ('Shailja','Mishra',10,10000);

-- https://www.youtube.com/watch?v=rB382wSHuTg&ab_channel=GreatLearning

