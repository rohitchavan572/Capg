.logtable td_bim_fr_trng_db.dept_log161425;
.logon 10.58.0.66/TD_USER20,TD_USER20;
.begin mload tables dept_multi_10_161425,dept_multi_20_161425
worktables wt_dept_10_161425,wt_dept_20_161425
errortables
er_dept_10_161425 uv_dept_10_161425,
er_dept_20_161425 uv_dept_20_161425;

.layout record_layout;
.field deptno * varchar(5);
.field dname * varchar(30);

.dml label insert_values_dept_10;
insert into dept_multi_10_161425((CAST(:DEPTNO as integer)),:DNAME);

.dml label insert_values_dept_20;
insert into dept_multi_20_161425((CAST(:DEPTNO as integer)),:DNAME);

.import infile 'C:\Users\rchavan3\Desktop\Module3(Tearadata)\dept_multi.txt'
format vartext ','
layout record_layout
apply insert_values_dept_10 where DEPTNO =10
apply insert_values_dept_20 where DEPTNO =20;

.end mload;
.logoff;