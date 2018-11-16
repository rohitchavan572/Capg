.logtable emp_158696_log;
logon 10.58.0.66/TD_USER20,TD_USER20;
DATABASE TD_BIM_FR_TRNG_DB;
.BEGIN EXPORT SESSIONS 10;
.EXPORT OUTFILE 'C:\Teradata\empfastexport'
MODE RECORD FORMAT TEXT;

SELECT cast(empid as char(10)),
	cast(empname as char(30))
	FROM EMP_158696;
SELECT cast(empno as char(10)),
	cast(empname as char(30))
	FROM EMP1_158696;

.END EXPORT;
.LOGOFF; 