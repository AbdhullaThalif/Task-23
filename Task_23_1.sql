
create table EmployeeDetails(empno int,ename varchar(20),job varchar(20),mgr int,heritage DATE,sal DECIMAL(10, 2),comm DECIMAL(10, 2),deptno int);

insert into EmployeeDetails values (8369,'SMITH','CLERK',8902,'1990-12-18',800.00,null,20);

insert into EmployeeDetails values (8499,'ANYA','SALESMAN',8698,'1991-02-20',1600.00,300.00,30);
insert into EmployeeDetails values (8521,'SETH','SALESMAN',8698,'1991-02-22',1250.00,500.00,30);
insert into EmployeeDetails values (8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985.00,null,20);
insert into EmployeeDetails values (8654,'MOMIN','SALESMAN',8698,'1991-09-28',1250.00,1400.00,30);
insert into EmployeeDetails values (8698,'BINA','MANAGER',8839,'1991-05-01',2850.00,null,30);
insert into EmployeeDetails values (8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450.00,null,10);
insert into EmployeeDetails values (8888,'SCOTT','ANALYST',8566,'1992-12-09',3000.00,null,20);
insert into EmployeeDetails values (8839,'AMIR','PRESIDENT',null,'1991-11-18',5000.00,null,10);
insert into EmployeeDetails values (8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500.00,0.00,30);

SELECT ename, sal FROM EmployeeDetails WHERE sal>=2200;

SELECT empno, ename, job, mgr, heritage, sal, comm,deptno FROM EmployeeDetails WHERE comm IS NULL;

SELECT ename, sal FROM EmployeeDetails WHERE sal NOT BETWEEN 2500 AND 4000;

SELECT ename, job, sal FROM EmployeeDetails WHERE mgr not like '8839' or mgr is NULL;

select ename from EmployeeDetails where ename like  '__A%';

select ename from EmployeeDetails where ename like  '%T';