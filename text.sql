/* SELECT *
FROM staff; */

/* SELECT staffno, fname, lname, salary
FROM staff; */

/*  SELECT propertyno
 FROM viewing; */

/*  SELECT staffno, fname, lname, salary/12
FROM staff;  */

/* SELECT fname, salary
FROM staff
WHERE salary > 10000; */
/* 

SELECT *
FROM branch
WHERE city = 'London' OR city = 'Glasgow'; */

/*  SELECT fname, salary
FROM staff
WHERE salary BETWEEN 20000 AND 30000 ; */

/* SELECT *
FROM staff
WHERE position = 'Manager' OR position = 'Supervisor';  */

/* 

SELECT *
FROM privateowner
WHERE address LIKE'%Glasgow%' ; */

/* SELECT salary FROM staff
ORDER BY salary DESC; */


/* ### Request 1.1:
We need a list of all our property postcodes for a mailing campaign. */
/*  SELECT postcode
 FROM propertyforrent; */

/* SELECT *
FROM viewing; */

/* SELECT *
FROM propertyforrent
WHERE postcode LIKE'%BS1%' ; 
 */

/*  SELECT *
FROM privateowner
WHERE ownerno = 'PO4756' ; */


/* 
SELECT *
FROM registration
WHERE branchno = 'B052' AND datejoined > '2013-09-28'; */

/* SELECT *
FROM viewing 
ORDER BY viewdate DESC 
LIMIT 1; */



/* 
SELECT Count(*) AS myCount
FROM propertyforrent
WHERE rent > 350; */

/* SELECT Count(DISTINCT propertyno) as myCount
FROM viewing
WHERE viewdate BETWEEN '1-May-2013' AND '31-May-13'; */

/* SELECT SUM(salary)
from staff
WHERE position = 'Manager';

SELECT AVG(salary)
FROM staff;

SELECT MIN(salary)
FROM staff;

SELECT MAX(salary)
FROM staff;

 */

/* SELECT branchno,
       COUNT(staffno) AS myCount,
       SUM(salary) AS mySum
FROM staff
GROUP BY branchno; */

/* SELECT branchno,
       COUNT(staffno) AS myCount,
       SUM(salary) AS mySum
FROM staff
GROUP BY branchno
HAVING COUNT(staffno) > 1;
 */

/* SELECT *
FROM staff
JOIN branch ON staff.branchno = branch.branchno
WHERE branch.street = '163 Main St'; */

 /* SELECT staffno,
       fname,
       salary,
       ROUND(salary - (SELECT AVG(salary) FROM staff), 2) AS salary_difference
FROM staff
WHERE salary > (
   SELECT AVG(salary)
    FROM staff
); */



/* SELECT staff.fname, staff.lname, propertyforrent.*
FROM staff
JOIN propertyforrent ON staff.staffno = propertyforrent.staffno
JOIN branch on propertyforrent.branchno = branch.branchno
WHERE branch.street = '163 Main St'; */


/* .open makefile.sqlite

 CREATE TABLE contact (
    contact_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL CHECK (email LIKE '%@%'),
    phone TEXT NOT NULL CHECK (length(phone) >= 10)
);


INSERT INTO contact (contact_id, first_name, last_name, email, phone)
VALUES 
    (1, 'Muumbe', 'Hapenga', 'mhapenga01@example.com', '1234567890'),
    (2, 'Jane', 'Doe', 'jane.doe@example.com', '2345678901'),
    (3, 'John', 'Smith', 'john.smith@example.com', '3456789012'),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '4567890123'),
    (5, 'Michael', 'Johnson', 'michael.johnson@example.com', '5678901234'),
    (6, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '6789012345'),
    (7, 'David', 'Wilson', 'david.wilson@example.com', '7890123456'),
    (8, 'Laura', 'Moore', 'laura.moore@example.com', '8901234567'),
    (9, 'James', 'Anderson', 'james.anderson@example.com', '9012345678'),
    (10, 'Sophia', 'Martin', 'sophia.martin@example.com', '0123456789'),
    (11, 'Daniel', 'Clark', 'daniel.clark@example.com', '1234567891'),
    (12, 'Olivia', 'Thomas', 'olivia.thomas@example.com', '2345678902'),
    (13, 'William', 'Harris', 'william.harris@example.com', '3456789013'),
    (14, 'Chloe', 'Walker', 'chloe.walker@example.com', '4567890124'),
    (15, 'Lucas', 'Lewis', 'lucas.lewis@example.com', '5678901235'),
    (16, 'Ella', 'Young', 'ella.young@example.com', '6789012346'),
    (17, 'Henry', 'King', 'henry.king@example.com', '7890123457'),
    (18, 'Liam', 'Scott', 'liam.scott@example.com', '8901234568'),
    (19, 'Amelia', 'Green', 'amelia.green@example.com', '9012345679'),
    (20, 'Noah', 'Hall', 'noah.hall@example.com', '0123456781');
 */

 .open voterdata.sqlite

SELECT c


