CREATE TABLE Employee(code CHAR(4) NOT NULL,name CHAR(10),designation CHAR(30),dob DATE,salary NUMERIC(6,2) PRIMARY KEY(code));
INSERT INTO TABLE VALUES('e1','James','Manager','1977-02-26',50000.25);
INSERT INTO TABLE VALUES('e2','John','Accountant','1978-08-17',40000.75);
SELECT * FROM Employee;
UPDATE Employee SET salary=55000.25 WHERE code='e1';
DELETE FROM Employee WHERE code='e2';


