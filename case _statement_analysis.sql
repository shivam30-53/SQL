create database employee;
use employee;

create table EMPLOYEE(
EMPLOYEEID INT primary KEY,
EMPLOYEENAME VARCHAR(100) NOT NULL,
GENDER VARCHAR(1) NOT NULL,
STATECODE VARCHAR(20) NOT NULL,
SALARY DECIMAL(10,2) NOT NULL 
);

DESCRIBE TABLE EMPLOYEE;

INSERT INTO EMPLOYEE values(211,'MANISHA','F','IN',80000.0000);
INSERT INTO EMPLOYEE values(212,'VIKAS','M','IN',5000.0000);
INSERT INTO EMPLOYEE values(201,'JEROME','M','FL',83000.0000);
INSERT INTO EMPLOYEE values(202,'RAY','M','AL',88000.0000);
INSERT INTO EMPLOYEE values(203,'STELLA','F','AL',76000.0000);
INSERT INTO EMPLOYEE values(204,'GILBERT','M','AR',42000.0000);
INSERT INTO EMPLOYEE values(205,'EDWART','M','FL',93000.0000);
INSERT INTO EMPLOYEE values(206,'ERNEST','F','AL',64000.0000);
INSERT INTO EMPLOYEE values(207,'JORGE','F','IN',75000.0000);
INSERT INTO EMPLOYEE values(208,'NICHOLAS','F','GE',71000.0000);
INSERT INTO EMPLOYEE values(209,'LAWRENCE','M','IN',95000.0000);
INSERT INTO EMPLOYEE values(210,'SALVADOR','M','CO',75000.0000);

SELECT * FROM EMPLOYEE;

SELECT * ,
CASE 
WHEN SALARY >= 10000 AND SALARY <30000 THEN "DATA ANALYSIS TRAINEE"
WHEN SALARY >= 30000 AND SALARY <50000 THEN "DATA ANALYSIS "
WHEN SALARY >= 50000 AND SALARY <80000 THEN "CONSULTANT"
WHEN SALARY >= 80000 AND SALARY <100000 THEN "SENIOR CONSULTANT"
WHEN SALARY >=100000 THEN "SENIOR FOLKS"
ELSE " CONTRACTOR "
END AS DESIGNATION 
FROM EMPLOYEE;


SELECT * ,
CASE 
    when GENDER = 'F' then SALARY ORDER BY DESC
	WHEN GRNDER = 'M' THEN SALARY ORDER BY ASC
	else "NONE"

END AS STATEMENT 
FROM EMPLOYEE;
