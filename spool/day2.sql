SQL> @C:\Users\karthie\Desktop\RDBMS\PL_SQL\files\select.sql

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7369 SMITH      CLERK           7902 17-DEC-80        800                 
        20                                                                      
                                                                                
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300      
        30                                                                      
                                                                                
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500      
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7566 JONES      MANAGER         7839 02-APR-81       2975                 
        20                                                                      
                                                                                
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400      
        30                                                                      
                                                                                
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                 
        10                                                                      
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3000                 
        20                                                                      
                                                                                
      7839 KING       PRESIDENT            17-NOV-81       5000                 
        10                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0      
        30                                                                      
                                                                                
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                 
        20                                                                      
                                                                                
      7900 JAMES      CLERK           7698 03-DEC-81        950                 
        30                                                                      
                                                                                

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM      
---------- ---------- --------- ---------- --------- ---------- ----------      
    DEPTNO                                                                      
----------                                                                      
      7902 FORD       ANALYST         7566 03-DEC-81       3000                 
        20                                                                      
                                                                                
      7934 MILLER     CLERK           7782 23-JAN-82       1300                 
        10                                                                      
                                                                                

14 rows selected.

SQL> set linesize 120
SQL> set pagesize 120
SQL> @C:\Users\karthie\Desktop\RDBMS\PL_SQL\files\select.sql
  9  
 10  
 11  /
	c = a+b;
	  *
