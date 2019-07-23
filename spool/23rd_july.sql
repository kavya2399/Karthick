SQL> desc user_procedures;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OBJECT_NAME                                        VARCHAR2(128)
 PROCEDURE_NAME                                     VARCHAR2(30)
 OBJECT_ID                                          NUMBER
 SUBPROGRAM_ID                                      NUMBER
 OVERLOAD                                           VARCHAR2(40)
 OBJECT_TYPE                                        VARCHAR2(19)
 AGGREGATE                                          VARCHAR2(3)
 PIPELINED                                          VARCHAR2(3)
 IMPLTYPEOWNER                                      VARCHAR2(30)
 IMPLTYPENAME                                       VARCHAR2(30)
 PARALLEL                                           VARCHAR2(3)
 INTERFACE                                          VARCHAR2(3)
 DETERMINISTIC                                      VARCHAR2(3)
 AUTHID                                             VARCHAR2(12)

SQL> select object_name from user_objects where object_type like 'PRO%';

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
GET_NO                                                                          
GET_NAME                                                                        
UPDATE_REC                                                                      
DEL_REC                                                                         
INS_REC                                                                         
EMP_PROC                                                                        
FORMAT_PHONE                                                                    

7 rows selected.

SQL> select object_name, object_type from user_objects;

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
DESIGNATION_MASTERS                                                             
TABLE                                                                           
                                                                                
EMP_BKP                                                                         
TABLE                                                                           
                                                                                
DEPT_BKP                                                                        
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
TEST                                                                            
TABLE                                                                           
                                                                                
TEST1                                                                           
TABLE                                                                           
                                                                                
STATE                                                                           
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
TABLE1                                                                          
TABLE                                                                           
                                                                                
SYS_C007005                                                                     
INDEX                                                                           
                                                                                
SYS_C007006                                                                     
INDEX                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
DEPARTMENT_MASTERS                                                              
TABLE                                                                           
                                                                                
SYS_C007007                                                                     
INDEX                                                                           
                                                                                
SYS_C007008                                                                     
INDEX                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
STUDENT_MASTERS                                                                 
TABLE                                                                           
                                                                                
SYS_C007010                                                                     
INDEX                                                                           
                                                                                
STUDENT_MARKS                                                                   
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
STAFF_MASTERS                                                                   
TABLE                                                                           
                                                                                
SYS_C007015                                                                     
INDEX                                                                           
                                                                                
BOOK_MASTERS                                                                    
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
SYS_C007020                                                                     
INDEX                                                                           
                                                                                
BOOK_TRANSACTIONS                                                               
TABLE                                                                           
                                                                                
EMP_NN                                                                          
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
EMP_UNIQUE                                                                      
TABLE                                                                           
                                                                                
EMPNO_U                                                                         
INDEX                                                                           
                                                                                
EMP_PK                                                                          
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
EMPNO_PK                                                                        
INDEX                                                                           
                                                                                
EMP_CHK                                                                         
TABLE                                                                           
                                                                                
ABC                                                                             
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
X_PK                                                                            
INDEX                                                                           
                                                                                
EMP_COMP                                                                        
TABLE                                                                           
                                                                                
EMPNO_DEPTNO_PK                                                                 
INDEX                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
CUST_TABLE                                                                      
TABLE                                                                           
                                                                                
CUSTID_PK                                                                       
INDEX                                                                           
                                                                                
CUSTOMERMASTER                                                                  
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
DEPT_MASTER                                                                     
TABLE                                                                           
                                                                                
SYS_C007046                                                                     
INDEX                                                                           
                                                                                
EMP_DETAIL                                                                      
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
SYS_C007047                                                                     
INDEX                                                                           
                                                                                
DEPT_NEW                                                                        
TABLE                                                                           
                                                                                
DEPT_COPY                                                                       
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
X                                                                               
TABLE                                                                           
                                                                                
TEMP_C                                                                          
TABLE                                                                           
                                                                                
TEMP                                                                            
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
DEPT_CHENNAI                                                                    
TABLE                                                                           
                                                                                
EMP_SEQ                                                                         
TABLE                                                                           
                                                                                
S10                                                                             
SEQUENCE                                                                        
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
S1                                                                              
SEQUENCE                                                                        
                                                                                
SYS_C007096                                                                     
INDEX                                                                           
                                                                                
EMP_NEW                                                                         
SYNONYM                                                                         
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
XYZ                                                                             
TABLE                                                                           
                                                                                
GET_NO                                                                          
PROCEDURE                                                                       
                                                                                
GET_NAME                                                                        
PROCEDURE                                                                       
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
UPDATE_REC                                                                      
PROCEDURE                                                                       
                                                                                
DEL_REC                                                                         
PROCEDURE                                                                       
                                                                                
INS_REC                                                                         
PROCEDURE                                                                       
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
EMP_PROC                                                                        
PROCEDURE                                                                       
                                                                                
FORMAT_PHONE                                                                    
PROCEDURE                                                                       
                                                                                
GET_ANNL_SAL                                                                    
FUNCTION                                                                        
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
RET_LOC                                                                         
FUNCTION                                                                        
                                                                                
AREA_SQR                                                                        
FUNCTION                                                                        
                                                                                
AREA_TRI                                                                        
FUNCTION                                                                        
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
AREA_CIR                                                                        
FUNCTION                                                                        
                                                                                
TEMP_EMP                                                                        
TABLE                                                                           
                                                                                
READONLY_EMP                                                                    
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
EMP_DEPT                                                                        
CLUSTER                                                                         
                                                                                
DEPT_CLUSTER                                                                    
TABLE                                                                           
                                                                                
EMP_CLUSTER                                                                     
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
EMP_IOT                                                                         
TABLE                                                                           
                                                                                
T1                                                                              
TABLE                                                                           
                                                                                
T2                                                                              
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
T3                                                                              
TABLE                                                                           
                                                                                
T4                                                                              
TABLE                                                                           
                                                                                
SYS_IOT_TOP_20475                                                               
INDEX                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
EMP_V                                                                           
TABLE                                                                           
                                                                                
EMP                                                                             
TABLE                                                                           
                                                                                
DEPT                                                                            
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
BONUS                                                                           
TABLE                                                                           
                                                                                
SALGRADE                                                                        
TABLE                                                                           
                                                                                
DUMMY                                                                           
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
SEQ                                                                             
SEQUENCE                                                                        
                                                                                
COUNTRIES                                                                       
TABLE                                                                           
                                                                                
SYS_C007120                                                                     
INDEX                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
LOCATIONS                                                                       
TABLE                                                                           
                                                                                
SYS_C007122                                                                     
INDEX                                                                           
                                                                                
LOCATIONS_SEQ                                                                   
SEQUENCE                                                                        
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
DEPARTMENTS                                                                     
TABLE                                                                           
                                                                                
SYS_C007124                                                                     
INDEX                                                                           
                                                                                
DEPARTMENTS_SEQ                                                                 
SEQUENCE                                                                        
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
JOBS                                                                            
TABLE                                                                           
                                                                                
SYS_C007126                                                                     
INDEX                                                                           
                                                                                
EMPLOYEES                                                                       
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
SYS_C007127                                                                     
INDEX                                                                           
                                                                                
EMPLOYEES_SEQ                                                                   
SEQUENCE                                                                        
                                                                                
JOB_HISTORY                                                                     
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
JHIST_EMP_ID_ST_DATE_PK                                                         
INDEX                                                                           
                                                                                
SEQ_LOC                                                                         
SEQUENCE                                                                        
                                                                                
DEPT_DUP                                                                        
TABLE                                                                           
                                                                                

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
OBJECT_TYPE                                                                     
-------------------                                                             
SYS_C007171                                                                     
INDEX                                                                           
                                                                                

97 rows selected.

SQL> set linesize 500
SQL> set pagesize 500
SQL> select object_name, object_type from user_objects;

