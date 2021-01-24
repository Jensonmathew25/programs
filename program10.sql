CREATE TABLE customers(ID INT,Name CHAR(20),Age INT,Address CHAR(50),Salary INT PRIMARY KEY(ID));
INSERT INTO customers VALUES(1,"Rahul",27,"Delhi",15000);
INSERT INTO customers VALUES(2,"Sachin",29,"Ahmedabad",20000);
INSERT INTO customers VALUES(3,"James",35,"Chennai",25000);
SELECT * FROM customers;
DECLARE 
  total_rows number(2);
BEGIN
  UPDATE customers
  SET Salary=Salary+5000;
  IF sql%notfound THEN
    dbms_output.put_line('no customers updated');
  ELSIF sql%found THEN
    total_rows:=sql%rowcount;
    dbms_output.put_line(total_rows||'customers updated');
  END IF;
END;
/
SELECT * FROM customers;