Create Schema SQL_Basics_Practice;
use SQL_Basics_Practice;

 
Create Table STUDENT (
StdID integer Primary Key,
StdName VARCHAR (30) NOT NULL,
Gender VARCHAR(6),
Percentage integer,
SClass integer,
Sec VARCHAR(10),
Stream VARCHAR(10) ,
DOB Date ,
check(Gender in ('Male', 'Female')),
check(Stream in ('Science', 'Commerce'))
);

Desc student;

ALTER TABLE STUDENT ADD Column TeacherID  VARCHAR(20);

INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(1001,'AKSHRA AGARWAL','Female',70,11,'A','Science','1996-11-10');

INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1002,'ANJANI SHARMA','Female',89,12,'B','Commerce','1996-09-18');
INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1003,'ANSHUL SAXENA','Male',98,11,'C','Commerce','1996-11-01');

INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1004,'AISHWARYA SINGH','Female',49,12,'D','Commerce','1996-09-20');

INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1005,'AKRITI SAXENA','Female',67,12,'A','Commerce','2003-09-14');

INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(1006,'KHUSHI AGARWAL','Female',78,11,'E','Commerce','1997-04-21');

INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1007,
'MAAHI AGARWAL',
'Female',
'79',
'12',
'B',
'Science',
'1997-11-26');
INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1008,'MITALI GUPTA','Female',78,11,'A','Science','1997-07-12');
INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1009,'NIKUNJ AGARWAL','Male',58,12,'C','Commerce','1997-12-20');
INSERT INTO STUDENT
  (StdID,StdName,Gender,Percentage,SClass,Sec,Stream,DOB)
VALUES(
1010,'PARKHI','Female',59,12,'D','Commerce','1996-11-19');


select * from sql_basics_practice.student;


select StdName,DOB from sql_basics_practice.student;

select * from sql_basics_practice.student where Percentage >=80;

select StdName,Stream,Percentage from sql_basics_practice.student where Percentage >80;

select * from sql_basics_practice.student where Percentage > 75 and Stream = 'Science' ;


Desc student;

ALTER TABLE STUDENT ADD Column TeacherID  VARCHAR(20);

select COLUMN_NAME,DATA_TYPE,COLUMN_TYPE from INFORMATION_SCHEMA.columns where table_name = 'student';

select * from student;

ALTER TABLE STUDENT MODIFY Column TeacherID  integer;

desc student;

ALTER TABLE STUDENT drop Column TeacherID;

desc student;

select * from student;

select stdName,(Percentage -5) from sql_basics_practice.student ;

select stdName as "Student Name", DOB as "Date of Birth" from sql_basics_practice.student ;

select stdName as "Student Name", stream from student where Stream !='Science';

select stdName,Percentage  from sql_basics_practice.student where percentage between 60 and 80 ;

select * from student where stdid =1004;
update student set stdName ='SWATI VERMA' , percentage ='86' where stdID=1004;
select * from student where stdid =1006;
delete  from student where stdid =1006;


SELECT * FROM Student WHERE StdName LIKE 'G_' ;
SELECT * FROM Student WHERE StdName='G';
SELECT * FROM Student WHERE StdName LIKE '%G%' ;
SELECT * where Student WHERE StdName='%G%' ;


select  stream FROM Student group by stream;
SELECT StdName, Gender, Stream FROM Student WHERE percentage BETWEEN 70 AND 80;

Drop Table Empl;
Create Table Empl (
empno integer primary key not null ,
ename varchar (50),
job varchar(20),
mgr varchar(10) NULL ,
hiredate date ,
sal float ,
comm varchar(10) NULL ,
deptno integer);

select * from Empl;

insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8369,'SMITH','CLERK',8902,'1990-12-18',800.00,NULL,20);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8499,'ANYA','SALESMAN',8698,'1991-02-20',1600.00,300,30);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8521,'SETH','SALESMAN',8698,'1991-02-22',1250.00,500,30);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985.00,NULL,20);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8654,'MOMIN','SALESMAN',8698,'1991-09-28',1250.00,1400,30);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8698,'BINA','MANAGEr',8839,'1991-05-01',2850.00,NULL,30);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450.00,NULL,10);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8888,'SCOTT','ANALYST',8566,'1992-12-19',3000.00,NULL,20);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8839,'AMIR','PRESIDENT',NULL,'1991-11-18',5000.00,NULL,10);
insert into  Empl (empno ,ename ,job ,mgr ,hiredate ,sal ,comm ,deptno ) values (8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500.00,NULL,30);


select Ename,sal from Empl Where Sal >= 2200;

select Ename,sal,comm from Empl Where  comm is null;

