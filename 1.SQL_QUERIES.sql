CREATE DATABASE college;

use college;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student VALUES(1, "AMAN", 24);
INSERT INTO student VALUES(2, "SHARAD", 22);

SELECT * FROM student;

CREATE DATABASE IF NOT EXISTS college;

DROP DATABASE company;
DROP DATABASE IF EXISTS company;

SHOW databases;

show tables;

drop table student;

create TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);
show tables;

SELECT * FROM student;

INSERT INTO student VALUES(101, "raman"),(2, "samin");
select * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(110, "jatin"),(50, "ali");

SELECT * FROM student;

INSERT INTO student
(rollno, name)
VALUES
(104, "mayank");

CREATE DATABASE XYZ;
use XYZ;
CREATE TABLE employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT);

INSERT INTO employee_info VALUES(1,"adam",25000),(2,"bob",30000),(3,"casey",40000);

SHOW TABLES;

SELECT * FROM employee_info;


CREATE TABLE temp1(
id INT,
name VARCHAR(50),
rollno INT,
city VARCHAR(50),
PRIMARY KEY (id)
);
use college;
SELECT * FROM student;

CREATE TABLE emp(
id INT,
salary INT DEFAULT 25000
);
INSERT INTO emp (id) VALUES(101);

SELECT * FROM emp;


INSERT INTO emp (id) VALUES(155);

DROP DATABASE college;

CREATE DATABASE college;
USE college;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR (50),
city VARCHAR (50)
);
SELECT * FROM student;
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student;
SELECT name,grade FROM student;
SELECT name,marks FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE marks>90;
SELECT * FROM student WHERE city="Mumbai";

SELECT * FROM student WHERE marks>85 AND city="Mumbai";

SELECT * FROM student WHERE marks+10>100;
USE college;
SHOW tables;

SELECT * 
FROM student
WHERE marks>90 OR city="Mumbai";

SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student
WHERE marks BETWEEN 70 AND 80;

SELECT *
FROM student
WHERE city IN ("Delhi","Mumbai","Moradabad");

SELECT *
FROM student
WHERE city NOT IN ("Delhi","Mumbai");

SELECT *
FROM student
LIMIT 3;

SELECT *
FROM student
WHERE marks>80
LIMIT 3;

SELECT *
FROM student
ORDER BY city ASC;

SELECT *
FROM student
ORDER BY name ASC;

SELECT *
FROM student
ORDER BY marks ASC;

SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT marks
FROM student;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT AVG(marks)
FROM student;

SELECT COUNT(rollno)
FROM student;

SELECT city, COUNT(rollno)
FROM student
GROUP BY city;

SELECT city, COUNT(name)
FROM student
GROUP BY city;

SELECT city,name, COUNT(rollno)
FROM student
GROUP BY city,name;

SELECT city, AVG(marks)
FROM student
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks);

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks) DESC;

CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO payment(customer_id, customer, mode, city)
VALUES
(101,"Olivia Barret","Netbanking","Portiland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Harnendez","Credit Card","Seattle"),
(104,"Liam Dinavom","Netbanking","Denver"),
(105,"Sophia Jannet","Credit Card","New Orleans"),
(106,"Peter Parker","Debit Card","Minneapolis"),
(107,"Criss gail","Debit Card","Phoenix"),
(108,"Tom Cruis","Netbanking","Boston"),
(109,"John Barret","Netbanking","Nashville"),
(110,"Iron Man","Credit Card","Boston");

SELECT * FROM payment;

SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;

SELECT * FROM student;
SELECT grade, COUNT(name)
FROM student
GROUP BY grade
ORDER BY grade;

SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks)>90;

SELECT city
FROM student
WHERE grade="A"
GROUP BY city;

SELECT city
FROM student
WHERE grade="A"
GROUP BY city
HAVING MAX(marks)>93;

SELECT city
FROM student
WHERE grade="A"
GROUP BY city
HAVING MAX(marks)>93
ORDER BY city DESC;

