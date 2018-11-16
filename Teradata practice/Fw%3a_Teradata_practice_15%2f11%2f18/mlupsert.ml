.logtable td_bim_fr_trng_db.emp1_log158696;
.logon 10.58.0.66/TD_USER20,TD_USER20;
.BEGIN MLOAD

TABLES emp1_158696
worktables wt_emp1_error1_158696
ERRORTABLES emp1_error1_158696 emp2_error1_158696;
  
      .LAYOUT DATAIN_LAYOUT;  
      .FIELD Empno * VARCHAR(10);  
      .FIELD empname * VARCHAR(30); 
.DML LABEL UPDATE_LBL
DO INSERT FOR MISSING UPDATE ROWS; 
UPDATE emp1_158696
SET empname = :empname
WHERE Empno =:Empno;

INSERT emp1_158696
(
         Empno,
         empname
)  
VALUES(
         :Empno,
         :empname
);

      
.IMPORT INFILE 'C:\Teradata\mlupsert.txt' 
FORMAT VARTEXT ','
LAYOUT DATAIN_LAYOUT
APPLY  UPDATE_LBL;  
.END MLOAD;  
.LOGOFF;