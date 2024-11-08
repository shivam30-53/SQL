SHOW DATABASES;
USE SAKILA;
SELECT * FROM CITY;
SELECT * FROM COUNTRY;

#INNER JOIN
SELECT city.city_id, city.country_id,country.last_update from city
INNER JOIN country
on city.country_id = country.country_id;

#left join 
SELECT city.city_id, country.country_id,
city.last_update, country.last_update from city
LEFT JOIN country
on city.country_id = country.country_id;

#RIGHT JOIN 
SELECT city.city_id,country.country_id,city.last_update,
country.last_update from city
RIGHT JOIN country
on city.country_id = country.country_id;

SHOW DATABASES;
CREATE DATABASE CUSTOMER;
USE CUSTOMER;
CREATE TABLE IF NOT EXISTS CUSTOMER(
customer_id int auto_increment,
first_name varchar(30),
primary key(customer_id)
);

INSERT INTO CUSTOMER value
(1 , 'JOHN'),
(2, 'ROBERT'),
(3,'DAVID'),
(4,'JOHN'),
(5, 'BETTY');

CREATE TABLE IF NOT EXISTS orders(
order_id int auto_increment,
amount varchar(30),
customer_id varchar(30),
primary key(order_id)
);

INSERT INTO orders value
(1 , 200 , 10),
(2, 500 , 3),
(3, 300 , 6),
(4, 800 , 5),
(5, 150 , 8);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

#INNER JOIN
SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER.FIRST_NAME,ORDERS.AMOUNT from CUSTOMER
INNER JOIN ORDERS
on  CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID

#left join 
SELECT CUSTOMER.CUSTOMER_ID, CUSTOMER.FIRST_NAME,ORDERS.AMOUNT from CUSTOMER
LEFT JOIN ORDERS
on CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;

#RIGHT JOIN 
SELECT ORDERS.CUSTOMER_ID, CUSTOMER.FIRST_NAME,ORDERS.AMOUNT from CUSTOMER
RIGHT JOIN  ORDERS
on CUSTOMER.CUSTOMER_ID = ORDERS.CUSTOMER_ID;

SHOW DATABASES;
CREATE DATABASE STUDENT;
USE STUDENT;
#THREE TABLE JOIN 
create table STUDENT(
STUDENT_ID varchar(30),
FIRST_NAME varchar(30),
LAST_NAME varchar(30)
);
INSERT INTO STUDENT VALUES (1,'SHREYA','BAIN');
INSERT INTO STUDENT VALUES (2,'RAINA','FOSTER');
INSERT INTO STUDENT VALUES (3,'YOSEF','NAYLOR');

create table STUDENT_COURSE(
STUDENT_ID varchar(30),
COURSE_ID varchar(30));
INSERT INTO STUDENT_COURSE VALUES (1,2);
INSERT INTO STUDENT_COURSE VALUES (1,3);
INSERT INTO STUDENT_COURSE VALUES (2,1);
INSERT INTO STUDENT_COURSE VALUES (2,2);
INSERT INTO STUDENT_COURSE VALUES (2,3);
INSERT INTO STUDENT_COURSE VALUES (3,1);


create table COURSE(
STUDENT_ID varchar(30),
COURSE_NAME varchar(30),
TEACHER_ID varchar(30));

INSERT INTO COURSE VALUES (1,'DATABASE DESIGN',1);
INSERT INTO COURSE VALUES (2,'ENGLISH LIT',2);
INSERT INTO COURSE VALUES (3,'PYTHON',3);

SELECT * FROM COURSE;

#INNER JOIN 1 AND 2
SELECT STUDENT.STUDENT_ID, STUDENT.FIRST_NAME,STUDENT.LAST_NAME,STUDENT_COURSE.COURSE_ID from STUDENT
INNER JOIN STUDENT_COURSE
on STUDENT.STUDENT_ID = STUDENT_COURSE.STUDENT_ID;

#INNER JOIN 2 AND 3
SELECT STUDENT_COURSE.STUDENT_ID,STUDENT_COURSE.COURSE_ID,COURSE.COURSE_NAME,COURSE.TEACHER_ID from STUDENT_COURSE
INNER JOIN COURSE
on STUDENT_COURSE.STUDENT_ID = COURSE.STUDENT_ID;

#three table join
SELECT STUDENT.STUDENT_ID,STUDENT.FIRST_NAME,STUDENT.LAST_NAME,COURSE.COURSE_NAME 
FROM STUDENT
JOIN STUDENT_COURSE
ON STUDENT.STUDENT_ID = STUDENT_COURSE.STUDENT_ID
JOIN COURSE
ON COURSE.STUDENT_ID = STUDENT_COURSE.STUDENT_ID;


CREATE TABLE CUSTOMER12(
  ID INT NOT NULL,
  NAME VARCHAR (20) NOT NULL,
  AGE INT NOT NULL,
  ADDRESS CHAR (25),
  SALARY DECIMAL (18,2),
  PRIMARY KEY (ID)
);

INSERT INTO CUSTOMER12 VALUES
(1,'RAMESH',32,'AHMEDABAD',2000.00),
(2,'KHILAN',25,'DELHI',1500.00),
(3,'KAUSHIK',23,'KOTA',2000.00),
(4,'CHAITALI',25,'MUMBAI',6500.00),
(5,'HARDIK',27,'BHOPAL',8500.00),
(6,'KOMAL',22,'HYDERABAD',4500.00),
(7,'MUFFY',24,'INDORE',10000.00);

SELECT A.ID , B.NAME AS EARNS_HIGHER, A.NAME
AS EARNS_LESS, A.SALARY AS LOWER_SALARY
FROM CUSTOMER12 A , CUSTOMER12 B 
WHERE A.SALARY < B.SALARY;

SELECT A.ID , B.NAME AS EARNS_HIGHER, A.NAME
AS EARNS_LESS, A.SALARY AS LOWER_SALARY
FROM CUSTOMER12 A , CUSTOMER12 B 
WHERE A.SALARY < B.SALARY;

SELECT A.ID , B.NAME AS EARNS_HIGHER, A.NAME
AS EARNS_LESS, A.SALARY AS LOWER_SALARY
FROM CUSTOMER12 A , CUSTOMER12 B 
WHERE A.SALARY < B.SALARY
order by A.SALARY;


