SELECT * FROM student;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade="A";

SELECT * FROM student;

UPDATE student
SET marks= 82
WHERE rollno=105;

SELECT * FROM student;

UPDATE student
SET grade= "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = marks + 2;

SELECT * FROM student;

UPDATE student
SET marks = 12
WHERE rollno=105;

SELECT * FROM student;

DELETE FROM student
WHERE marks<33;


SELECT * FROM student;
USE college;
SELECT * FROM student;


CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR (50)
);
INSERT INTO dept
VALUES
(101,"english"),
(102,"IT");
SELECT * FROM dept;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR (50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);
INSERT INTO teacher
VALUES
(101,"Adam",101),
(102,"Eve",102);
SELECT * FROM teacher;

UPDATE dept
SET id = 103
WHERE id = 102;
SELECT * FROM dept;
SELECT * FROM teacher;

UPDATE dept
SET id = 111
WHERE id = 101;
SELECT * FROM dept;
SELECT * FROM teacher;



USE college;
SELECT * FROM student;


ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 45;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student
RENAME TO stu;

ALTER TABLE stu
RENAME TO student;

TRUNCATE TABLE student;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE student
CHANGE name full_name VARCHAR(50);
SELECT * FROM student;

ALTER TABLE student
DROP COLUMN grade;

DELETE FROM student
WHERE marks<80;
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE stud(
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO stud (id, name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");
SELECT * FROM stud;

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);
INSERT INTO course (id, course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");
SELECT * FROM course;

SELECT *
FROM stud
INNER JOIN course
ON stud.id = course.id;

SELECT *
FROM stud as s
INNER JOIN course as c
ON s.id = c.id;

SELECT *
FROM stud
LEFT JOIN course
ON stud.id = course.id;

SELECT *
FROM stud
RIGHT JOIN course
ON stud.id = course.id;

# in my sql there is no command to calculate full join
# to perform full join in mysql we take left join and right join and take union of both that we get full join
SELECT *
FROM stud
LEFT JOIN course
ON stud.id = course.id
UNION
SELECT *
FROM stud
RIGHT JOIN course
ON stud.id = course.id;

# LEFT EXCLUSIV JOIN

SELECT *
FROM stud
LEFT JOIN course
ON stud.id = course.id
WHERE course.id IS NULL;

# RIGHT EXCLUSIV JOIN

SELECT *
FROM stud
RIGHT JOIN course
ON stud.id = course.id
WHERE stud.id IS NULL;


# FULL EXCLUSIVE JOIN

SELECT *
FROM stud
LEFT JOIN course
ON stud.id = course.id
WHERE course.id IS NULL
UNION
SELECT *
FROM stud
RIGHT JOIN course
ON stud.id = course.id
WHERE stud.id IS NULL;


CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT);

INSERT INTO employee VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);
SELECT * FROM employee;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;


# UNION
SELECT name FROM employee
UNION
SELECT name FROM employee;

# UNION ALL
SELECT name FROM employee
UNION ALL
SELECT name FROM employee;

# SQL Sub QUERIES
SELECT * FROM student;

SELECT AVG(marks)
FROM student;

SELECT name
FROM student
WHERE marks>74;

SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

# find name of student whose have even rollno
SELECT rollno
FROM student
WHERE rollno % 2 = 0;

SELECT rollno,name
FROM student
WHERE rollno % 2 = 0;

# find the max marks from the students of delhi using subqueries (usin from)
SELECT *
FROM student
WHERE city = "Delhi";

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;

# other method without using sub queries
SELECT MAX(marks)
FROM student
WHERE city = "Delhi";

SELECT * FROM student;

# create a table from student table as a secondary table for teachers with only essential information
# get the table teacher from student table and perform operation on it ( VIEW is a virtual table not a real table).
# this is not affect the actual database this views file is stored in the views 

CREATE VIEW view1 AS
SELECT rollno , name , marks FROM student;

SELECT * FROM view1;