OBJECT_NAME                                                                                                                      OBJECT_TYPE                                                                                                                                                                                                                                                                                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------- -------------------                                                                                                                                                                                                                                                                                                                                                                
DESIGNATION_MASTERS                                                                                                              TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_BKP                                                                                                                          TABLE                                                                                                                                                                                                                                                                                                                                                                              
DEPT_BKP                                                                                                                         TABLE                                                                                                                                                                                                                                                                                                                                                                              
TEST                                                                                                                             TABLE                                                                                                                                                                                                                                                                                                                                                                              
TEST1                                                                                                                            TABLE                                                                                                                                                                                                                                                                                                                                                                              
STATE                                                                                                                            TABLE                                                                                                                                                                                                                                                                                                                                                                              
TABLE1                                                                                                                           TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007005                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007006                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
DEPARTMENT_MASTERS                                                                                                               TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007007                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007008                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
STUDENT_MASTERS                                                                                                                  TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007010                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
STUDENT_MARKS                                                                                                                    TABLE                                                                                                                                                                                                                                                                                                                                                                              
STAFF_MASTERS                                                                                                                    TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007015                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
BOOK_MASTERS                                                                                                                     TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007020                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
BOOK_TRANSACTIONS                                                                                                                TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_NN                                                                                                                           TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_UNIQUE                                                                                                                       TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMPNO_U                                                                                                                          INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMP_PK                                                                                                                           TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMPNO_PK                                                                                                                         INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMP_CHK                                                                                                                          TABLE                                                                                                                                                                                                                                                                                                                                                                              
ABC                                                                                                                              TABLE                                                                                                                                                                                                                                                                                                                                                                              
X_PK                                                                                                                             INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMP_COMP                                                                                                                         TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMPNO_DEPTNO_PK                                                                                                                  INDEX                                                                                                                                                                                                                                                                                                                                                                              
CUST_TABLE                                                                                                                       TABLE                                                                                                                                                                                                                                                                                                                                                                              
CUSTID_PK                                                                                                                        INDEX                                                                                                                                                                                                                                                                                                                                                                              
CUSTOMERMASTER                                                                                                                   TABLE                                                                                                                                                                                                                                                                                                                                                                              
DEPT_MASTER                                                                                                                      TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007046                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMP_DETAIL                                                                                                                       TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007047                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
DEPT_NEW                                                                                                                         TABLE                                                                                                                                                                                                                                                                                                                                                                              
DEPT_COPY                                                                                                                        TABLE                                                                                                                                                                                                                                                                                                                                                                              
X                                                                                                                                TABLE                                                                                                                                                                                                                                                                                                                                                                              
TEMP_C                                                                                                                           TABLE                                                                                                                                                                                                                                                                                                                                                                              
TEMP                                                                                                                             TABLE                                                                                                                                                                                                                                                                                                                                                                              
DEPT_CHENNAI                                                                                                                     TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_SEQ                                                                                                                          TABLE                                                                                                                                                                                                                                                                                                                                                                              
S10                                                                                                                              SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
S1                                                                                                                               SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
SYS_C007096                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMP_NEW                                                                                                                          SYNONYM                                                                                                                                                                                                                                                                                                                                                                            
XYZ                                                                                                                              TABLE                                                                                                                                                                                                                                                                                                                                                                              
GET_NO                                                                                                                           PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
GET_NAME                                                                                                                         PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
UPDATE_REC                                                                                                                       PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
DEL_REC                                                                                                                          PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
INS_REC                                                                                                                          PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
EMP_PROC                                                                                                                         PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
FORMAT_PHONE                                                                                                                     PROCEDURE                                                                                                                                                                                                                                                                                                                                                                          
GET_ANNL_SAL                                                                                                                     FUNCTION                                                                                                                                                                                                                                                                                                                                                                           
RET_LOC                                                                                                                          FUNCTION                                                                                                                                                                                                                                                                                                                                                                           
AREA_SQR                                                                                                                         FUNCTION                                                                                                                                                                                                                                                                                                                                                                           
AREA_TRI                                                                                                                         FUNCTION                                                                                                                                                                                                                                                                                                                                                                           
AREA_CIR                                                                                                                         FUNCTION                                                                                                                                                                                                                                                                                                                                                                           
TEMP_EMP                                                                                                                         TABLE                                                                                                                                                                                                                                                                                                                                                                              
READONLY_EMP                                                                                                                     TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_DEPT                                                                                                                         CLUSTER                                                                                                                                                                                                                                                                                                                                                                            
DEPT_CLUSTER                                                                                                                     TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_CLUSTER                                                                                                                      TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP_IOT                                                                                                                          TABLE                                                                                                                                                                                                                                                                                                                                                                              
T1                                                                                                                               TABLE                                                                                                                                                                                                                                                                                                                                                                              
T2                                                                                                                               TABLE                                                                                                                                                                                                                                                                                                                                                                              
T3                                                                                                                               TABLE                                                                                                                                                                                                                                                                                                                                                                              
T4                                                                                                                               TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_IOT_TOP_20475                                                                                                                INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMP_V                                                                                                                            TABLE                                                                                                                                                                                                                                                                                                                                                                              
EMP                                                                                                                              TABLE                                                                                                                                                                                                                                                                                                                                                                              
DEPT                                                                                                                             TABLE                                                                                                                                                                                                                                                                                                                                                                              
BONUS                                                                                                                            TABLE                                                                                                                                                                                                                                                                                                                                                                              
SALGRADE                                                                                                                         TABLE                                                                                                                                                                                                                                                                                                                                                                              
DUMMY                                                                                                                            TABLE                                                                                                                                                                                                                                                                                                                                                                              
SEQ                                                                                                                              SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
COUNTRIES                                                                                                                        TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007120                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
LOCATIONS                                                                                                                        TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007122                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
LOCATIONS_SEQ                                                                                                                    SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
DEPARTMENTS                                                                                                                      TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007124                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
DEPARTMENTS_SEQ                                                                                                                  SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
JOBS                                                                                                                             TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007126                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMPLOYEES                                                                                                                        TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007127                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              
EMPLOYEES_SEQ                                                                                                                    SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
JOB_HISTORY                                                                                                                      TABLE                                                                                                                                                                                                                                                                                                                                                                              
JHIST_EMP_ID_ST_DATE_PK                                                                                                          INDEX                                                                                                                                                                                                                                                                                                                                                                              
SEQ_LOC                                                                                                                          SEQUENCE                                                                                                                                                                                                                                                                                                                                                                           
DEPT_DUP                                                                                                                         TABLE                                                                                                                                                                                                                                                                                                                                                                              
SYS_C007171                                                                                                                      INDEX                                                                                                                                                                                                                                                                                                                                                                              

97 rows selected.

SQL> cl scr

SQL> desc user_procedures;
 Name                                                                                                                                                                                                                                                                                                  Null?    Type
 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 OBJECT_NAME                                                                                                                                                                                                                                                                                                    VARCHAR2(128)
 PROCEDURE_NAME                                                                                                                                                                                                                                                                                                 VARCHAR2(30)
 OBJECT_ID                                                                                                                                                                                                                                                                                                      NUMBER
 SUBPROGRAM_ID                                                                                                                                                                                                                                                                                                  NUMBER
 OVERLOAD                                                                                                                                                                                                                                                                                                       VARCHAR2(40)
 OBJECT_TYPE                                                                                                                                                                                                                                                                                                    VARCHAR2(19)
 AGGREGATE                                                                                                                                                                                                                                                                                                      VARCHAR2(3)
 PIPELINED                                                                                                                                                                                                                                                                                                      VARCHAR2(3)
 IMPLTYPEOWNER                                                                                                                                                                                                                                                                                                  VARCHAR2(30)
 IMPLTYPENAME                                                                                                                                                                                                                                                                                                   VARCHAR2(30)
 PARALLEL                                                                                                                                                                                                                                                                                                       VARCHAR2(3)
 INTERFACE                                                                                                                                                                                                                                                                                                      VARCHAR2(3)
 DETERMINISTIC                                                                                                                                                                                                                                                                                                  VARCHAR2(3)
 AUTHID                                                                                                                                                                                                                                                                                                         VARCHAR2(12)

SQL> cl scr

SQL> set linesize 120
SQL> set pagesize 120
SQL> desc user_procedures;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 OBJECT_NAME                                                                VARCHAR2(128)
 PROCEDURE_NAME                                                             VARCHAR2(30)
 OBJECT_ID                                                                  NUMBER
 SUBPROGRAM_ID                                                              NUMBER
 OVERLOAD                                                                   VARCHAR2(40)
 OBJECT_TYPE                                                                VARCHAR2(19)
 AGGREGATE                                                                  VARCHAR2(3)
 PIPELINED                                                                  VARCHAR2(3)
 IMPLTYPEOWNER                                                              VARCHAR2(30)
 IMPLTYPENAME                                                               VARCHAR2(30)
 PARALLEL                                                                   VARCHAR2(3)
 INTERFACE                                                                  VARCHAR2(3)
 DETERMINISTIC                                                              VARCHAR2(3)
 AUTHID                                                                     VARCHAR2(12)

SQL> select object_name from user_objects where object_type like 'PRO%';

OBJECT_NAME                                                                                                             
------------------------------------------------------------------------------------------------------------------------
GET_NO                                                                                                                  
GET_NAME                                                                                                                
UPDATE_REC                                                                                                              
DEL_REC                                                                                                                 
INS_REC                                                                                                                 
EMP_PROC                                                                                                                
FORMAT_PHONE                                                                                                            

7 rows selected.

SQL> set linesize 80
SQL> select object_name from user_objects where object_type like 'PRO%';

OBJECT_NAME                                                                     
--------------------------------------------------------------------------------
GET_NO                                                                          
GET_NAME                                                                        
UPDATE_REC                                                                      
DEL_REC                                                                         
INS_REC                                                                         
EMP_PROC                                                                        
FORMAT_PHONE                                                                    

7 rows selected.

SQL> desc user_objects;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OBJECT_NAME                                        VARCHAR2(128)
 SUBOBJECT_NAME                                     VARCHAR2(30)
 OBJECT_ID                                          NUMBER
 DATA_OBJECT_ID                                     NUMBER
 OBJECT_TYPE                                        VARCHAR2(19)
 CREATED                                            DATE
 LAST_DDL_TIME                                      DATE
 TIMESTAMP                                          VARCHAR2(19)
 STATUS                                             VARCHAR2(7)
 TEMPORARY                                          VARCHAR2(1)
 GENERATED                                          VARCHAR2(1)
 SECONDARY                                          VARCHAR2(1)
 NAMESPACE                                          NUMBER
 EDITION_NAME                                       VARCHAR2(30)

SQL> select get_name from user_objects;
select get_name from user_objects
       *
ERROR at line 1:
ORA-00904: "GET_NAME": invalid identifier 


SQL> select text from user_source where name=get_name;
select text from user_source where name=get_name
                                        *
ERROR at line 1:
ORA-00904: "GET_NAME": invalid identifier 


SQL> select text from user_source where name='GET_NAME';

TEXT                                                                            
--------------------------------------------------------------------------------
procedure get_name                                                              
( p_empno in emp.empno%type,                                                    
  p_ename out emp.ename%type) is                                                
BEGIN                                                                           
  select ename into p_ename from emp where empno = p_empno;                     
END;                                                                            

6 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PACKAGE BODY my_pack IS
  2    FUNCTION add_num(x number, y number) return number is
  3    v_num number;
  4    BEGIN
  5      v_num := x+y;
  6      return v_num;
  7    END add_num;
  8    FUNCTION AOR(l number, b number) return number is
  9    v_aor number;
 10    BEGIN
 11      v_aor := l*b;
 12      return v_aor;
 13    END aor;
 14    PROCEDURE update_sal(p_empno number, p_sal number) is
 15    BEGIN
 16      UPDATE emp SET sal = p_sal WHERE empno=p_empno;
 17      COMMIT;
 18    END update_sal;
 19* END my_pack;
 20  /

Warning: Package Body created with compilation errors.

SQL> show err
Errors for PACKAGE BODY MY_PACK:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
0/0      PL/SQL: Compilation unit analysis terminated                           
1/14     PLS-00201: identifier 'MY_PACK' must be declared                       
1/14     PLS-00304: cannot compile body of 'MY_PACK' without its                
         specification                                                          
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PACKAGE BODY my_pack IS
  2    FUNCTION add_num(x number, y number) return number;
  3    FUNCTION AOR(l number, b number) return number;
  4    PROCEDURE update_sal(p_empno number, p_sal number);
  5* END my_pack;
SQL> /

Warning: Package Body created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PACKAGE my_pack IS
  2    FUNCTION add_num(x number, y number) return number;
  3    FUNCTION AOR(l number, b number) return number;
  4    PROCEDURE update_sal(p_empno number, p_sal number);
  5* END my_pack;
SQL> /

