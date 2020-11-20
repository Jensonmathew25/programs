CREATE TABLE employeedetails(id INT NOT NULL,name CHAR(20),dep VARCHAR(20) PRIMARY KEY(id));
CREATE TABLE employee(empid INT NOT NULL,age INT,salary NUMERIC(6,2) FOREIGN KEY(empid) REFERENCES parent(id));
INSERT INTO employeedetails VALUES(1,'simon','manager');
INSERT INTO employeedetails VALUES(5,'sanju','accountant');
INSERT INTO employee VALUES(1,38,50000.25);
INSERT INTO employee VALUES(4,55,35000.75);
SELECT * FROM employee WHERE empid IN employeedetails;
SELECT * FROM employee WHERE empid NOT IN employeedetails;

