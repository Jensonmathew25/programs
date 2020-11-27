CREATE TABLE Department(Code INT,Title CHAr(20),Dept_name VARCHAR(20) UNIQUE,Dept_id INT,Salary INT CHECK(Salary>2000) PRIMARY KEY(Code));
INSERT INTO Department VALUES(10,'Supervisor','Civil',101,20000);
INSERT INTO Department VALUES(20,'Engineer','Mechanical',105,30000);
CREATE TABLE Instructor(Name CHAR(20) NOT NULL,Code INT,Id INT DEFAULT 5);
INSERT INTO Instructor VALUES('Johnson',30,10);
INSERT INTO Instructor VALUES('Rahul',50);

