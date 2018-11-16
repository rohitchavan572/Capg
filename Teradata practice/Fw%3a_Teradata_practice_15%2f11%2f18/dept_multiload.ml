.logtable td_bim_fr_trng_db.dept_log158696;
.logon 10.58.0.66/TD_USER20,TD_USER20;
.begin mload tables dept_10_158696,dept_20_158696
worktables wt_dept_10_158696,wt_dept_20_158696
errortables
er_dept_10_158696 uv_dept_10_158696,
er_dept_20_158696 uv_dept_20_158696;

.layout record_layout;
.field deptno * varchar(5);
.field dname * varchar(30);

.dml label insert_values_dept_10;
insert into dept_10_158696((CAST(:DEPTNO as integer)),:DNAME);

.dml label insert_values_dept_20;
insert into dept_20_158696((CAST(:DEPTNO as integer)),:DNAME);

.import infile 'C:\Teradata\dept_multi.txt'
format vartext ','
layout record_layout
apply insert_values_dept_10 where DEPTNO =10
apply insert_values_dept_20 where DEPTNO =20;

.end mload;
.logoff;