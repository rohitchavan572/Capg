.logtable td_bim_fr_trng_db.emp1_log161425;
.logon 10.58.0.66/TD_USER20,TD_USER20;
.BEGIN MLOAD

TABLES emp_mlupsert_161425
worktables wt_emp1_error1_161425
ERRORTABLES emp1_error1_161425 emp2_error1_161425;
  
      .LAYOUT DATAIN_LAYOUT;  
      .FIELD Empno * VARCHAR(10);  
      .FIELD empname * VARCHAR(30); 
.DML LABEL UPDATE_LBL
DO INSERT FOR MISSING UPDATE ROWS; 
UPDATE emp_mlupsert_161425
SET empname = :empname
WHERE Empno =:Empno;

INSERT emp_mlupsert_161425
(
         Empno,
         empname
)  
VALUES(
         :Empno,
         :empname
);

      
.IMPORT INFILE 'C:\Users\rchavan3\Desktop\Module3(Tearadata)\mlupsert.txt' 
FORMAT VARTEXT ','
LAYOUT DATAIN_LAYOUT
APPLY  UPDATE_LBL;  
.END MLOAD;  
.LOGOFF;