ERROR at line 6:
ORA-06550: line 6, column 4: 
PLS-00103: Encountered the symbol "=" when expecting one of the following: 
:= . ( @ % ; 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  	a number :=5;
  3  	b number :=10;
  4  	c number;
  5  begin
  6  	c := a+b;
  7  	dbms_output.put_line(c);
  8* end;
  9  /
15                                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  	v_sal emp.sal%type;
  3  begin
  4  	select sum(sal) into v_sal from emp;
  5  	dbms_output.put_line(v_sal);
  6* end;
SQL> /
29025                                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  	v_sal emp.sal%type;
  3  begin
  4  	select sum(sal) into v_sal from emp;
  5  	dbms_output.put_line(v_sal);
  6* end;
SQL> /
29025                                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

SP2-0223: No lines in SQL buffer.
SQL> ed
SP2-0107: Nothing to save.
SQL> select
  2  /
select
     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  begin
  3  	insert into dept values (40, 'CSE', 'Chennai');
  4  	dbms_output.put_line();
  5* end;
SQL> /
	dbms_output.put_line();
	*
ERROR at line 4:
ORA-06550: line 4, column 2: 
PLS-00306: wrong number or types of arguments in call to 'PUT_LINE' 
ORA-06550: line 4, column 2: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  begin
  3  	insert into dept values (40, 'CSE', 'Chennai');
  4  --	dbms_output.put_line();
  5* end;
SQL> /

PL/SQL procedure successfully completed.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        40 OPERATIONS     BOSTON                                                                                        
        40 CSE            Chennai                                                                                       

SQL> ed
Wrote file afiedt.buf

  1* select * from dept
SQL> /

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        40 OPERATIONS     BOSTON                                                                                        
        40 CSE            Chennai                                                                                       

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  begin
  3    insert into dept values (40, 'CSE', 'Chennai');
  4    commit;
  5* end;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  	v_deptno dept.deptno%type := 50;
  3  	v_dname dept.dname%type := 'ECE';
  4  	v_loc dept.loc%type := 'Chennai';
  5  begin
  6    insert into dept values (v_deptno, v_dname, v_loc);
  7    commit;
  8* end;
SQL> /

PL/SQL procedure successfully completed.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        40 OPERATIONS     BOSTON                                                                                        
        40 CSE            Chennai                                                                                       
        40 CSE            Chennai                                                                                       
        50 ECE            Chennai                                                                                       

7 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2     v_deptno dept.deptno%type := 50;
  3     v_dname dept.dname%type := 'ECE';
  4     v_loc dept.loc%type := 'Chennai';
  5  begin
  6     insert into dept values (v_deptno, v_dname, v_loc);
  7     commit;
  8     select * from dept;
  9* end;
SQL> /
   select * from dept;
   *
ERROR at line 8:
ORA-06550: line 8, column 4: 
PLS-00428: an INTO clause is expected in this SELECT statement 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2     v_deptno dept.deptno%type := 50;
  3     v_dname dept.dname%type := 'ECE';
  4     v_loc dept.loc%type := 'Chennai';
  5  begin
  6     update table dept set loc=v_loc;
  7     commit;
  8     select * from dept;
  9* end;
SQL> /
   update table dept set loc=v_loc;
          *
ERROR at line 6:
ORA-06550: line 6, column 11: 
PL/SQL: ORA-00903: invalid table name 
ORA-06550: line 6, column 4: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2     v_deptno dept.deptno%type := 50;
  3     v_dname dept.dname%type := 'ECE';
  4     v_loc dept.loc%type := 'Chennai';
  5  begin
  6     update dept set loc=v_loc;
  7     commit;
  8     select * from dept;
  9* end;
SQL> /
   select * from dept;
   *
ERROR at line 8:
ORA-06550: line 8, column 4: 
PLS-00428: an INTO clause is expected in this SELECT statement 


SQL> eed
SP2-0042: unknown command "eed" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  declare
  2     v_deptno dept.deptno%type := 50;
  3     v_dname dept.dname%type := 'ECE';
  4     v_loc dept.loc%type := 'Mumbai';
  5  begin
  6     update dept set loc=v_loc where loc='Chennai';
  7     commit;
  8     select * from dept;
  9* end;
SQL> /
   select * from dept;
   *
ERROR at line 8:
ORA-06550: line 8, column 4: 
PLS-00428: an INTO clause is expected in this SELECT statement 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2     v_deptno dept.deptno%type := 50;
  3     v_dname dept.dname%type := 'ECE';
  4     v_loc dept.loc%type := 'Mumbai';
  5  begin
  6     update dept set loc=v_loc where loc='Chennai';
  7     commit;
  8  --   select * from dept;
  9* end;
SQL> /

PL/SQL procedure successfully completed.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        40 OPERATIONS     BOSTON                                                                                        
        40 CSE            Mumbai                                                                                        
        40 CSE            Mumbai                                                                                        
        50 ECE            Mumbai                                                                                        

7 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2  	delete from dept where deptno = 40;
  3  	commit;
  4* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        50 ECE            Mumbai                                                                                        

SQL> rollback;

Rollback complete.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       
        50 ECE            Mumbai                                                                                        

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    delete from dept where deptno = 50;
  3    commit;
  4* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp
  3    SET sal = 0
  4    WHERE sal > 2200;
  5    IF sal % found THEN
  6      dbms_output.put_line('Update done!');
  7    END IF
  8* END;
SQL> /
END;
*
ERROR at line 8:
ORA-06550: line 8, column 1: 
PLS-00103: Encountered the symbol "END" when expecting one of the following: 
; 
The symbol ";" was substituted for "END" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp
  3    SET sal = 0
  4    WHERE sal > 2200.
  5    IF sal % found THEN
  6      dbms_output.put_line('Update done!');
  7    END IF
  8* END;
SQL> .
SQL> /
  IF sal % found THEN
  *
ERROR at line 5:
ORA-06550: line 5, column 3: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 2, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 7, column 7: 
PLS-00103: Encountered the symbol "IF" when expecting one of the following: 
; <an identifier> <a double-quoted delimited-identifier> 


SQL> ed\

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp
  3    SET sal = 0
  4    WHERE sal > 2200.
  5    IF sal % found THEN
  6      dbms_output.put_line('Update done!');
  7    END IF;
  8* END;
SQL> /
  IF sal % found THEN
  *
ERROR at line 5:
ORA-06550: line 5, column 3: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 2, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 7, column 7: 
PLS-00103: Encountered the symbol "IF" when expecting one of the following: 
; <an identifier> <a double-quoted delimited-identifier> 


SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp
  3    SET sal = 0
  4    WHERE sal > 2200.if sal%found then
  5      dbms_output.put_line('Update done!');
  6    end if;
  7* END;
SQL> /
  WHERE sal > 2200.if sal%found then
                   *
ERROR at line 4:
ORA-06550: line 4, column 20: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 2, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 6, column 7: 
PLS-00103: Encountered the symbol "IF" when expecting one of the following: 
; <an identifier> <a double-quoted delimited-identifier> 


SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp  SET sal = 0  WHERE sal > 2200.
  3    if sql%found then
  4      dbms_output.put_line('Update done!');
  5    end if;
  6* END;
SQL> /
  if sql%found then
  *
ERROR at line 3:
ORA-06550: line 3, column 3: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 2, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 5, column 7: 
PLS-00103: Encountered the symbol "IF" when expecting one of the following: 
; <an identifier> <a double-quoted delimited-identifier> 


SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp  SET sal = 0  WHERE sal > 2200
  3    if sql%found then
  4      dbms_output.put_line('Update done!');
  5    end if;
  6* END;
SQL> /
  if sql%found then
  *
ERROR at line 3:
ORA-06550: line 3, column 3: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 2, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 5, column 7: 
PLS-00103: Encountered the symbol "IF" when expecting one of the following: 
; <an identifier> <a double-quoted delimited-identifier> 


SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp  SET sal = 0  WHERE sal > 2200;
  3    if sql%found then
  4      dbms_output.put_line('Update done!');
  5    end if;
  6* END;
SQL> /
Update done!                                                                                                            

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp  SET sal = 0  WHERE sal > 10000;
  3    if sql%found then
  4      dbms_output.put_line('Update done!');
  5    else
  6      dbms_output.put_line('Update not done!');
  7    end if;
  8* END;
SQL> /
Update not done!                                                                                                        

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp  
  3    SET sal = 0  
  4    WHERE sal > 10000;
  5    IF sql%found THEN
  6      dbms_output.put_line('Update done!');
  7    ELSE
  8      dbms_output.put_line('Update not done!');
  9    END IF;
 10* END;
SQL> /
Update not done!                                                                                                        

PL/SQL procedure successfully completed.

SQL> SELECT * FROM emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81          0                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81          0                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81          0                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82          0                    20                                   
      7839 KING       PRESIDENT            17-NOV-81          0                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83       1100                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81          0                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp
  3    SET sal = 0
  4    WHERE sal > 2200;
  5    IF sql%found THEN
  6      dbms_output.put_line('Update done!');
  7    ELSE
  8      dbms_output.put_line('Update not done!');
  9    END IF;
 10* END;
SQL> /
Update not done!                                                                                                        

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  BEGIN
  2    UPDATE emp
  3    SET sal = 0
  4    WHERE sal > 0;
  5    IF sql%found THEN
  6      dbms_output.put_line('Update done!');
  7    ELSE
  8      dbms_output.put_line('Update not done!');
  9    END IF;
 10* END;
SQL> /
Update done!                                                                                                            

PL/SQL procedure successfully completed.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO                                   
---------- ---------- --------- ---------- --------- ---------- ---------- ----------                                   
      7369 SMITH      CLERK           7902 17-DEC-80          0                    20                                   
      7499 ALLEN      SALESMAN        7698 20-FEB-81          0        300         30                                   
      7521 WARD       SALESMAN        7698 22-FEB-81          0        500         30                                   
      7566 JONES      MANAGER         7839 02-APR-81          0                    20                                   
      7654 MARTIN     SALESMAN        7698 28-SEP-81          0       1400         30                                   
      7698 BLAKE      MANAGER         7839 01-MAY-81          0                    30                                   
      7782 CLARK      MANAGER         7839 09-JUN-81          0                    10                                   
      7788 SCOTT      ANALYST         7566 09-DEC-82          0                    20                                   
      7839 KING       PRESIDENT            17-NOV-81          0                    10                                   
      7844 TURNER     SALESMAN        7698 08-SEP-81          0          0         30                                   
      7876 ADAMS      CLERK           7788 12-JAN-83          0                    20                                   
      7900 JAMES      CLERK           7698 03-DEC-81          0                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81          0                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82          0                    10                                   

14 rows selected.

SQL> rollback;

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
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number;
  3  BEGIN
  4    UPDATE emp
  5    SET sal = 0
  6    WHERE deptno = 40;
  7    IF sql%found THEN
  8      x := sql%count;
  9    END IF;
 10    dbms_output.put_line (x);
 11* END;
SQL> /
    x := sql%count;
             *
ERROR at line 8:
ORA-06550: line 8, column 14: 
PLS-00207: identifier 'COUNT', applied to implicit cursor SQL, is not a legal cursor attribute 
ORA-06550: line 8, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number;
  3  BEGIN
  4    UPDATE emp
  5    SET sal = 0
  6    WHERE deptno = 40;
  7    IF sql%found THEN
  8      x := sql%count;
  9    END IF;
 10    dbms_output.put_line (x);
 11* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number;
  3  BEGIN
  4    UPDATE emp
  5    SET sal = 0
  6    WHERE deptno = 40;
  7    IF sql%found THEN
  8      x := sql%rowcount;
  9    END IF;
 10    dbms_output.put_line (x);
 11* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> set serveroutput on
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number;
  3  BEGIN
  4    UPDATE emp
  5    SET sal = 0
  6    WHERE deptno = 40;
  7    IF sql%found THEN
  8      x := sql%rowcount;
  9    END IF;
 10    dbms_output.put_line (x);
 11* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number;
  3  BEGIN
  4    UPDATE emp
  5    SET sal = 0
  6    WHERE deptno = 40;
  7    IF sql%found THEN
  8      dbms_output.put_line(sql%rowcount);
  9    END IF;
 10    --dbms_output.put_line(x);
 11* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number;
  3  BEGIN
  4    UPDATE emp
  5    SET sal = 0
  6    WHERE deptno = 30;
  7    IF sql%found THEN
  8      dbms_output.put_line(sql%rowcount);
  9    END IF;
 10    --dbms_output.put_line(x);
 11* END;
SQL> /
6                                                                                                                       

PL/SQL procedure successfully completed.

SQL> rollback;

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
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30                                   
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                   
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                   

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  begin
  2    update emp set sal=0 where deptno=40;
  3    DBMS_OUTPUT.PUT_LINE(sql%rowcount);
  4* end;
SQL> /
0                                                                                                                       

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1* select * from student_masters
SQL> /

STUDENT_CODE STUDENT_NAME                                        DEPT_CODE STUDENT_D                                    
------------ -------------------------------------------------- ---------- ---------                                    
STUDENT_ADDRESS                                                                                                         
------------------------------------------------------------------------------------------------------------------------
        1001 Amit                                                       10 11-JAN-80                                    
chennai                                                                                                                 
                                                                                                                        
        1002 Ravi                                                       10 01-NOV-81                                    
New Delhi                                                                                                               
                                                                                                                        
        1003 Ajay                                                       20 13-JAN-82                                    
                                                                                                                        
                                                                                                                        
        1004 Raj                                                        30 14-JAN-79                                    
Mumbai                                                                                                                  
                                                                                                                        
        1005 Arvind                                                     40 15-JAN-83                                    
Bangalore                                                                                                               
                                                                                                                        
        1006 Rahul                                                      50 16-JAN-81                                    
Delhi                                                                                                                   
                                                                                                                        
        1007 Mehul                                                      20 17-JAN-82                                    
Chennai                                                                                                                 
                                                                                                                        
        1008 Dev                                                        10 11-MAR-81                                    
Bangalore                                                                                                               
                                                                                                                        
        1009 Vijay                                                      30 19-JAN-80                                    
Bangalore                                                                                                               
                                                                                                                        
        1010 Rajat                                                      40 20-JAN-80                                    
Bangalore                                                                                                               
                                                                                                                        
        1011 Sunder                                                     50 21-JAN-80                                    
Chennai                                                                                                                 
                                                                                                                        
        1012 Rajesh                                                     30 22-JAN-80                                    
                                                                                                                        
                                                                                                                        
        1013 Anil                                                       20 23-JAN-80                                    
Chennai                                                                                                                 
                                                                                                                        
        1014 Sunil                                                      10 15-FEB-85                                    
                                                                                                                        
                                                                                                                        
        1015 Kapil                                                      40 18-MAR-81                                    
Mumbai                                                                                                                  
                                                                                                                        
        1016 Ashok                                                      40 26-NOV-80                                    
                                                                                                                        
                                                                                                                        
        1017 Ramesh                                                     30 27-DEC-80                                    
                                                                                                                        
                                                                                                                        
        1018 Amit Raj                                                   50 28-SEP-80                                    
New Delhi                                                                                                               
                                                                                                                        
        1019 Ravi Raj                                                   50 29-MAY-81                                    
New Delhi                                                                                                               
                                                                                                                        
        1020 Amrit                                                      10 11-NOV-80                                    
                                                                                                                        
                                                                                                                        
        1021 Sumit                                                      20 01-JAN-80                                    
Chennai                                                                                                                 
                                                                                                                        

21 rows selected.

SQL> select * from student_marks;

STUDENT_CODE STUDENT_YEAR   SUBJECT1   SUBJECT2   SUBJECT3                                                              
------------ ------------ ---------- ---------- ----------                                                              
        1001         2010         55         45         78                                                              
        1002         2010         66         74         88                                                              
        1003         2010         87         54         65                                                              
        1004         2010         65         64         90                                                              
        1005         2010         78         88         65                                                              
        1006         2010         65         86         54                                                              
        1007         2010         67         79         49                                                              
        1008         2010         72         55         55                                                              
        1009         2010         71         59         58                                                              
        1010         2010         68         44         92                                                              
        1011         2010         89         96         78                                                              
        1012         2010         78         56         55                                                              
        1013         2010         75         58         65                                                              
        1014         2010         73         74         65                                                              
        1015         2010         66         45         74                                                              
        1016         2010         68         78         74                                                              
        1017         2010         69         44         52                                                              
        1018         2010         65         78         56                                                              
        1019         2010         78         58         74                                                              
        1020         2010         45         55         65                                                              
        1021         2010         78         79         78                                                              
        1001         2011         68         44         92                                                              
        1002         2011         89         96         78                                                              
        1003         2011         78         56         55                                                              
        1004         2011         75         58         65                                                              
        1005         2011         73         74         65                                                              
        1006         2011         66         45         74                                                              
        1007         2011         68         78         74                                                              
        1008         2011         69         44         52                                                              
        1009         2011         65         78         56                                                              
        1010         2011         78         58         74                                                              
        1011         2011         45         55         65                                                              
        1012         2011         78         79         78                                                              
        1013         2011         66         74         88                                                              
        1014         2011         65         64         90                                                              
        1015         2011         78         88         65                                                              
        1016         2011         65         86         54                                                              
        1017         2011         67         79         49                                                              
        1018         2011         72         55         55                                                              
        1019         2011         71         59         58                                                              
        1020         2011         55         45         78                                                              
        1021         2011         87         54         65                                                              

42 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select * from student_marks
SQL> desc student_masters
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 STUDENT_CODE                                                      NOT NULL NUMBER(6)
 STUDENT_NAME                                                      NOT NULL VARCHAR2(50)
 DEPT_CODE                                                                  NUMBER(2)
 STUDENT_DOB                                                                DATE
 STUDENT_ADDRESS                                                            VARCHAR2(240)

SQL> desc student_marks
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 STUDENT_CODE                                                               NUMBER(6)
 STUDENT_YEAR                                                      NOT NULL NUMBER
 SUBJECT1                                                                   NUMBER(3)
 SUBJECT2                                                                   NUMBER(3)
 SUBJECT3                                                                   NUMBER(3)

SQL> ed
Wrote file afiedt.buf

  1* select * from student_marks
SQL> DECLARE
  2  V_Sample1 NUMBER(2);
  3  V_Sample2 CONSTANT NUMBER(2) ;
  4  V_Sample3 NUMBER(2) NOT NULL ;
  5  V_Sample4 NUMBER(2) := 50;
  6  V_Sample5 NUMBER(2) DEFAULT 25;
  7  /
V_Sample5 NUMBER(2) DEFAULT 25;
                              *
ERROR at line 6:
ORA-06550: line 6, column 31: 
PLS-00103: Encountered the symbol "end-of-file" when expecting one of the following: 
begin function pragma procedure subtype type <an identifier> 
<a double-quoted delimited-identifier> current cursor delete 
exists prior 


SQL> DECLARE
  2  V_Sample1 NUMBER(2);
  3  V_Sample2 CONSTANT NUMBER(2) ;
  4  V_Sample3 NUMBER(2) NOT NULL ;
  5  V_Sample4 NUMBER(2) := 50;
  6  V_Sample5 NUMBER(2) DEFAULT 25;
  7  BEGIN
  8  NULL;
  9  END;
 10  /
V_Sample2 CONSTANT NUMBER(2) ;
*
ERROR at line 3:
ORA-06550: line 3, column 1: 
PLS-00322: declaration of a constant 'V_SAMPLE2' must contain an initialization assignment 
ORA-06550: line 3, column 11: 
PL/SQL: Item ignored 
ORA-06550: line 4, column 11: 
PLS-00218: a variable declared NOT NULL must have an initialization assignment 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    v_staff_code staff_masters.staff_code%type;
  3    v_staff_name staff_masters.staff_name%type;
  4    v_staff_sal staff_masters.staff_sal%type;
  5  BEGIN
  6    SELECT staff_code, staff_name, staff_sal
  7    INTO v_staff_code, v_staff_name, v_staff_sal
  8    FROM staff_masters
  9    WHERE dept_code = &dept_code;
 10    dbms_output.put_line(v_staff_code||'  '||v_staff_name||'  '||v_staff_sal);
 11* END;
SQL> /
Enter value for dept_code: 40
old   9:   WHERE dept_code = &dept_code;
new   9:   WHERE dept_code = 40;
100008  Raviraj  18000                                                                                                  

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    v_staff_code staff_masters.staff_code%type;
  3    v_staff_name staff_masters.staff_name%type;
  4    v_staff_sal staff_masters.staff_sal%type;
  5  BEGIN
  6    SELECT staff_code, staff_name, staff_sal
  7    INTO v_staff_code, v_staff_name, v_staff_sal
  8    FROM staff_masters
  9    WHERE dept_code = &dept_code;
 10    dbms_output.put_line(v_staff_code||'  '||v_staff_name||'  '||v_staff_sal);
 11* END;
SQL> 30
SP2-0226: Invalid line number 
SQL> /
Enter value for dept_code: 30
old   9:   WHERE dept_code = &dept_code;
new   9:   WHERE dept_code = 30;
DECLARE 
*
ERROR at line 1:
ORA-01422: exact fetch returns more than requested number of rows 
ORA-06512: at line 6 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    v_staff_code staff_masters.staff_code%type;
  3    v_staff_name staff_masters.staff_name%type;
  4    v_staff_sal staff_masters.staff_sal%type;
  5  BEGIN
  6    SELECT staff_code, staff_name, staff_sal
  7    INTO v_staff_code, v_staff_name, v_staff_sal
  8    FROM staff_masters
  9    WHERE dept_code = &dept_code;
 10    dbms_output.put_line(v_staff_code||'  '||v_staff_name||'  '||v_staff_sal);
 11* END;
SQL> /
Enter value for dept_code: 40
old   9:   WHERE dept_code = &dept_code;
new   9:   WHERE dept_code = 40;
100008  Raviraj  18000                                                                                                  

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_staff_sal staff_masters.staff_sal%type;
  3    v_avg_sal staff_masters.staff_sal%type;
  4  BEGIN
  5    SELECT staff_sal, avg(staff_sal) 
  6    INTO v_staff_sal, v_avg_sal
  7    FROM staff_masters
  8    WHERE staff_code = 100005
  9    GROUP BY (dept_code);
 10    IF v_staff_sal+v_staff_sal*0.3 < 5000 THEN
 11       result := v_staff_sal+v_staff_sal*0.3 ;
 12    ELSE
 13       result := v_staff_sal + 5000;
 14    END IF;
 15    dbms_output.put_line(result); 
 16* END;
SQL> /
     result := v_staff_sal+v_staff_sal*0.3 ;
     *
ERROR at line 11:
ORA-06550: line 11, column 6: 
PLS-00201: identifier 'RESULT' must be declared 
ORA-06550: line 11, column 6: 
PL/SQL: Statement ignored 
ORA-06550: line 13, column 6: 
PLS-00201: identifier 'RESULT' must be declared 
ORA-06550: line 13, column 6: 
PL/SQL: Statement ignored 
ORA-06550: line 15, column 24: 
PLS-00201: identifier 'RESULT' must be declared 
ORA-06550: line 15, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_staff_sal staff_masters.staff_sal%type;
  3    v_avg_sal staff_masters.staff_sal%type;
  4    result number;
  5  BEGIN
  6    SELECT staff_sal, avg(staff_sal) 
  7    INTO v_staff_sal, v_avg_sal
  8    FROM staff_masters
  9    WHERE staff_code = &staff_code
 10    GROUP BY (dept_code);
 11    IF v_staff_sal+v_staff_sal*0.3 < 5000 THEN
 12       result := v_staff_sal+v_staff_sal*0.3 ;
 13    ELSE
 14       result := v_staff_sal + 5000;
 15    END IF;
 16    dbms_output.put_line(result); 
 17* END;
SQL> /
Enter value for staff_code: 100005
old   9:   WHERE staff_code = &staff_code
new   9:   WHERE staff_code = 100005
DECLARE
*
ERROR at line 1:
ORA-00979: not a GROUP BY expression 
ORA-06512: at line 6 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_staff_sal staff_masters.staff_sal%type;
  3    v_avg_sal staff_masters.staff_sal%type;
  4    result number;
  5  BEGIN
  6    SELECT staff_sal, avg(staff_sal) 
  7    INTO v_staff_sal, v_avg_sal
  8    FROM staff_masters
  9    WHERE staff_code = &staff_code
 10    GROUP BY (dept_code,v_staff_sal, v_avg_sal);
 11    IF v_staff_sal+v_staff_sal*0.3 < 5000 THEN
 12       result := v_staff_sal+v_staff_sal*0.3 ;
 13    ELSE
 14       result := v_staff_sal + 5000;
 15    END IF;
 16    dbms_output.put_line(result); 
 17* END;
SQL> /
Enter value for staff_code: 100005
old   9:   WHERE staff_code = &staff_code
new   9:   WHERE staff_code = 100005
DECLARE
*
ERROR at line 1:
ORA-00979: not a GROUP BY expression 
ORA-06512: at line 6 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_staff_sal staff_masters.staff_sal%type;
  3    v_avg_sal staff_masters.staff_sal%type;
  4    result number;
  5  BEGIN
  6    SELECT staff_sal, avg(staff_sal) 
  7    INTO v_staff_sal, v_avg_sal
  8    FROM staff_masters
  9    WHERE staff_code = &staff_code
 10    GROUP BY (dept_code);
 11    IF v_staff_sal+v_staff_sal*0.3 < v_staff_sal+5000 THEN
 12       result := v_staff_sal+v_staff_sal*0.3 ;
 13    ELSE
 14       result := v_staff_sal + 5000;
 15    END IF;
 16    dbms_output.put_line(result); 
 17* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_student_code student_masters.student_code%type;
  3    v_student_name student_masters.student_name%type;
  4    v_subject1 student_marks.subject1%type;
  5    v_subject2 student_marks.subject2%type;
  6    v_subject3 student_marks.subject3%type;
  7    v_total number;
  8    v_percent number;
  9    v_grade varchar2(2);
 10  BEGIN
 11    SELECT s.student_code, s.student_name, sm.subject1, sm.subject2, sm.subject3, subject1+subject2+subject3 Total, (subject1+subject2+subject3)/3 "percentage grade"
 12    INTO v_student_code, v_student_name, v_subject1, v_subject2, v_subject3, v_total, v_percent
 13    FROM student_masters s join student_marks sm
 14    ON (s.student_code = s.student_code)
 15    WHERE s.student_code = &s.student_code;
 16    CASE 
 17      WHEN v_percent >= 80 THEN v_grade = 'A'
 18      WHEN v_percent >= 80 and v_percent < 80 THEN v_grade = 'B'
 19      WHEN v_percent >= 60 and v_percent < 70 THEN v_grade = 'C'
 20      ELSE v_grade = 'D'
 21    END CASE;
 22    --dbms_output.put_line(v_grade);
 23    dbms_output.put_line(v_grade);
 24* END;
SQL> /
Enter value for s: 1010
old  15:   WHERE s.student_code = &s.student_code;
new  15:   WHERE s.student_code = 1010student_code;
  WHERE s.student_code = 1010student_code;
                             *
ERROR at line 15:
ORA-06550: line 15, column 30: 
PL/SQL: ORA-00933: SQL command not properly ended 
ORA-06550: line 11, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 17, column 39: 
PLS-00103: Encountered the symbol "=" when expecting one of the following: 
:= . ( @ % ; 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_student_code student_masters.student_code%type;
  3    v_student_name student_masters.student_name%type;
  4    v_subject1 student_marks.subject1%type;
  5    v_subject2 student_marks.subject2%type;
  6    v_subject3 student_marks.subject3%type;
  7    v_total number;
  8    v_percent number;
  9    v_grade varchar2(2);
 10  BEGIN
 11    SELECT s.student_code, s.student_name, sm.subject1, sm.subject2, sm.subject3, subject1+subject2+subject3 Total, (subject1+subject2+subject3)/3 "percentage grade"
 12    INTO v_student_code, v_student_name, v_subject1, v_subject2, v_subject3, v_total, v_percent
 13    FROM student_masters s join student_marks sm
 14    ON (s.student_code = s.student_code)
 15    WHERE s.student_code = &student_code;
 16    CASE 
 17      WHEN v_percent >= 80 THEN v_grade = 'A'
 18      WHEN v_percent >= 80 and v_percent < 80 THEN v_grade = 'B'
 19      WHEN v_percent >= 60 and v_percent < 70 THEN v_grade = 'C'
 20      ELSE v_grade = 'D'
 21    END CASE;
 22    --dbms_output.put_line(v_grade);
 23    dbms_output.put_line(v_grade);
 24* END;
SQL> /
Enter value for student_code: 1010
old  15:   WHERE s.student_code = &student_code;
new  15:   WHERE s.student_code = 1010;
    WHEN v_percent >= 80 THEN v_grade = 'A'
                                      *
ERROR at line 17:
ORA-06550: line 17, column 39: 
PLS-00103: Encountered the symbol "=" when expecting one of the following: 
:= . ( @ % ; 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_student_code student_masters.student_code%type;
  3    v_student_name student_masters.student_name%type;
  4    v_subject1 student_marks.subject1%type;
  5    v_subject2 student_marks.subject2%type;
  6    v_subject3 student_marks.subject3%type;
  7    v_total number;
  8    v_percent number;
  9    v_grade varchar2(2);
 10  BEGIN
 11    SELECT s.student_code, s.student_name, sm.subject1, sm.subject2, sm.subject3, subject1+subject2+subject3 Total, (subject1+subject2+subject3)/3 "percentage grade"
 12    INTO v_student_code, v_student_name, v_subject1, v_subject2, v_subject3, v_total, v_percent
 13    FROM student_masters s join student_marks sm
 14    ON (s.student_code = s.student_code)
 15    WHERE s.student_code = &student_code;
 16    CASE 
 17      WHEN v_percent >= 80 THEN v_grade := 'A'
 18      WHEN v_percent >= 80 and v_percent < 80 THEN v_grade := 'B'
 19      WHEN v_percent >= 60 and v_percent < 70 THEN v_grade := 'C'
 20      ELSE v_grade := 'D'
 21    END CASE;
 22    --dbms_output.put_line(v_grade);
 23    dbms_output.put_line(v_grade);
 24* END;
SQL> /
Enter value for student_code: 1010
old  15:   WHERE s.student_code = &student_code;
new  15:   WHERE s.student_code = 1010;
    WHEN v_percent >= 80 and v_percent < 80 THEN v_grade := 'B'
    *
ERROR at line 18:
ORA-06550: line 18, column 5: 
PLS-00103: Encountered the symbol "WHEN" when expecting one of the following: 
* & = - + ; < / > at in is mod remainder not rem 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec between || multiset member submultiset 
The symbol ";" was substituted for "WHEN" to continue. 
ORA-06550: line 19, column 5: 