Package created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PACKAGE BODY my_pack IS
  2    FUNCTION add_num(x number, y number) return number is
  3    v_num number;
  4    BEGIN
  5      v_num := x+y;
  6      return v_num;
  7    END add_num;
  8    FUNCTION AOR(l number, b number) return number is
  9    v_aor number;
 10    BEGIN
 11      v_aor := l*b;
 12      return v_aor;
 13    END aor;
 14    PROCEDURE update_sal(p_empno number, p_sal number) is
 15    BEGIN
 16      UPDATE emp SET sal = p_sal WHERE empno=p_empno;
 17      COMMIT;
 18    END update_sal;
 19* END my_pack;
SQL> /

Package body created.

SQL> desc my_pack;
FUNCTION ADD_NUM RETURNS NUMBER
 Argument Name                  Type                    In/Out Default?
 ------------------------------ ----------------------- ------ --------
 X                              NUMBER                  IN    
 Y                              NUMBER                  IN    
FUNCTION AOR RETURNS NUMBER
 Argument Name                  Type                    In/Out Default?
 ------------------------------ ----------------------- ------ --------
 L                              NUMBER                  IN    
 B                              NUMBER                  IN    
PROCEDURE UPDATE_SAL
 Argument Name                  Type                    In/Out Default?
 ------------------------------ ----------------------- ------ --------
 P_EMPNO                        NUMBER                  IN    
 P_SAL                          NUMBER                  IN    

SQL> select text from user_source where package_name='MY_PACK';
select text from user_source where package_name='MY_PACK'
                                   *
ERROR at line 1:
ORA-00904: "PACKAGE_NAME": invalid identifier 


SQL> select text from user_source where name='MY_PACK';

TEXT                                                                            
--------------------------------------------------------------------------------
PACKAGE my_pack IS                                                              
  FUNCTION add_num(x number, y number) return number;                           
  FUNCTION AOR(l number, b number) return number;                               
  PROCEDURE update_sal(p_empno number, p_sal number);                           
END my_pack;                                                                    
PACKAGE BODY my_pack IS                                                         
  FUNCTION add_num(x number, y number) return number is                         
  v_num number;                                                                 
  BEGIN                                                                         
    v_num := x+y;                                                               
    return v_num;                                                               
  END add_num;                                                                  
  FUNCTION AOR(l number, b number) return number is                             
  v_aor number;                                                                 
  BEGIN                                                                         
    v_aor := l*b;                                                               
    return v_aor;                                                               
  END aor;                                                                      
  PROCEDURE update_sal(p_empno number, p_sal number) is                         
  BEGIN                                                                         
    UPDATE emp SET sal = p_sal WHERE empno=p_empno;                             
    COMMIT;                                                                     
  END update_sal;                                                               
END my_pack;                                                                    

24 rows selected.

SQL> select my_pack.add_num(10,20) from dual;

MY_PACK.ADD_NUM(10,20)                                                          
----------------------                                                          
                    30                                                          

SQL> select * from emp where empno = 7369;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                

SQL> exec my_pack.update_sal(7369, 1000);

PL/SQL procedure successfully completed.

SQL> select * from emp where empno = 7369;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80       1000                 
        20                                                                      
                                                                                

SQL> exec my_pack.update_sal(7369, 800);

PL/SQL procedure successfully completed.

SQL> select * from emp where empno = 7369;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                

SQL> set linesize 120
SQL> select * from emp where empno = 7369;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   

SQL> ed
Wrote file afiedt.buf

  1* select * from emp where empno = 7369
SQL> /

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   

SQL> SELECT object_name from user_objects where object_type like 'FUN%';

OBJECT_NAME                                                                                                             
------------------------------------------------------------------------------------------------------------------------
GET_ANNL_SAL                                                                                                            
RET_LOC                                                                                                                 
AREA_SQR                                                                                                                
AREA_TRI                                                                                                                
AREA_CIR                                                                                                                

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PROCEDURE area_proc IS
  2    FUNCTION area_sqr (rad number);
  3    FUNCTION area_tri (b number, h number);
  4    FUNCTION area_cir (rad number);
  5* END area_proc;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PROCEDURE area_proc IS
  2    FUNCTION area_sqr (rad number);
  3    FUNCTION area_tri (b number, h number);
  4    FUNCTION area_cir (rad number);
  5* END area_proc;
SQL> show err
Errors for PROCEDURE AREA_PROC:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
2/33     PLS-00103: Encountered the symbol ";" when expecting one of the                                                
         following:                                                                                                     
         return                                                                                                         
                                                                                                                        
3/41     PLS-00103: Encountered the symbol ";" when expecting one of the                                                
         following:                                                                                                     
         return                                                                                                         
                                                                                                                        
4/33     PLS-00103: Encountered the symbol ";" when expecting one of the                                                
         following:                                                                                                     
         return                                                                                                         
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PROCEDURE area_proc IS
  2    FUNCTION area_sqr (rad number) return number;
  3    FUNCTION area_tri (b number, h number) return number;
  4    FUNCTION area_cir (rad number) return number;
  5* END area_proc;
SQL> /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE AREA_PROC:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
5/1      PLS-00103: Encountered the symbol "END" when expecting one of the                                              
         following:                                                                                                     
         begin function pragma procedure subtype type <an identifier>                                                   
         <a double-quoted delimited-identifier> current cursor delete                                                   
         exists prior                                                                                                   
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PROCEDURE area_proc IS
  2    FUNCTION sqr_area (rad number) return number;
  3    FUNCTION tri_area (b number, h number) return number;
  4    FUNCTION cir_area (rad number) return number;
  5* END area_proc;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_proc IS
  2    FUNCTION area_sqr (rad number) return number;
  3    FUNCTION area_tri (b number, h number) return number;
  4    FUNCTION area_cir (rad number) return number;
  5* END area_proc;
SQL> /
CREATE OR REPLACE PACKAGE area_proc IS
*
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_proc IS
  2    FUNCTION sqr_area (rad number) return number;
  3    FUNCTION tri_area (b number, h number) return number;
  4    FUNCTION cir_area (rad number) return number;
  5* END area_proc;
SQL> /
CREATE OR REPLACE PACKAGE area_proc IS
*
ERROR at line 1:
ORA-00955: name is already used by an existing object 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number;
  3    FUNCTION tri_area (b number, h number) return number;
  4    FUNCTION cir_area (rad number) return number;
  5* END area_proc;
SQL> /

Warning: Package created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number;
  3    FUNCTION tri_area (b number, h number) return number;
  4    FUNCTION cir_area (rad number) return number;
  5* END area_pack;
SQL> /

Package created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_area number(3);
  4            BEGIN
  5              v_area := rad * rad;
  6             return v_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9  v_area number;
 10    BEGIN
 11      v_area := 0.5 * b * h;
 12      return v_area;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    BEGIN
 16      v_area := 3.14 * rad * rad;
 17      return v_area;
 18    END cir_area;
 19* END area_pack;
SQL> /

Warning: Package created with compilation errors.

SQL> show err
Errors for PACKAGE AREA_PACK:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
3/11     PLS-00103: Encountered the symbol "V_AREA" when expecting one of                                               
         the following:                                                                                                 
         language                                                                                                       
                                                                                                                        
8/3      PLS-00103: Encountered the symbol "FUNCTION" when expecting one                                                
         of the following:                                                                                              
         end not pragma final instantiable order overriding static                                                      
         member constructor map                                                                                         
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_sqr_area number(3);
  4            BEGIN
  5              v_area := rad * rad;
  6             return  v_sqr_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9  v_area number;
 10    BEGIN
 11      v_tri_area := 0.5 * b * h;
 12      return v_tri_area ;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    BEGIN
 16      v_cir_area := 3.14 * rad * rad;
 17      return v_cir_area ;
 18    END cir_area;
 19* END area_pack;
SQL> /

Warning: Package created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_sqr_area number(3);
  4            BEGIN
  5              v_sqr_area := rad * rad;
  6             return  v_sqr_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9    v_tri_area number;
 10    BEGIN
 11      v_tri_area := 0.5 * b * h;
 12      return v_tri_area ;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    v_cir_area number;
 16    BEGIN
 17      v_cir_area := 3.14 * rad * rad;
 18      return v_cir_area ;
 19    END cir_area;
 20* END area_pack;
SQL> /

Warning: Package created with compilation errors.

SQL> show err
Errors for PACKAGE AREA_PACK:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
3/11     PLS-00103: Encountered the symbol "V_SQR_AREA" when expecting one                                              
         of the following:                                                                                              
         language                                                                                                       
                                                                                                                        
8/3      PLS-00103: Encountered the symbol "FUNCTION" when expecting one                                                
         of the following:                                                                                              
         end not pragma final instantiable order overriding static                                                      
         member constructor map                                                                                         
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_sqr_area number(3);
  4            BEGIN
  5              v_sqr_area := rad * rad;
  6             return  v_sqr_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9    v_tri_area number;
 10    BEGIN
 11      v_tri_area := 0.5 * b * h;
 12      return v_tri_area ;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    v_cir_area number;
 16    BEGIN
 17      v_cir_area := 3.14 * rad * rad;
 18      return v_cir_area ;
 19    END cir_area;
 20* END area_pack;
SQL> /

Warning: Package created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE BODY area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_sqr_area number(3);
  4            BEGIN
  5              v_sqr_area := rad * rad;
  6             return  v_sqr_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9    v_tri_area number;
 10    BEGIN
 11      v_tri_area := 0.5 * b * h;
 12      return v_tri_area ;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    v_cir_area number;
 16    BEGIN
 17      v_cir_area := 3.14 * rad * rad;
 18      return v_cir_area ;
 19    END cir_area;
 20* END area_pack;
SQL> /

Warning: Package Body created with compilation errors.

SQL> ED
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update on emp
  3  begin
  4  dbms_output.put_line('Good morning');
  5* end;
SQL> /

Trigger created.

SQL> update emp set sal =1000 where empno=7369;

1 row updated.

SQL> set serveroutput on
SQL> update emp set sal =1000 where empno=7369;
Good morning                                                                                                            

1 row updated.

SQL> update emp set sal =800 where empno=7369;
Good morning                                                                                                            

1 row updated.

SQL> ed
Wrote file afiedt.buf

  1* select text from user_sources where name='MY_TRIG'
SQL> /
select text from user_sources where name='MY_TRIG'
                 *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* select text from user_source where name='MY_TRIG'
SQL> /

TEXT                                                                                                                    
------------------------------------------------------------------------------------------------------------------------
trigger my_trig                                                                                                         
after update on emp                                                                                                     
begin                                                                                                                   
dbms_output.put_line('Good morning');                                                                                   
end;                                                                                                                    

