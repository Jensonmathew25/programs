CREATE TABLE Sailors(sid INT,sname CHAR(20),rating INT,age INT PRIMARY KEY(sid));
INSERT INTO Sailors(1001,'James',8,52);
INSERT INTO Sailors(1002,'Ramesh',9,46);
INSERT INTO Sailors(1003,'Bob',7,35);
CREATE TABLE Boats(bid INT,bname CHAR(20),color CHAR(10) PRIMARY KEY(bid));
INSERT INTO Boats(101,'Elizabeth','red');
INSERT INTO Boats(102,'Titanic','black');
INSERT INTO Boats(103,'Striker','white');
CREATE TABLE Reserves(sid INT,bid INT,day(date) DATE);
INSERT INTO Reserves(1001,101,'2012-07-11');
INSERT INTO Reserves(1002,102,'2012-07-11');
INSERT INTO Reserves(1003,103,'2015-05-29);
SELECT a.sid,a.sname,a.rating,a.age FROM Sailors AS a INNER JOIN reserves AS c ON a.sid=c.sid AND c.bid=101;
SELECT b.bname FROM Reserves AS c INNER JOIN Sailors AS a  ON a.sid=c.sid AND a.sname='bob' INNER JOIN Boats AS b ON b.bid=c.bid;
SELECT a.sname FROM Sailors AS a INNER JOIN Reserves AS c ON a.sid=c.sid INNER JOIN Boats AS b ON b.bid=c.bid AND b.color='red' ORDER BY a.age;
SELECT DISTINCT a.sname FROM Sailors AS a INNER JOIN reserves AS c ON a.sid IN(c.sid);
SELECT a.sid,a.sname FROM Reserves AS c INNER JOIN Reserves AS d ON c.sid<>d.sid AND c.day=d.day INNER JOIN Sailors AS a ON d.sid=a.sid; 