select Ename,sal from Empl Where Sal between 2500 and 4000;

select Ename,job,sal from Empl Where mgr is null;

select Ename,sal, comm from Empl Where comm is null;



select * from Empl;

DESC EMPL;


select Ename,sal from Empl where ename like  '__A%' ;
select Ename,sal from Empl where ename like  '%T' ;
select Ename,sal from Empl where ename like  'M_L%' ;

select Ename,sal, COALESCE(comm,'Not Given') as com from Empl ;

ALTER TABLE Empl MODIFY Column comm NVARCHAR(10) NOT NULL;

CREATE TABLE sales (
  OrderID INTEGER not null unique,
  OrderDate DATETIME,
  CustomerID INTEGER,
  CustomerName VARCHAR(9),
  SalesPerson VARCHAR(12),
  Region VARCHAR(10),
  Product_Type VARCHAR(9),
  Price INTEGER,
  Quantity INTEGER, 
  primary key (OrderID)
);
 Describe SQL_Basics_Practice.Sales;

INSERT INTO sales
  (OrderID, OrderDate, CustomerID, CustomerName, SalesPerson, Region, Product_Type, Price, Quantity)
VALUES
  (0009, '2021-05-01', '20', 'Company T', 'Andrew James', 'Arizona', 'Product 1', 399, 5),
  (0012, '2021-05-01', '6', 'Company F', 'Laura Larsen', 'California', 'Product 1', 399, 6),
  (0014, '2021-05-01', '4', 'Company D', 'Anna Weber', 'Texas', 'Product 1', 399, 4),
  (0020, '2021-07-01', '5', 'Company E', 'Anna Weber', 'Texas', 'Product 1', 399, 3),
  (0024, '2021-07-01', '12', 'Company L', 'Michael Fox', 'New Mexico', 'Product 1', 399, 2);
  
  select * from SQL_Basics_Practice.Sales;
  
  Select * from sql_basics_practice.sales order by  OrderDate ASC, Quantity DESC ;
  
  Create table sales_bkp (select * from sales);
  
  Delete from sales_bkp where OrderID = 9;
  
  Alter table sales_bkp add  Primary key(OrderID);
  
   Delete from sales_bkp where OrderID = 9;
   
     Select * from sql_basics_practice.sales_bkp order by  OrderDate ASC, Quantity DESC ;
   
   Alter Table sales_bkp add column `Created By` NVARCHAR(20) default 'Pavan';
   
    Select * from sql_basics_practice.sales_bkp ;
    
    select OrderID,  SalesPerson, `Created By`, Price from sql_basics_practice.sales_bkp;
    
    Alter table sql_basics_practice.sales_bkp drop column  `Created By`;
    
    Select * from sql_basics_practice.sales_bkp ;
    
    Truncate table SQL_Basics_Practice.sales_bkp; 
    
    Select * from sql_basics_practice.sales_bkp ;

	Drop table SQL_Basics_Practice.sales_bkp; 
    
   Select * from sql_basics_practice.sales_bkp ;
   
    
    Describe sql_basics_practice.sales_data;
    
     Select * from sql_basics_practice.sales_data ;
     
     select * from sql_basics_practice.sales_data where region = 'California';
     
     select  max(quantity),min(quantity),max(price),min(price),avg(quantity),avg(price), sum(Quantity),sum(Price) from sql_basics_practice.sales_data;

select product_type ,Count(*) from  sql_basics_practice.sales_data group by product_type; 

Alter table sql_basics_practice.sales_data add  column Revenue double default (Quantity*price);
select  Revenue from sql_basics_practice.sales_data;

select  `Sales Person`,    sum(Revenue) from  sql_basics_practice.sales_data group by `Sales Person` order by sum(Revenue) desc ; 

select * from sql_basics_practice.sales_data where region = 'Texas' and revenue between 1000 and 3000 order by revenue desc ;


select  `Sales Person`,  sum(Revenue) from  sql_basics_practice.sales_data group by `Sales Person` having  sum(Revenue)  > 250000    ; 


select * from sql_basics_practice.sales;

    
    
    
    
  

  Select * from sql_basics_practice.sales;

  Select * from sql_basics_practice.sales where salesPerson like '$(An & Lu)*'; 
  
  
  
 Select * from sql_basics_practice.sales where salesPerson ~ '$(San | EI)*';
Select * from sql_basics_practice.sales where salesPerson~'^(San | EI)*'; 
Select * from sql_basics_practice.sales where salesPerson ~'$(San&EI)*'; 
Select * from sql_basics_practice.sales where salesPerson~^(San&EI)*';
  
  
  
  
  
  
  
  
  