SQL> trigger my_trig
SP2-0734: unknown command beginning "trigger my..." - rest of line ignored.
SQL> after update on emp
SP2-0734: unknown command beginning "after upda..." - rest of line ignored.
SQL> begin
  2  dbms_output.put_line('Good morning');
  3  end;/
  4  /
end;/
    *
ERROR at line 3:
ORA-06550: line 3, column 5: 
PLS-00103: Encountered the symbol "/" The symbol "/" was ignored. 


SQL> ed
Wrote file afiedt.buf

  1  trigger my_trig
  2  after delete on emp
  3  begin
  4  dbms_output.put_line('Delete On EMP table performed');
  5* end;
SQL> /
trigger my_trig
*
ERROR at line 1:
ORA-00900: invalid SQL statement 


SQL> eed
SP2-0042: unknown command "eed" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  trigger del_trig
  2  after delete on emp
  3  begin
  4  dbms_output.put_line('Delete On EMP table performed');
  5* end;
SQL> /
trigger del_trig
*
ERROR at line 1:
ORA-00900: invalid SQL statement 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after delete on emp
  3  begin
  4  dbms_output.put_line('Delete On EMP table performed');
  5* end;
SQL> /

Trigger created.

SQL> delete from emp where empno=7369;
Delete On EMP table performed                                                                                           

1 row deleted.

SQL> roll back
Rollback complete.
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select * from emp
SQL> ed
Wrote file afiedt.buf

  1   create or replace trigger my_trig
  2   after insert on emp
  3   begin
  4   dbms_output.put_line('Insertion On EMP table performed');
  5   end;
  6*  /
SQL> /

Warning: Trigger created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1   create or replace trigger my_trig
  2   after insert on emp
  3   begin
  4   dbms_output.put_line('Insertion On EMP table performed');
  5*  end;
SQL> /

Trigger created.

SQL> insert into emp (empno) values(8000);
Insertion On EMP table performed                                                                                        

1 row created.

SQL> roll back;
Rollback complete.
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4  dbms_output.put_line('DML performed on EMP table');
  5* end;
SQL> /

Trigger created.

SQL> insert into emp(empno, ename) values(8000,'ELAN');
DML performed on EMP table                                                                                              

1 row created.

SQL> update emp set sal = 5000 where empno=8000;
DML performed on EMP table                                                                                              

1 row updated.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   
      8000 ELAN                                            5000                                                         

15 rows selected.

SQL> delete from emp where empno = 8000;
DML performed on EMP table                                                                                              

1 row deleted.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> commit;

Commit complete.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4    IF INSERT on emp THEN
  5      dbms_output.put_line('Row Inserted');
  6    ELSIF DELETE on emp THEN
  7      dbms_output.put_line('Row Deleted');
  8    ELSIF UPDATE on emp THEN
  9      dbms_output.put_line('Row Updated');
 10* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4    IF INSERTING THEN
  5      dbms_output.put_line('Row Inserted');
  6    ELSIF DELETING THEN
  7      dbms_output.put_line('Row Deleted');
  8    ELSIF UPDATING on emp THEN
  9      dbms_output.put_line('Row Updated');
 10* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> ED
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4    IF INSERT THEN
  5      dbms_output.put_line('Row Inserted');
  6    ELSIF DELETE THEN
  7      dbms_output.put_line('Row Deleted');
  8    ELSIF UPDATE on emp THEN
  9      dbms_output.put_line('Row Updated');
 10* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4    IF INSERT THEN
  5      dbms_output.put_line('Row Inserted');
  6    ELSIF DELETE THEN
  7      dbms_output.put_line('Row Deleted');
  8    ELSIF UPDATE on emp THEN
  9      dbms_output.put_line('Row Updated');
 10    END IF;
 11* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4    IF INSERTING THEN
  5      dbms_output.put_line('Row Inserted');
  6    ELSIF DELETING THEN
  7      dbms_output.put_line('Row Deleted');
  8    ELSIF UPDATING on emp THEN
  9      dbms_output.put_line('Row Updated');
 10    END IF;
 11* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> SHOW ERR
