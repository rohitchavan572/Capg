--Emp
DROP TABLE EMP;

CREATE TABLE EMP(EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2));

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        TO_DATE('17-DEC-1980', 'DD-MON-YYYY'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        TO_DATE('20-FEB-1981', 'DD-MON-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        TO_DATE('22-FEB-1981', 'DD-MON-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        TO_DATE('2-APR-1981', 'DD-MON-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        TO_DATE('28-SEP-1981', 'DD-MON-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        TO_DATE('1-MAY-1981', 'DD-MON-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        TO_DATE('9-JUN-1981', 'DD-MON-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        TO_DATE('09-DEC-1982', 'DD-MON-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        TO_DATE('17-NOV-1981', 'DD-MON-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        TO_DATE('8-SEP-1981', 'DD-MON-YYYY'),  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        TO_DATE('12-JAN-1983', 'DD-MON-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        TO_DATE('3-DEC-1981', 'DD-MON-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        TO_DATE('23-JAN-1982', 'DD-MON-YYYY'), 1300, NULL, 10);

--Designation Masters
DROP TABLE DESIGNATION_MASTER CASCADE CONSTRAINTS;
DROP TABLE DESIGNATION_MASTERs CASCADE CONSTRAINTS;
CREATE TABLE Designation_Master(
Design_Code NUMBER(3) PRIMARY KEY,
Design_Name VARCHAR2(50) UNIQUE);
INSERT INTO designation_master VALUES(101,'HOD');
INSERT INTO designation_master VALUES(102,'Professor');
INSERT INTO designation_master VALUES(103,'Reader');
INSERT INTO designation_master VALUES(104,'Sr.Lecturer');
INSERT INTO designation_master VALUES(105,'Lecturer');
INSERT INTO designation_master VALUES(106,'Director');

--Department Masters
DROP TABLE DEPARTMENT_MASTER CASCADE CONSTRAINTS;
DROP TABLE DEPARTMENT_MASTERs CASCADE CONSTRAINTS;
CREATE TABLE Department_Master(
Dept_code NUMBER(2) PRIMARY KEY,
Dept_Name VARCHAR2(50) UNIQUE);
INSERT INTO department_master VALUES(10,'Computer Science');
INSERT INTO department_master VALUES(20,'Electricals');
INSERT INTO department_master VALUES(30,'Electronics');
INSERT INTO department_master VALUES(40,'Mechanics');
INSERT INTO department_master VALUES(50,'Robotics');

--Student Masters
DROP TABLE STUDENT_MASTER CASCADE CONSTRAINTS;
DROP TABLE STUDENT_MASTERs CASCADE CONSTRAINTS;
CREATE TABLE Student_Master(
Student_Code NUMBER(6) PRIMARY KEY,
Student_Name VARCHAR2(50) NOT NULL,
Dept_Code NUMBER(2) REFERENCES Department_Master(dept_code),
Student_Dob DATE,
Student_Address VARCHAR2(240));

INSERT INTO student_master VALUES(1001,'Amit',10,'11-Jan-80','chennai');
INSERT INTO student_master VALUES(1002,'Ravi',10,'1-Nov-81','New Delhi');
INSERT INTO student_master VALUES(1003,'Ajay',20,'13-Jan-82',null);
INSERT INTO student_master VALUES(1004,'Raj',30,'14-Jan-79','Mumbai');
INSERT INTO student_master VALUES(1005,'Arvind',40,'15-Jan-83','Bangalore');
INSERT INTO student_master VALUES(1006,'Rahul',50,'16-Jan-81','Delhi');
INSERT INTO student_master VALUES(1007,'Mehul',20,'17-Jan-82','Chennai');
INSERT INTO student_master VALUES(1008,'Dev',10,'11-Mar-81','Bangalore');
INSERT INTO student_master VALUES(1009,'Vijay',30,'19-Jan-80','Bangalore');
INSERT INTO student_master VALUES(1010,'Rajat',40,'20-Jan-80','Bangalore');
INSERT INTO student_master VALUES(1011,'Sunder',50,'21-Jan-80','Chennai');
INSERT INTO student_master VALUES(1012,'Rajesh', 30,'22-Jan-80',null);
INSERT INTO student_master VALUES(1013,'Anil',20,'23-Jan-80','Chennai');
INSERT INTO student_master VALUES(1014,'Sunil',10,'15-Feb-85',	null);
INSERT INTO student_master VALUES(1015,'Kapil',40,'18-Mar-81','Mumbai');
INSERT INTO student_master VALUES(1016,'Ashok',40,'26-Nov-80',null);
INSERT INTO student_master VALUES(1017,'Ramesh',30,'27-Dec-80',null);
INSERT INTO student_master VALUES(1018,'Amit Raj',50,'28-Sep-80','New Delhi');
INSERT INTO student_master VALUES(1019,'Ravi Raj',50,'29-May-81','New Delhi');
INSERT INTO student_master VALUES(1020,'Amrit',10,'11-Nov-80',null);
INSERT INTO student_master VALUES(1021,'Sumit',20,'1-Jan-80','Chennai');







--Student Marks
DROP TABLE STUDENT_MARKS CASCADE CONSTRAINTS;
CREATE TABLE Student_Marks(
Student_Code NUMBER (6) REFERENCES student_Master(student_code),
Student_Year NUMBER not null,
Subject1 NUMBER (3),
Subject2 NUMBER (3),
Subject3 NUMBER (3));
INSERT INTO student_marks VALUES(1001,	2010,	55,45,78);
INSERT INTO student_marks VALUES(1002,	2010,	66,74,88);
INSERT INTO student_marks VALUES(1003,	2010,	87,54,65);
INSERT INTO student_marks VALUES(1004,	2010,	65,64,90);
INSERT INTO student_marks VALUES(1005,	2010,	78,88,65);
INSERT INTO student_marks VALUES(1006,	2010,	65,86,54);
INSERT INTO student_marks VALUES(1007,	2010,	67,79,49);
INSERT INTO student_marks VALUES(1008,	2010,	72,55,55);
INSERT INTO student_marks VALUES(1009,	2010,	71,59,58);
INSERT INTO student_marks VALUES(1010,	2010,	68,44,92);
INSERT INTO student_marks VALUES(1011,	2010,	89,96,78);
INSERT INTO student_marks VALUES(1012,	2010,	78,56,55);
INSERT INTO student_marks VALUES(1013,	2010,	75,58,65);
INSERT INTO student_marks VALUES(1014,	2010,	73,74,65);
INSERT INTO student_marks VALUES(1015,	2010,	66,45,74);
INSERT INTO student_marks VALUES(1016,	2010,	68,78,74);
INSERT INTO student_marks VALUES(1017,	2010,	69,44,52);
INSERT INTO student_marks VALUES(1018,	2010,	65,78,56);
INSERT INTO student_marks VALUES(1019,	2010,	78,58,74);
INSERT INTO student_marks VALUES(1020,	2010,	45,55,65);
INSERT INTO student_marks VALUES(1021,	2010,	78,79,78);
INSERT INTO student_marks VALUES(1001,	2011,	68,44,92);
INSERT INTO student_marks VALUES(1002,	2011,	89,96,78);
INSERT INTO student_marks VALUES(1003,	2011,	78,56,55);
INSERT INTO student_marks VALUES(1004,	2011,	75,58,65);
INSERT INTO student_marks VALUES(1005,	2011,	73,74,65);
INSERT INTO student_marks VALUES(1006,	2011,	66,45,74);
INSERT INTO student_marks VALUES(1007,	2011,	68,78,74);
INSERT INTO student_marks VALUES(1008,	2011,	69,44,52);
INSERT INTO student_marks VALUES(1009,	2011,	65,78,56);
INSERT INTO student_marks VALUES(1010,	2011,	78,58,74);
INSERT INTO student_marks VALUES(1011,	2011,	45,55,65);
INSERT INTO student_marks VALUES(1012,	2011,	78,79,78);
INSERT INTO student_marks VALUES(1013,	2011,	66,74,88);
INSERT INTO student_marks VALUES(1014,	2011,	65,64,90);
INSERT INTO student_marks VALUES(1015,	2011,	78,88,65);
INSERT INTO student_marks VALUES(1016,	2011,	65,86,54);
INSERT INTO student_marks VALUES(1017,	2011,	67,79,49);
INSERT INTO student_marks VALUES(1018,	2011,	72,55,55);
INSERT INTO student_marks VALUES(1019,	2011,	71,59,58);
INSERT INTO student_marks VALUES(1020,	2011,	55,45,78);
INSERT INTO student_marks VALUES(1021,	2011,	87,54,65);
--Data to be repeated for 2 more years

--Staff Masters
DROP TABLE STAFF_MASTER CASCADE CONSTRAINTS;
DROP TABLE STAFF_MASTERs CASCADE CONSTRAINTS;
CREATE TABLE staff_Master(
Staff_Code number(8) PRIMARY KEY,
Staff_Name varchar2(50) NOT NULL,
Design_Code REFERENCES Designation_Master(design_code),
Dept_Code REFERENCES Department_Master(dept_code),
Staff_dob DATE,
Hiredate DATE,
Mgr_code NUMBER(8),
Staff_sal NUMBER (10,2),
Staff_address VARCHAR2(240));

INSERT INTO staff_master 
VALUES(100001,'Arvind',102,30,'15-Jan-80','15-Jan-03',100006,17000,'Bangalore');
INSERT INTO staff_master 
VALUES(100002,'Shyam',102,20,'18-Feb-80','17-Feb-02',100007,20000,'Chennai');
INSERT INTO staff_master
VALUES(100003,'Mohan',102,10,'23-Mar-80','19-Jan-02',100006,24000,'Mumbai');
INSERT INTO staff_master 
VALUES(100004,'Anil',102,20,'22-Apr-77','11-Mar-01',100006,20000,'Hyderabad');
INSERT INTO staff_master
VALUES(100005,'John',106,10,'22-May-76','21-Jan-01',100007,32000,'Bangalore');
INSERT INTO staff_master 
VALUES(100006,'Allen',103,30,'22-Jan-80','23-Apr-01',100005,42000,'Chennai');


INSERT INTO staff_master 
VALUES(100007,'Smith',103,20,'19-Jul-73','12-Mar-02',100005,62000,'Mumbai');
INSERT INTO staff_master 
VALUES(100008,'Raviraj',102,40,'17-Jun-80','11-Jan-03',100006,18000,'Bangalore');
INSERT INTO staff_master
VALUES(100009,'Rahul',102,20,'16-Jan-78','11-Dec-03',100006,22000,'Hyderabad');
INSERT INTO staff_master 
VALUES(100010,'Ram',103,30,'17-Jan-79','17-Jan-02',100007,32000,'Bangalore');
--Book Masters
DROP TABLE BOOK_MASTER CASCADE CONSTRAINTS;
DROP TABLE BOOK_MASTERs CASCADE CONSTRAINTS;
CREATE TABLE Book_Master(
Book_code NUMBER(10) PRIMARY KEY,
Book_name VARCHAR2(50) NOT NULL,
Book_pub_year NUMBER,
Book_pub_author VARCHAR2 (50) NOT NULL);


INSERT INTO book_master VALUES(10000001,'Let Us C++',2000,'Yashavant Kanetkar');

INSERT INTO book_master VALUES(10000002,'Mastersing VC++',2005,'P.J Allen');

INSERT INTO book_master VALUES(10000003,'JAVA Complete Reference',2004,'H.Schild');

INSERT INTO book_master VALUES(10000004,'J2EE Complete Reference',2000,'H. Schild');

INSERT INTO book_master VALUES(10000005,'Relational DBMS',2000,'B.C. Desai');

INSERT INTO book_master VALUES(10000006,'Let Us C',2000, 'Yashavant Kanetkar');

INSERT INTO book_master VALUES(10000007,'Intoduction To Algorithams',2001,'Cormen');

INSERT INTO book_master VALUES(10000008,'Computer Networks',2000,'Tanenbaum');

INSERT INTO book_master VALUES(10000009,'Introduction to O/S',2001,'Millan');

--Book Transactions
DROP TABLE BOOK_TRANSACTIONS;
CREATE TABLE Book_transactions(
Book_code NUMBER(10) REFERENCES Book_Master(Book_code),
Student_code NUMBER(6) REFERENCES Student_Master(student_code),
Staff_code number(8) REFERENCES Staff_Master(staff_code),
Book_issue_Date date not null,
Book_expected_return_date date not null,
Book_actual_return_date date);

INSERT INTO book_transactions 
VALUES(10000006,1012,NULL,'02-Feb-2011','09-Feb-2011',NULL);

INSERT INTO book_transactions 
VALUES(10000008,NULL,100006,'10-Mar-2011','17-Mar-2011','15-Mar-2011');

INSERT INTO book_transactions 
VALUES(10000009,NULL,100010,'01-Apr-2011','08-Apr-2011','10-Apr-2011');

INSERT INTO book_transactions 
VALUES(10000004,1015,NULL,'12-Feb-2011','19-Feb-2011',NULL);


INSERT INTO book_transactions 
VALUES(10000005,NULL,100007,'14-Mar-2011','21-Mar-2011','21-Mar-2011');

INSERT INTO book_transactions 
VALUES(10000007,NULL,100007,'01-Apr-2011','07-Apr-2011','06-Apr-2011');

INSERT INTO book_transactions 
VALUES(10000007,NULL,100006,'01-Apr-2010','07-Apr-2010','06-Apr-2010');
INSERT INTO book_transactions 
VALUES(10000005,1009,NULL,'31-May-2011','08-JUN-2011','08-JUN-2011');
