.logtable emp_161425_log;
logon 10.58.0.66/TD_USER20,TD_USER20;
DATABASE TD_BIM_FR_TRNG_DB;
.BEGIN EXPORT SESSIONS 10;
.EXPORT OUTFILE 'C:\Users\rchavan3\Desktop\Module3(Tearadata)\empfastexport.txt'
MODE RECORD FORMAT TEXT;

SELECT cast(Empno as char(10)),
	cast(empname as char(30))
	FROM emp_mlupsert_161425;
SELECT cast(Empno as char(10)),
	cast(empname as char(30))
	FROM emp_mlupsert_1614251;

.END EXPORT;
.LOGOFF; 