Errors for TRIGGER MY_TRIG:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
6/18     PLS-00103: Encountered the symbol "ON" when expecting one of the                                               
         following:                                                                                                     
         . ( * @ % & = - + < / > at in is mod remainder not rem then                                                    
         <an exponent (**)> <> or != or ~= >= <= <> and or like like2                                                   
         like4 likec between || multiset member submultiset                                                             
         The symbol ". was inserted before "ON" to continue.                                                            
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after insert or update or delete on emp
  3  begin
  4    IF INSERTING THEN
  5      dbms_output.put_line('Row Inserted');
  6    ELSIF DELETING THEN
  7      dbms_output.put_line('Row Deleted');
  8    ELSIF UPDATING THEN
  9      dbms_output.put_line('Row Updated');
 10    END IF;
 11* end;
SQL> /

Trigger created.

SQL> insert into emp (empno,ename) values(8000,'ELAN');
Row Inserted                                                                                                            

1 row created.

SQL> update emp set sal=10000 where empno=8000;
Row Updated                                                                                                             

1 row updated.

SQL> delete from emp where empno=8000;
Row Deleted                                                                                                             

1 row deleted.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger restrict_sal
  2    before update of salary on emp when to_char(sysdate,'day')='SATURDAY' or to_char(sysdate,'day')='SUNDAY' or to_char(sysdate,'day')='TUESDAY'  
  3  begin
  4    IF updating THEN
  5       dbms_output.put_line('Access Denied');
  6    END IF;
  7* END;
SQL> /
  before update of salary on emp when to_char(sysdate,'day')='SATURDAY' or to_char(sysdate,'day')='SUNDAY' or to_char(sysdate,'day')='TUESDAY'  
                                 *
ERROR at line 2:
ORA-04077: WHEN clause cannot be used with table level triggers 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger restrict_sal
  2    before update of salary on emp 
  3  begin
  4    IF to_char(sysdate,'DY') in ('SAT','SUN','TUE') THEN
  5       RAISE_APPLICATION_ERROR(-20500,'You are not allowed to modify data on a holiday');
  6    END IF;
  7* END;
SQL> /
  before update of salary on emp 
                   *
ERROR at line 2:
ORA-00904: "SALARY": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger restrict_sal
  2    before update on emp 
  3  begin
  4    IF to_char(sysdate,'DY') in ('SAT','SUN','TUE') THEN
  5       RAISE_APPLICATION_ERROR(-20500,'You are not allowed to modify data on a holiday');
  6    END IF;
  7* END;
SQL> /

Trigger created.

SQL> update emp set sal=sal+1000 where empno=7369;
update emp set sal=sal+1000 where empno=7369
       *
ERROR at line 1:
ORA-20500: You are not allowed to modify data on a holiday 
ORA-06512: at "SCOTT.RESTRICT_SAL", line 3 
ORA-04088: error during execution of trigger 'SCOTT.RESTRICT_SAL' 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger restrict_sal
  2    after update on emp for each row
  3  begin
  4    dbms_output.put_line('row updated');
  5* END;
SQL> /

Trigger created.

SQL> update set sal = sal+1 where deptno = 20;
update set sal = sal+1 where deptno = 20
       *
ERROR at line 1:
ORA-00903: invalid table name 


SQL> update emp set sal = sal+1 where deptno = 20;
row updated                                                                                                             
row updated                                                                                                             
row updated                                                                                                             
row updated                                                                                                             
row updated                                                                                                             
Row Updated                                                                                                             

5 rows updated.

SQL> roll back
Rollback complete.
SQL> select * from emp
  2  /

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       5000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> select object_name from user_source where name like '%TRI';
select object_name from user_source where name like '%TRI'
       *
ERROR at line 1:
ORA-00904: "OBJECT_NAME": invalid identifier 


SQL> select object_name from user_triggers;
select object_name from user_triggers
       *
ERROR at line 1:
ORA-00904: "OBJECT_NAME": invalid identifier 


SQL> desc user_triggers;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 TRIGGER_NAME                                                               VARCHAR2(30)
 TRIGGER_TYPE                                                               VARCHAR2(16)
 TRIGGERING_EVENT                                                           VARCHAR2(227)
 TABLE_OWNER                                                                VARCHAR2(30)
 BASE_OBJECT_TYPE                                                           VARCHAR2(16)
 TABLE_NAME                                                                 VARCHAR2(30)
 COLUMN_NAME                                                                VARCHAR2(4000)
 REFERENCING_NAMES                                                          VARCHAR2(128)
 WHEN_CLAUSE                                                                VARCHAR2(4000)
 STATUS                                                                     VARCHAR2(8)
 DESCRIPTION                                                                VARCHAR2(4000)
 ACTION_TYPE                                                                VARCHAR2(11)
 TRIGGER_BODY                                                               LONG
 CROSSEDITION                                                               VARCHAR2(7)
 BEFORE_STATEMENT                                                           VARCHAR2(3)
 BEFORE_ROW                                                                 VARCHAR2(3)
 AFTER_ROW                                                                  VARCHAR2(3)
 AFTER_STATEMENT                                                            VARCHAR2(3)
 INSTEAD_OF_ROW                                                             VARCHAR2(3)
 FIRE_ONCE                                                                  VARCHAR2(3)
 APPLY_SERVER_ONLY                                                          VARCHAR2(3)

SQL> select trigger_name from user_triggers;

TRIGGER_NAME                                                                                                            
------------------------------                                                                                          
RESTRICT_SAL                                                                                                            
MY_TRIG                                                                                                                 

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update on emp for each row
  3  begin
  4  dbms_output.put_line('OLD VALUE:  '||OLD.sal);
  5  dbms_output.put_line('NEW VALUE:  '||NEW.sal);
  6* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> show err
Errors for TRIGGER MY_TRIG:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
2/1      PL/SQL: Statement ignored                                                                                      
2/38     PLS-00201: identifier 'OLD.SAL' must be declared                                                               
3/1      PL/SQL: Statement ignored                                                                                      
3/41     PLS-00201: identifier 'NEW.SAL' must be declared                                                               
SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update on emp for each row
  3  begin
  4  dbms_output.put_line('OLD VALUE:  '||:OLD.sal);
  5  dbms_output.put_line('NEW VALUE:  '||:NEW.sal);
  6* end;
SQL> /

Trigger created.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update on emp for each row
  3  begin
  4  dbms_output.put_line('OLD VALUE:  '||:OLD.sal||'  '||'NEW VALUE:  '||:NEW.sal);
  5* end;
SQL> /

Trigger created.

SQL> update emp set sal=sal+1000 where deptno=10;
row updated                                                                                                             
OLD VALUE:  2450  NEW VALUE:  3450                                                                                      
row updated                                                                                                             
OLD VALUE:  5000  NEW VALUE:  6000                                                                                      
row updated                                                                                                             
OLD VALUE:  1300  NEW VALUE:  2300                                                                                      

3 rows updated.

SQL> drop trigger restrict_sal;

Trigger dropped.

SQL> update emp set sal=sal+1000 where deptno=10;
OLD VALUE:  3450  NEW VALUE:  4450                                                                                      
OLD VALUE:  6000  NEW VALUE:  7000                                                                                      
OLD VALUE:  2300  NEW VALUE:  3300                                                                                      

3 rows updated.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update on emp for each row
  3  begin
  4  dbms_output.put_line('OLD VALUE:  '||:OLD.sal||'  '||'NEW VALUE:  '||:NEW.sal);
  5* end;
SQL> /

Trigger created.

SQL> update emp set sal=sal-1000 where deptno=10;
OLD VALUE:  4450  NEW VALUE:  3450                                                                                      
OLD VALUE:  7000  NEW VALUE:  6000                                                                                      
OLD VALUE:  3300  NEW VALUE:  2300                                                                                      

3 rows updated.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update, insert, delete on emp for each row
  3  begin
  4  dbms_output.put_line('OLD VALUE:  '||:OLD.sal||'  '||'NEW VALUE:  '||:NEW.sal);
  5* end;
SQL> /
after update, insert, delete on emp for each row
            *
ERROR at line 2:
ORA-00969: missing ON keyword 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger my_trig
  2  after update or insert or delete on emp for each row
  3  begin
  4  dbms_output.put_line('OLD VALUE:  '||:OLD.sal||'  '||'NEW VALUE:  '||:NEW.sal);
  5* end;
SQL> /

Trigger created.

SQL> insert into emp(empno, ename) values(8000,'ELAN');
OLD VALUE:    NEW VALUE:                                                                                                

1 row created.

SQL> update emp set sal=1000 where empno=8000;
OLD VALUE:    NEW VALUE:  1000                                                                                          

1 row updated.

SQL> delete from emp where empno =8000;
OLD VALUE:  1000  NEW VALUE:                                                                                            

1 row deleted.

SQL> ed
Wrote file afiedt.buf

  1  CREATE TABLE t_track
  2  ( sno number primary key,
  3    t_date date,
  4    t_user user,
  5    old_value number,
  6*   new_value number)
SQL> /
  t_user user,
         *
ERROR at line 4:
ORA-00902: invalid datatype 


SQL> ed
Wrote file afiedt.buf

  1  CREATE TABLE t_track
  2  ( sno number primary key,
  3    t_date date,
  4    t_user varchar2(20),
  5    old_value number,
  6*   new_value number)
SQL> /

Table created.

SQL> drop sequence s1;

Sequence dropped.

SQL> create sequence s1;

Sequence created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4  insert into t_trace values (s1.nextval, sysdate, user, :old.sal, :new.sal);
  5* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> show err
Errors for TRIGGER MY_TRIG:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
2/1      PL/SQL: SQL Statement ignored                                                                                  
2/13     PL/SQL: ORA-00942: table or view does not exist                                                                
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4  insert into t_track values (s1.nextval, sysdate, user, :old.sal, :new.sal);
  5* end;
SQL> /

Trigger created.

SQL> select sal from emp where empname ='SCOTT';
select sal from emp where empname ='SCOTT'
                          *
ERROR at line 1:
ORA-00904: "EMPNAME": invalid identifier 


SQL> select sal from emp where ename ='SCOTT'
  2  /

       SAL                                                                                                              
----------                                                                                                              
      3000                                                                                                              

SQL> update emp set sal = sal+1 where ename = 'SCOTT';

1 row updated.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         1 23-JUL-19 SCOTT                      3000       3001                                                         

SQL> update emp set sal = sal+1 where ename = 'ADAMS';

1 row updated.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         1 23-JUL-19 SCOTT                      3000       3001                                                         
         2 23-JUL-19 SCOTT                      1100       1101                                                         

SQL> ROLL BACK;
Rollback complete.
SQL> select * from t_track;

no rows selected

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4  insert into t_track values (s1.nextval, sysdate, user, :old.sal, :new.sal);
  5* end;
SQL> DROP SEQUENCE S1;

Sequence dropped.

SQL> CREATE SEQUENCE S1;

Sequence created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4  insert into t_track values (s1.nextval, sysdate, user, :old.sal, :new.sal);
  5  commit;
  6* end;
SQL> /

Trigger created.

SQL> update emp set sal = sal+1 where ename = 'SCOTT';
update emp set sal = sal+1 where ename = 'SCOTT'
       *
ERROR at line 1:
ORA-04092: cannot COMMIT in a trigger 
ORA-06512: at "SCOTT.MY_TRIG", line 3 
ORA-04088: error during execution of trigger 'SCOTT.MY_TRIG' 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4  insert into t_track values (s1.nextval, sysdate, user, :old.sal, :new.sal);
  5* end;
SQL> /

Trigger created.

SQL> update emp set sal = sal+1 where ename = 'SCOTT';

1 row updated.

SQL> update emp set sal = sal+1 where ename = 'ADAMS';

1 row updated.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         2 23-JUL-19 SCOTT                      3000       3001                                                         
         3 23-JUL-19 SCOTT                      1100       1101                                                         

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PROCEDURE at_prc
  2  as
  3  pragma autonomous_transaction;
  4  begin
  5  insert into t_track values (s1.nextval, sysdate, user, :old.sal, :new.sal);
  6  commit;
  7* end;
  8  /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PROCEDURE at_proc
  2  as
  3  pragma autonomous_transaction;
  4  begin
  5  insert into t_track values (s1.nextval, sysdate, user, 1000, 10001);
  6  commit;
  7* end;
SQL> /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4    at_proc;
  5* end;
SQL> /

Trigger created.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         2 23-JUL-19 SCOTT                      3000       3001                                                         
         3 23-JUL-19 SCOTT                      1100       1101                                                         

SQL> update emp set sal=sal where ename ='SCOTT';

1 row updated.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         2 23-JUL-19 SCOTT                      3000       3001                                                         
         3 23-JUL-19 SCOTT                      1100       1101                                                         
         4 23-JUL-19 SCOTT                      1000      10001                                                         

SQL> roll back
Rollback complete.
SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         2 23-JUL-19 SCOTT                      3000       3001                                                         
         3 23-JUL-19 SCOTT                      1100       1101                                                         
         4 23-JUL-19 SCOTT                      1000      10001                                                         

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PROCEDURE at_prc(old_sal number, new_sal number)
  2  as
  3  pragma autonomous_transaction;
  4  begin
  5  insert into t_track values (s1.nextval, sysdate, user, old_sal, new_sal);
  6  commit;
  7* end;
SQL> /

Procedure created.

SQL> CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4    at_proc;
  5  end;
  6  ed
  7  /

Warning: Trigger created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4    at_proc(:old.sal, :new.sal);
  5* end;
SQL> /

Warning: Trigger created with compilation errors.

SQL> show err
Errors for TRIGGER MY_TRIG:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
2/3      PL/SQL: Statement ignored                                                                                      
2/3      PLS-00306: wrong number or types of arguments in call to                                                       
         'AT_PROC'                                                                                                      
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE PROCEDURE at_proc(old_sal number, new_sal number)
  2  as
  3  pragma autonomous_transaction;
  4  begin
  5  insert into t_track values (s1.nextval, sysdate, user, old_sal, new_sal);
  6  commit;
  7* end;
SQL> /

Procedure created.

SQL> CREATE OR REPLACE trigger my_trig
  2  after update on emp for each row
  3  begin
  4    at_proc(:old.sal, :new.sal);
  5  end;
  6  /

Trigger created.

SQL> update emp set sal=sal where ename ='SCOTT';

1 row updated.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         2 23-JUL-19 SCOTT                      3000       3001                                                         
         3 23-JUL-19 SCOTT                      1100       1101                                                         
         4 23-JUL-19 SCOTT                      1000      10001                                                         
         5 23-JUL-19 SCOTT                      3001       3001                                                         

SQL> update emp set sal=sal+1 where ename ='SCOTT';

1 row updated.

SQL> select * from t_track;

       SNO T_DATE    T_USER                OLD_VALUE  NEW_VALUE                                                         
---------- --------- -------------------- ---------- ----------                                                         
         2 23-JUL-19 SCOTT                      3000       3001                                                         
         3 23-JUL-19 SCOTT                      1100       1101                                                         
         4 23-JUL-19 SCOTT                      1000      10001                                                         
         5 23-JUL-19 SCOTT                      3001       3001                                                         
         6 23-JUL-19 SCOTT                      3001       3002                                                         

SQL> roll back
Rollback complete.
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       3450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       3001                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       6000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1101                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       2300                    10                                   

14 rows selected.

SQL> update emp set sal=1000 where ename ='SCOTT';

1 row updated.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81       3450                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82       1000                    20                                   
      7839 KING       PRESIDENT            17-NOV-81       6000                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1101                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       2300                    10                                   

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE BODY area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_sqr_area number(3);
  4            BEGIN
  5              v_sqr_area := rad * rad;
  6             return  v_sqr_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9    v_tri_area number;
 10    BEGIN
 11      v_tri_area := 0.5 * b * h;
 12      return v_tri_area ;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    v_cir_area number;
 16    BEGIN
 17      v_cir_area := 3.14 * rad * rad;
 18      return v_cir_area ;
 19    END cir_area;
 20* END area_pack;
SQL> /

Warning: Package Body created with compilation errors.

SQL> show err
Errors for PACKAGE BODY AREA_PACK:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
0/0      PL/SQL: Compilation unit analysis terminated                                                                   
1/14     PLS-00304: cannot compile body of 'AREA_PACK' without its                                                      
         specification                                                                                                  
                                                                                                                        
1/14     PLS-00905: object SCOTT.AREA_PACK is invalid                                                                   
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE area_pack IS
  2    FUNCTION sqr_area (rad number) return number;
  3    FUNCTION tri_area (b number, h number) return number;
  4    FUNCTION cir_area (rad number) return number ;
  5* END area_pack;
SQL> /

Package created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE PACKAGE BODY area_pack IS
  2    FUNCTION sqr_area (rad number) return number is
  3            v_sqr_area number(3);
  4            BEGIN
  5              v_sqr_area := rad * rad;
  6             return  v_sqr_area;
  7    END sqr_area;
  8    FUNCTION tri_area (b number, h number) return number is
  9    v_tri_area number;
 10    BEGIN
 11      v_tri_area := 0.5 * b * h;
 12      return v_tri_area ;
 13    END tri_area;
 14    FUNCTION cir_area (rad number) return number is
 15    v_cir_area number;
 16    BEGIN
 17      v_cir_area := 3.14 * rad * rad;
 18      return v_cir_area ;
 19    END cir_area;
 20* END area_pack;
SQL> /

Package body created.

SQL> select area_pack.sqr_area(5) from dual;

AREA_PACK.SQR_AREA(5)                                                                                                   
---------------------                                                                                                   
                   25                                                                                                   

SQL> select area_pack.tri_area(5,10) from dual;

AREA_PACK.TRI_AREA(5,10)                                                                                                
------------------------                                                                                                
                      25                                                                                                

SQL> select area_pack.cir_area(10) from dual;

AREA_PACK.CIR_AREA(10)                                                                                                  
----------------------                                                                                                  
                   314                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1  create view complex_view as
  2  select e.deptno, d.dname, sum(e.sal) sum_sal
  3  from emp e join dept d on (e.deptno=d.deptno)
  4* group by e.deptno, d.dname
SQL> /

View created.

SQL> select * from complex_view;

    DEPTNO DNAME             SUM_SAL                                                                                    
---------- -------------- ----------                                                                                    
        10 ACCOUNTING          11750                                                                                    
        20 RESEARCH             8876                                                                                    
        30 SALES                8550                                                                                    

SQL> ed
Wrote file afiedt.buf

  1* update complex_view set dname='sale' where dname ='SALES'
SQL> /
update complex_view set dname='sale' where dname ='SALES'
       *
ERROR at line 1:
ORA-01732: data manipulation operation not legal on this view 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger instead_of_trigger
  2  instead of update on complex_view for each row
  3  begin
  4  update dept set dname = :new.dname where dname = :old.dname;
  5* end;
SQL> /

Trigger created.

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       

SQL> update complex_view set dname='sale' where dname='SALES';

1 row updated.

SQL> SELECT * FROM DEPT;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 sale           CHICAGO                                                                                       

SQL> select * from complex_view;

    DEPTNO DNAME             SUM_SAL                                                                                    
---------- -------------- ----------                                                                                    
        10 ACCOUNTING          11750                                                                                    
        20 RESEARCH             8876                                                                                    
        30 sale                 8550                                                                                    

SQL> update complex_view set loc='CHENNAI' where loc='CHICAGO';
update complex_view set loc='CHENNAI' where loc='CHICAGO'
                                            *
ERROR at line 1:
ORA-00904: "LOC": invalid identifier 


SQL> insert into dept values(40, 'CS', 'chennai');

1 row created.

SQL> update complex_view set loc='CHENNAI' where loc='CHICAGO';
update complex_view set loc='CHENNAI' where loc='CHICAGO'
                                            *
ERROR at line 1:
ORA-00904: "LOC": invalid identifier 


SQL> select * from complex_view;

    DEPTNO DNAME             SUM_SAL                                                                                    
---------- -------------- ----------                                                                                    
        10 ACCOUNTING          11750                                                                                    
        20 RESEARCH             8876                                                                                    
        30 sale                 8550                                                                                    

SQL> select text from user_sources where name='COMPLEX_VIEW';
select text from user_sources where name='COMPLEX_VIEW'
                 *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select text from user_source where name='COMPLEX_VIEW';

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger instead_of_trigger
  2  instead of update on complex_view for each row
  3  begin
  4  update dept set dname = :new.dname where dname= :old.dname;
  5* end;
SQL> /

Trigger created.

SQL> update complex_view set loc='CHENNAI' where loc='CHICAGO';
update complex_view set loc='CHENNAI' where loc='CHICAGO'
                                            *
ERROR at line 1:
ORA-00904: "LOC": invalid identifier 


SQL> update complex_view set dname='SALES' where dname='sale';

1 row updated.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        40 CS             chennai                                                                                       

SQL> select * from complex_view
  2  /

    DEPTNO DNAME             SUM_SAL                                                                                    
---------- -------------- ----------                                                                                    
        10 ACCOUNTING          11750                                                                                    
        20 RESEARCH             8876                                                                                    
        30 SALES                8550                                                                                    

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE procedure find_mgr
  2  ( p_staff_code IN OUT staff_masters.staff_code%type,
  3    P_staff_name OUT staff_masters.staff_name%type,
  4    p_dept_code OUT staff_masters.dept_code%type,
  5    p_mgr_code OUT staff_masters.mgr_code%type) is
  6  BEGIN
  7    SELECT staff_code, staff_name, dept_code, mgr_code INTO p_staff_code, p_staff_name, p_dept_code, p_mgr_code FROM staff_masters WHERE staff_code = p_staff_code;
  8* END;
SQL> /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_staff_name staff_masters.staff_name%type;
  3    v_dept_code staff_masters.dept_code%type;
  4    v_mgr_code staff_masters.mgr_code%type;
  5  BEGIN
  6    exec find_mgr(100005,v_staff_name,v_dept_code,v_mgr_code);
  7    dbms_output.put_line(v_staff_name||' '||v_dept_code||' '||' '||v_mgr_code);
  8* END;
SQL> /
  exec find_mgr(100005,v_staff_name,v_dept_code,v_mgr_code);
       *
ERROR at line 6:
ORA-06550: line 6, column 8: 
PLS-00103: Encountered the symbol "FIND_MGR" when expecting one of the following: 
:= . ( @ % ; 
The symbol ":=" was substituted for "FIND_MGR" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_staff_name staff_masters.staff_name%type;
  3    v_dept_code staff_masters.dept_code%type;
  4    v_mgr_code staff_masters.mgr_code%type;
  5  BEGIN
  6    find_mgr(100005,v_staff_name,v_dept_code,v_mgr_code);
  7    dbms_output.put_line(v_staff_name||' '||v_dept_code||' '||' '||v_mgr_code);
  8* END;
SQL> /
  find_mgr(100005,v_staff_name,v_dept_code,v_mgr_code);
           *
ERROR at line 6:
ORA-06550: line 6, column 12: 
PLS-00363: expression '100005' cannot be used as an assignment target 
ORA-06550: line 6, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger 
  2  equitable salary_trg
  3   after insert or update on employees for each row
  4  declare
  5    i_max_allowed employees.salary%type;
  6  begin
  7    select min(salary)*25 into i_max_allowed from employees;
  8    if i_max_allowed < :new.salary then
  9      update employees set salary = i_max_allowed where employee_id = :new.employee_id;
 10*   end if;
SQL> /
equitable salary_trg
          *
ERROR at line 2:
ORA-04071: missing BEFORE, AFTER or INSTEAD OF keyword 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger 
  2  equitable_salary_trg
  3   after insert or update on employees for each row
  4  declare
  5    i_max_allowed employees.salary%type;
  6  begin
  7    select min(salary)*25 into i_max_allowed from employees;
  8    if i_max_allowed < :new.salary then
  9      update employees set salary = i_max_allowed where employee_id = :new.employee_id;
 10    end if;
 11* end equitable_salary_trg;
SQL> /

Trigger created.

SQL> select * from employees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        100 Steven               King                      SKING                     515.123.4567         17-JUN-87     
AD_PRES         24000                                      90                                                           
                                                                                                                        
        101 Neena                Kochhar                   NKOCHHAR                  515.123.4568         21-SEP-89     
AD_VP           17000                       100            90                                                           
                                                                                                                        
        102 Lex                  De Haan                   LDEHAAN                   515.123.4569         13-JAN-93     
AD_VP           17000                       100            90                                                           
                                                                                                                        
        103 Alexander            Hunold                    AHUNOLD                   590.423.4567         03-JAN-90     
IT_PROG          9000                       102            60                                                           
                                                                                                                        
        104 Bruce                Ernst                     BERNST                    590.423.4568         21-MAY-91     
IT_PROG          6000                       103            60                                                           
                                                                                                                        
        105 David                Austin                    DAUSTIN                   590.423.4569         25-JUN-97     
IT_PROG          4800                       103            60                                                           
                                                                                                                        
        106 Valli                Pataballa                 VPATABAL                  590.423.4560         05-FEB-98     
IT_PROG          4800                       103            60                                                           
                                                                                                                        
        107 Diana                Lorentz                   DLORENTZ                  590.423.5567         07-FEB-99     
IT_PROG          4200                       103            60                                                           
                                                                                                                        
        108 Nancy                Greenberg                 NGREENBE                  515.124.4569         17-AUG-94     
FI_MGR          12000                       101           100                                                           
                                                                                                                        
        109 Daniel               Faviet                    DFAVIET                   515.124.4169         16-AUG-94     
FI_ACCOUNT       9000                       108           100                                                           
                                                                                                                        
        110 John                 Chen                      JCHEN                     515.124.4269         28-SEP-97     
FI_ACCOUNT       8200                       108           100                                                           
                                                                                                                        
        111 Ismael               Sciarra                   ISCIARRA                  515.124.4369         30-SEP-97     
FI_ACCOUNT       7700                       108           100                                                           
                                                                                                                        
        112 Jose Manuel          Urman                     JMURMAN                   515.124.4469         07-MAR-98     
FI_ACCOUNT       7800                       108           100                                                           
                                                                                                                        
        113 Luis                 Popp                      LPOPP                     515.124.4567         07-DEC-99     
FI_ACCOUNT       6900                       108           100                                                           
                                                                                                                        
        114 Den                  Raphaely                  DRAPHEAL                  515.127.4561         07-DEC-94     
PU_MAN          11000                       100            30                                                           
                                                                                                                        
        115 Alexander            Khoo                      AKHOO                     515.127.4562         18-MAY-95     
PU_CLERK         3100                       114            30                                                           
                                                                                                                        
        116 Shelli               Baida                     SBAIDA                    515.127.4563         24-DEC-97     
PU_CLERK         2900                       114            30                                                           
                                                                                                                        
        117 Sigal                Tobias                    STOBIAS                   515.127.4564         24-JUL-97     
PU_CLERK         2800                       114            30                                                           
                                                                                                                        
        118 Guy                  Himuro                    GHIMURO                   515.127.4565         15-NOV-98     
PU_CLERK         2600                       114            30                                                           
                                                                                                                        
        119 Karen                Colmenares                KCOLMENA                  515.127.4566         10-AUG-99     
PU_CLERK         2500                       114            30                                                           
                                                                                                                        
        120 Matthew              Weiss                     MWEISS                    650.123.1234         18-JUL-96     
ST_MAN           8000                       100            50                                                           
                                                                                                                        
        121 Adam                 Fripp                     AFRIPP                    650.123.2234         10-APR-97     
ST_MAN           8200                       100            50                                                           
                                                                                                                        
        122 Payam                Kaufling                  PKAUFLIN                  650.123.3234         01-MAY-95     
ST_MAN           7900                       100            50                                                           
                                                                                                                        
        123 Shanta               Vollman                   SVOLLMAN                  650.123.4234         10-OCT-97     
ST_MAN           6500                       100            50                                                           
                                                                                                                        
        124 Kevin                Mourgos                   KMOURGOS                  650.123.5234         16-NOV-99     
ST_MAN           5800                       100            50                                                           
                                                                                                                        
        125 Julia                Nayer                     JNAYER                    650.124.1214         16-JUL-97     
ST_CLERK         3200                       120            50                                                           
                                                                                                                        
        126 Irene                Mikkilineni               IMIKKILI                  650.124.1224         28-SEP-98     
ST_CLERK         2700                       120            50                                                           
                                                                                                                        
        127 James                Landry                    JLANDRY                   650.124.1334         14-JAN-99     
ST_CLERK         2400                       120            50                                                           
                                                                                                                        
        128 Steven               Markle                    SMARKLE                   650.124.1434         08-MAR-00     
ST_CLERK         2200                       120            50                                                           
                                                                                                                        
        129 Laura                Bissot                    LBISSOT                   650.124.5234         20-AUG-97     
ST_CLERK         3300                       121            50                                                           
                                                                                                                        
        130 Mozhe                Atkinson                  MATKINSO                  650.124.6234         30-OCT-97     
ST_CLERK         2800                       121            50                                                           
                                                                                                                        
        131 James                Marlow                    JAMRLOW                   650.124.7234         16-FEB-97     
ST_CLERK         2500                       121            50                                                           
                                                                                                                        
        132 TJ                   Olson                     TJOLSON                   650.124.8234         10-APR-99     
ST_CLERK         2100                       121            50                                                           
                                                                                                                        
        133 Jason                Mallin                    JMALLIN                   650.127.1934         14-JUN-96     
ST_CLERK         3300                       122            50                                                           
                                                                                                                        
        134 Michael              Rogers                    MROGERS                   650.127.1834         26-AUG-98     
ST_CLERK         2900                       122            50                                                           
                                                                                                                        
        135 Ki                   Gee                       KGEE                      650.127.1734         12-DEC-99     
ST_CLERK         2400                       122            50                                                           
                                                                                                                        
        136 Hazel                Philtanker                HPHILTAN                  650.127.1634         06-FEB-00     
ST_CLERK         2200                       122            50                                                           
                                                                                                                        
        137 Renske               Ladwig                    RLADWIG                   650.121.1234         14-JUL-95     
ST_CLERK         3600                       123            50                                                           
                                                                                                                        
        138 Stephen              Stiles                    SSTILES                   650.121.2034         26-OCT-97     

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
ST_CLERK         3200                       123            50                                                           
                                                                                                                        
        139 John                 Seo                       JSEO                      650.121.2019         12-FEB-98     
ST_CLERK         2700                       123            50                                                           
                                                                                                                        
        140 Joshua               Patel                     JPATEL                    650.121.1834         06-APR-98     
ST_CLERK         2500                       123            50                                                           
                                                                                                                        
        141 Trenna               Rajs                      TRAJS                     650.121.8009         17-OCT-95     
ST_CLERK         3500                       124            50                                                           
                                                                                                                        
        142 Curtis               Davies                    CDAVIES                   650.121.2994         29-JAN-97     
ST_CLERK         3100                       124            50                                                           
                                                                                                                        
        143 Randall              Matos                     RMATOS                    650.121.2874         15-MAR-98     
ST_CLERK         2600                       124            50                                                           
                                                                                                                        
        144 Peter                Vargas                    PVARGAS                   650.121.2004         09-JUL-98     
ST_CLERK         2500                       124            50                                                           
                                                                                                                        
        145 John                 Russell                   JRUSSEL                   011.44.1344.429268   01-OCT-96     
SA_MAN          14000             .4        100            80                                                           
                                                                                                                        
        146 Karen                Partners                  KPARTNER                  011.44.1344.467268   05-JAN-97     
SA_MAN          13500             .3        100            80                                                           
                                                                                                                        
        147 Alberto              Errazuriz                 AERRAZUR                  011.44.1344.429278   10-MAR-97     
SA_MAN          12000             .3        100            80                                                           
                                                                                                                        
        148 Gerald               Cambrault                 GCAMBRAU                  011.44.1344.619268   15-OCT-99     
SA_MAN          11000             .3        100            80                                                           
                                                                                                                        
        149 Eleni                Zlotkey                   EZLOTKEY                  011.44.1344.429018   29-JAN-00     
SA_MAN          10500             .2        100            80                                                           
                                                                                                                        
        150 Peter                Tucker                    PTUCKER                   011.44.1344.129268   30-JAN-97     
SA_REP          10000             .3        145            80                                                           
                                                                                                                        
        151 David                Bernstein                 DBERNSTE                  011.44.1344.345268   24-MAR-97     
SA_REP           9500            .25        145            80                                                           
                                                                                                                        
        152 Peter                Hall                      PHALL                     011.44.1344.478968   20-AUG-97     
SA_REP           9000            .25        145            80                                                           
                                                                                                                        
        153 Christopher          Olsen                     COLSEN                    011.44.1344.498718   30-MAR-98     
SA_REP           8000             .2        145            80                                                           
                                                                                                                        
        154 Nanette              Cambrault                 NCAMBRAU                  011.44.1344.987668   09-DEC-98     
SA_REP           7500             .2        145            80                                                           
                                                                                                                        
        155 Oliver               Tuvault                   OTUVAULT                  011.44.1344.486508   23-NOV-99     
SA_REP           7000            .15        145            80                                                           
                                                                                                                        
        156 Janette              King                      JKING                     011.44.1345.429268   30-JAN-96     
SA_REP          10000            .35        146            80                                                           
                                                                                                                        
        157 Patrick              Sully                     PSULLY                    011.44.1345.929268   04-MAR-96     
SA_REP           9500            .35        146            80                                                           
                                                                                                                        
        158 Allan                McEwen                    AMCEWEN                   011.44.1345.829268   01-AUG-96     
SA_REP           9000            .35        146            80                                                           
                                                                                                                        
        159 Lindsey              Smith                     LSMITH                    011.44.1345.729268   10-MAR-97     
SA_REP           8000             .3        146            80                                                           
                                                                                                                        
        160 Louise               Doran                     LDORAN                    011.44.1345.629268   15-DEC-97     
SA_REP           7500             .3        146            80                                                           
                                                                                                                        
        161 Sarath               Sewall                    SSEWALL                   011.44.1345.529268   03-NOV-98     
SA_REP           7000            .25        146            80                                                           
                                                                                                                        
        162 Clara                Vishney                   CVISHNEY                  011.44.1346.129268   11-NOV-97     
SA_REP          10500            .25        147            80                                                           
                                                                                                                        
        163 Danielle             Greene                    DGREENE                   011.44.1346.229268   19-MAR-99     
SA_REP           9500            .15        147            80                                                           
                                                                                                                        
        164 Mattea               Marvins                   MMARVINS                  011.44.1346.329268   24-JAN-00     
SA_REP           7200             .1        147            80                                                           
                                                                                                                        
        165 David                Lee                       DLEE                      011.44.1346.529268   23-FEB-00     
SA_REP           6800             .1        147            80                                                           
                                                                                                                        
        166 Sundar               Ande                      SANDE                     011.44.1346.629268   24-MAR-00     
SA_REP           6400             .1        147            80                                                           
                                                                                                                        
        167 Amit                 Banda                     ABANDA                    011.44.1346.729268   21-APR-00     
SA_REP           6200             .1        147            80                                                           
                                                                                                                        
        168 Lisa                 Ozer                      LOZER                     011.44.1343.929268   11-MAR-97     
SA_REP          11500            .25        148            80                                                           
                                                                                                                        
        169 Harrison             Bloom                     HBLOOM                    011.44.1343.829268   23-MAR-98     
SA_REP          10000             .2        148            80                                                           
                                                                                                                        
        170 Tayler               Fox                       TFOX                      011.44.1343.729268   24-JAN-98     
SA_REP           9600             .2        148            80                                                           
                                                                                                                        
        171 William              Smith                     WSMITH                    011.44.1343.629268   23-FEB-99     
SA_REP           7400            .15        148            80                                                           
                                                                                                                        
        172 Elizabeth            Bates                     EBATES                    011.44.1343.529268   24-MAR-99     
SA_REP           7300            .15        148            80                                                           
                                                                                                                        
        173 Sundita              Kumar                     SKUMAR                    011.44.1343.329268   21-APR-00     
SA_REP           6100             .1        148            80                                                           
                                                                                                                        
        174 Ellen                Abel                      EABEL                     011.44.1644.429267   11-MAY-96     
SA_REP          11000             .3        149            80                                                           
                                                                                                                        
        175 Alyssa               Hutton                    AHUTTON                   011.44.1644.429266   19-MAR-97     
SA_REP           8800            .25        149            80                                                           
                                                                                                                        
        176 Jonathon             Taylor                    JTAYLOR                   011.44.1644.429265   24-MAR-98     
SA_REP           8600             .2        149            80                                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
                                                                                                                        
        177 Jack                 Livingston                JLIVINGS                  011.44.1644.429264   23-APR-98     
SA_REP           8400             .2        149            80                                                           
                                                                                                                        
        178 Kimberely            Grant                     KGRANT                    011.44.1644.429263   24-MAY-99     
SA_REP           7000            .15        149                                                                         
                                                                                                                        
        179 Charles              Johnson                   CJOHNSON                  011.44.1644.429262   04-JAN-00     
SA_REP           6200             .1        149            80                                                           
                                                                                                                        
        180 Winston              Taylor                    WTAYLOR                   650.507.9876         24-JAN-98     
SH_CLERK         3200                       120            50                                                           
                                                                                                                        
        181 Jean                 Fleaur                    JFLEAUR                   650.507.9877         23-FEB-98     
SH_CLERK         3100                       120            50                                                           
                                                                                                                        
        182 Martha               Sullivan                  MSULLIVA                  650.507.9878         21-JUN-99     
SH_CLERK         2500                       120            50                                                           
                                                                                                                        
        183 Girard               Geoni                     GGEONI                    650.507.9879         03-FEB-00     
SH_CLERK         2800                       120            50                                                           
                                                                                                                        
        184 Nandita              Sarchand                  NSARCHAN                  650.509.1876         27-JAN-96     
SH_CLERK         4200                       121            50                                                           
                                                                                                                        
        185 Alexis               Bull                      ABULL                     650.509.2876         20-FEB-97     
SH_CLERK         4100                       121            50                                                           
                                                                                                                        
        186 Julia                Dellinger                 JDELLING                  650.509.3876         24-JUN-98     
SH_CLERK         3400                       121            50                                                           
                                                                                                                        
        187 Anthony              Cabrio                    ACABRIO                   650.509.4876         07-FEB-99     
SH_CLERK         3000                       121            50                                                           
                                                                                                                        
        188 Kelly                Chung                     KCHUNG                    650.505.1876         14-JUN-97     
SH_CLERK         3800                       122            50                                                           
                                                                                                                        
        189 Jennifer             Dilly                     JDILLY                    650.505.2876         13-AUG-97     
SH_CLERK         3600                       122            50                                                           
                                                                                                                        
        190 Timothy              Gates                     TGATES                    650.505.3876         11-JUL-98     
SH_CLERK         2900                       122            50                                                           
                                                                                                                        
        191 Randall              Perkins                   RPERKINS                  650.505.4876         19-DEC-99     
SH_CLERK         2500                       122            50                                                           
                                                                                                                        
        192 Sarah                Bell                      SBELL                     650.501.1876         04-FEB-96     
SH_CLERK         4000                       123            50                                                           
                                                                                                                        
        193 Britney              Everett                   BEVERETT                  650.501.2876         03-MAR-97     
SH_CLERK         3900                       123            50                                                           
                                                                                                                        
        194 Samuel               McCain                    SMCCAIN                   650.501.3876         01-JUL-98     
SH_CLERK         3200                       123            50                                                           
                                                                                                                        
        195 Vance                Jones                     VJONES                    650.501.4876         17-MAR-99     
SH_CLERK         2800                       123            50                                                           
                                                                                                                        
        196 Alana                Walsh                     AWALSH                    650.507.9811         24-APR-98     
SH_CLERK         3100                       124            50                                                           
                                                                                                                        
        197 Kevin                Feeney                    KFEENEY                   650.507.9822         23-MAY-98     
SH_CLERK         3000                       124            50                                                           
                                                                                                                        
        198 Donald               OConnell                  DOCONNEL                  650.507.9833         21-JUN-99     
SH_CLERK         2600                       124            50                                                           
                                                                                                                        
        199 Douglas              Grant                     DGRANT                    650.507.9844         13-JAN-00     
SH_CLERK         2600                       124            50                                                           
                                                                                                                        
        200 Jennifer             Whalen                    JWHALEN                   515.123.4444         17-SEP-87     
AD_ASST          4400                       101            10                                                           
                                                                                                                        
        201 Michael              Hartstein                 MHARTSTE                  515.123.5555         17-FEB-96     
MK_MAN          13000                       100            20                                                           
                                                                                                                        
        202 Pat                  Fay                       PFAY                      603.123.6666         17-AUG-97     
MK_REP           6000                       201            20                                                           
                                                                                                                        
        203 Susan                Mavris                    SMAVRIS                   515.123.7777         07-JUN-94     
HR_REP           6500                       101            40                                                           
                                                                                                                        
        204 Hermann              Baer                      HBAER                     515.123.8888         07-JUN-94     
PR_REP          10000                       101            70                                                           
                                                                                                                        
        205 Shelley              Higgins                   SHIGGINS                  515.123.8080         07-JUN-94     
AC_MGR          12000                       101           110                                                           
                                                                                                                        
        206 William              Gietz                     WGIETZ                    515.123.8181         07-JUN-94     
AC_ACCOUNT       8300                       205           110                                                           
                                                                                                                        

107 rows selected.

SQL> set pagesize 120
SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger
  2  equitable_salary_trg
  3   after insert or update on employees for each row
  4  declare
  5    i_max_allowed employees.salary%type;
  6  begin
  7    select min(salary)*25 into i_max_allowed from employees;
  8    if i_max_allowed < :new.salary then
  9      update employees set salary = i_max_allowed where employee_id = :new.employee_id;
 10    end if;
 11* end equitable_salary_trg;
SQL> /

Trigger created.

SQL> update employees set salary= 100000 where last_name = 'King';
update employees set salary= 100000 where last_name = 'King'
       *
ERROR at line 1:
ORA-04091: table SCOTT.EMPLOYEES is mutating, trigger/function may not see it 
ORA-06512: at "SCOTT.EQUITABLE_SALARY_TRG", line 4 
ORA-04088: error during execution of trigger 'SCOTT.EQUITABLE_SALARY_TRG' 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger
  2  equitable_salary_trg
  3   after insert or update on emp for each row
  4  declare
  5    i_max_allowed emp.sal%type;
  6  begin
  7    select min(sal)*25 into i_max_allowed from emp;
  8    if i_max_allowed < :new.sal then
  9      update emp set sal = i_max_allowed where empno = :new.empno;
 10    end if;
 11* end equitable_salary_trg;
SQL> /
equitable_salary_trg
*
ERROR at line 2:
ORA-04095: trigger 'EQUITABLE_SALARY_TRG' already exists on another table, cannot replace it 


SQL> drop trigger equitable_salary_trg;

Trigger dropped.

SQL> /
drop trigger equitable_salary_trg
*
ERROR at line 1:
ORA-04080: trigger 'EQUITABLE_SALARY_TRG' does not exist 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger
  2  equitable_salary_trg
  3   after insert or update on emp for each row
  4  declare
  5    i_max_allowed emp.sal%type;
  6  begin
  7    select min(sal)*25 into i_max_allowed from emp;
  8    if i_max_allowed < :new.sal then
  9      update emp set sal = i_max_allowed where empno = :new.empno;
 10    end if;
 11* end equitable_salary_trg;
SQL> /

Trigger created.

SQL> update emp set sal=1000 where empno=7369;
update emp set sal=1000 where empno=7369
       *
ERROR at line 1:
ORA-04091: table SCOTT.EMP is mutating, trigger/function may not see it 
ORA-06512: at "SCOTT.EQUITABLE_SALARY_TRG", line 4 
ORA-04088: error during execution of trigger 'SCOTT.EQUITABLE_SALARY_TRG' 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger compound_trigger_name
  2  for delete or insert or update on emp compound trigger
  3  --declarative section(optional)
  4  --variables declared here have firing statments
  5  before statement is
  6  begin
  7  null;
  8  end before statement;
  9  before each row is
 10  begin 
 11  null;
 12  end before each row;
 13  after each row is
 14  begin
 15  null;
 16  end after each row;
 17  after statement is
 18  begin
 19  null;
 20  end after statment;
 21* end compound_trigger_name;
 22  /

Warning: Trigger created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger compound_trigger_name
  2  for delete or insert or update on emp compound trigger
  3  before statement is
  4    begin
  5    null;
  6  end before statement;
  7  before each row is
  8    begin 
  9    null;
 10  end before each row;
 11  after each row is
 12    begin
 13   null;
 14  end after each row;
 15  after statement is
 16    begin
 17    null;
 18  end after statment;
 19* end compound_trigger_name;
 20  /

Warning: Trigger created with compilation errors.

SQL> show err
Errors for TRIGGER COMPOUND_TRIGGER_NAME:

LINE/COL ERROR                                                                                                          
-------- -----------------------------------------------------------------                                              
17/11    PLS-00103: Encountered the symbol "STATMENT" when expecting one                                                
         of the following:                                                                                              
         statement each                                                                                                 
                                                                                                                        
18/26    PLS-00103: Encountered the symbol "end-of-file" when expecting                                                 
         one of the following:                                                                                          
         end not pragma final instantiable order overriding static                                                      
         member constructor map                                                                                         
                                                                                                                        
SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger compound_trigger_name
  2  for delete or insert or update on emp compound trigger
  3  before statement is
  4    begin
  5    null;
  6  end before statement;
  7  before each row is
  8    begin 
  9    null;
 10  end before each row;
 11  after each row is
 12    begin
 13   null;
 14  end after each row;
 15  after statement is
 16    begin
 17    null;
 18  end after statement;
 19* end compound_trigger_name;
SQL> /.

Trigger created.

SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger compound_trigger_name
  2  for delete or insert or update on emp compound trigger
  3  before statement is
  4    begin
  5    dbms_output.put_line('Before statement level executed');
  6  end before statement;
  7  before each row is
  8    begin 
  9    dbms_output.put_line('Before each row level');
 10  end before each row;
 11  after each row is
 12    begin
 13    dbms_output.put_line('After each row level');
 14  end after each row;
 15  after statement is
 16    begin
 17    dbms_output.put_line('After statement level executed');
 18  end after statement;
 19* end compound_trigger_name;
SQL> /

Trigger created.

SQL> update emp set sal=sal+1 where empno=7900;
Before statement level executed                                                                                         
Before each row level                                                                                                   
After each row level                                                                                                    
update emp set sal=sal+1 where empno=7900
       *
ERROR at line 1:
ORA-04091: table SCOTT.EMP is mutating, trigger/function may not see it 
ORA-06512: at "SCOTT.EQUITABLE_SALARY_TRG", line 4 
ORA-04088: error during execution of trigger 'SCOTT.EQUITABLE_SALARY_TRG' 


SQL> drop trigger equitable_salary_trg;

Trigger dropped.

SQL> update emp set sal=sal+1 where empno=7900;
Before statement level executed                                                                                         
Before each row level                                                                                                   
After each row level                                                                                                    
After statement level executed                                                                                          

1 row updated.

SQL> select ed
  2  ed
  3  /
ed
 *
ERROR at line 2:
ORA-00923: FROM keyword not found where expected 


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger compound_trigger_name
  2  for delete or insert or update on emp compound trigger
  3  before statement is
  4    begin
  5    dbms_output.put_line('Before statement level executed');
  6  end before statement;
  7  before each row is
  8    begin
  9    dbms_output.put_line('Before each row level executed');
 10  end before each row;
 11  after each row is
 12    begin
 13    dbms_output.put_line('After each row level executed');
 14  end after each row;
 15  after statement is
 16    begin
 17    dbms_output.put_line('After statement level executed');
 18  end after statement;
 19* end compound_trigger_name;
SQL> /

Trigger created.

SQL> spool off
