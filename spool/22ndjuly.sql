SQL> cl scr

SQL> set serveroutput on
SQL> set linesize 300
SQL> set pagesize 300
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    e_invalid_department EXCEPTION;
  3  BEGIN
  4    update dept set dname='ACCESS' where deptno=100;
  5    IF sql%notfound THEN
  6      RAISE e_invalid_department;
  7    END IF;
  8    commit;
  9    EXCEPTION WHEN e_invalid_department THEN
 10      dbms_output.put_line('No such department id.');
 11* END;
SQL> /
No such department id.                                                                                                                                                                                                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    e_invalid_empno EXCEPTION;
  3  BEGIN
  4    DELETE FROM emp WHERE empno = &empno;
  5    IF sql%notfound THEN
  6       RAISE e_invalid_empno;
  7    END IF;
  8    COMMIT;
  9    EXCEPTION
 10      WHEN e_invalid_empno THEN
 11  	dbms_output.put_line('No such employee id found.');
 12* END;
 13  /
Enter value for empno: 100
old   4:   DELETE FROM emp WHERE empno = &empno;
new   4:   DELETE FROM emp WHERE empno = 100;
No such employee id found.                                                                                                                                                                                                                                                                                  

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3  BEGIN
  4    FOR i in c1 loop
  5      update emp set sal = sal+1 where current of c1;
  6    END LOOP;
  7* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3  BEGIN
  4    FOR i in c1 loop
  5      update emp set sal = sal+1 where current of c1;
  6    END LOOP;
  7* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2452                                                                                                                                                                                                                                                                                                  
      5002                                                                                                                                                                                                                                                                                                  
      1302                                                                                                                                                                                                                                                                                                  

SQL> rollback;

Rollback complete.

SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2450                                                                                                                                                                                                                                                                                                  
      5000                                                                                                                                                                                                                                                                                                  
      1300                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7*    END;
SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2451                                                                                                                                                                                                                                                                                                  
      5001                                                                                                                                                                                                                                                                                                  
      1301                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where deptno =10
  6        END LOOP;
  7        commit;
  8*    END;
SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where deptno =10;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

SP2-0223: No lines in SQL buffer.
SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2454                                                                                                                                                                                                                                                                                                  
      5004                                                                                                                                                                                                                                                                                                  
      1304                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 ;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where deptno =10;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2457                                                                                                                                                                                                                                                                                                  
      5007                                                                                                                                                                                                                                                                                                  
      1307                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2458                                                                                                                                                                                                                                                                                                  
      5008                                                                                                                                                                                                                                                                                                  
      1308                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1* select sal from emp where deptno=10
SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /
        update emp set sal = sal+1 where current of c1;
                                                    *
ERROR at line 5:
ORA-06550: line 5, column 53: 
PLS-00404: cursor 'C1' must be declared with FOR UPDATE to use with CURRENT OF 
ORA-06550: line 5, column 53: 
PL/SQL: ORA-00904: : invalid identifier 
ORA-06550: line 5, column 9: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal+1 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2459                                                                                                                                                                                                                                                                                                  
      5009                                                                                                                                                                                                                                                                                                  
      1309                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        CURSOR c1 is select sal from emp where deptno=10 for update of sal nowait;
  3      BEGIN
  4        FOR i in c1 loop
  5          update emp set sal = sal-9 where current of c1;
  6        END LOOP;
  7        commit;
  8*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select sal from emp where deptno=10;

       SAL                                                                                                                                                                                                                                                                                                  
----------                                                                                                                                                                                                                                                                                                  
      2450                                                                                                                                                                                                                                                                                                  
      5000                                                                                                                                                                                                                                                                                                  
      1300                                                                                                                                                                                                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure get_name (p_empno emp.empno%type) is v_ename emp.ename%type;
  2  begin
  3  select ename into v_ename from emp where empno=p_empno;
  4  dbms_output.put_line(v_ename);
  5* end;
SQL> /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure get_name (p_empno emp.empno%type) is v_ename emp.ename%type;
  2  begin
  3  select ename into v_ename from emp where empno=p_empno;
  4  dbms_output.put_line(v_ename);
  5* end;
SQL> exec get_name(7369);
SMITH                                                                                                                                                                                                                                                                                                       

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  begin
  2  exec get_name(7900);
  3* end;
SQL> /
exec get_name(7900);
     *
ERROR at line 2:
ORA-06550: line 2, column 6: 
PLS-00103: Encountered the symbol "GET_NAME" when expecting one of the following: 
:= . ( @ % ; 
The symbol ":=" was substituted for "GET_NAME" to continue. 


SQL> ed
Wrote file afiedt.buf

  1      create or replace procedure get_name (p_empno emp.empno%type) is v_ename emp.ename%type;
  2      begin
  3      select ename into v_ename from emp where empno=p_empno;
  4      dbms_output.put_line(v_ename);
  5*    end;
SQL> begin
  2  get_name(7900);
  3  end;
  4  /
JAMES                                                                                                                                                                                                                                                                                                       

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1          create or replace procedure get_no (p_ename emp.ename%type) is v_empno emp.empno%type;
  2          begin
  3          select empno into v_empno from emp where ename=p_ename;
  4          dbms_output.put_line(v_empno);
  5*       end;
SQL> /

Procedure created.

SQL> exec get_no('SMITH');
7369                                                                                                                                                                                                                                                                                                        

PL/SQL procedure successfully completed.

SQL> exec get_no('JAMES');
7900                                                                                                                                                                                                                                                                                                        

PL/SQL procedure successfully completed.

SQL> exec get_no('KING');
7839                                                                                                                                                                                                                                                                                                        

PL/SQL procedure successfully completed.

SQL> exec get_no('ADAMS');
7876                                                                                                                                                                                                                                                                                                        

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.empno%type;
  3  BEGIN
  4    update emp set sal = p_sal+1  where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6* END;
  7  exec (7900,0)
  8  /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.empno%type;
  3  BEGIN
  4    update emp set sal = p_sal+1  where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6* END;
  7  /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.empno%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6* END;
SQL> /

Warning: Procedure created with compilation errors.

SQL> exec update_rec(7900,100);
BEGIN update_rec(7900,100); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7: 
PLS-00905: object SCOTT.UPDATE_REC is invalid 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.empno%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6* END;
SQL> exec update_rec(7900,100);
BEGIN update_rec(7900,100); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7: 
PLS-00905: object SCOTT.UPDATE_REC is invalid 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.empno%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6    commit;
  7* END;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.sal%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6    commit;
  7* END;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is v_empno emp.empno%type, v_sal emp.sal%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6    commit;
  7* END;
SQL> exec update_rec(7900,100);
BEGIN update_rec(7900,100); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7: 
PLS-00905: object SCOTT.UPDATE_REC is invalid 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is --v_empno emp.empno%type, v_sal emp.sal%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(v_sal);
  6    commit;
  7* END;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type)
  2  is 
  3  --v_empno emp.empno%type, v_sal emp.sal%type;
  4  BEGIN
  5    update emp set sal = p_sal where empno = p_empno;
  6    dbms_output.put_line(v_sal);
  7    commit;
  8* END;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure update_rec (p_empno emp.empno%type, p_sal emp.sal%type) is 
  2  --v_empno emp.empno%type, v_sal emp.sal%type;
  3  BEGIN
  4    update emp set sal = p_sal where empno = p_empno;
  5    dbms_output.put_line(p_sal);
  6    commit;
  7* END;
SQL> /

Procedure created.

SQL> exec update_rec(7900,100);
100                                                                                                                                                                                                                                                                                                         

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure del_rec (p_empno emp.empno%type) is
  2  BEGIN
  3    delete from emp where empno = p_empno;
  4* END;
  5  /

Procedure created.

SQL> exec(7900);
BEGIN (7900); END;

           *
ERROR at line 1:
ORA-06550: line 1, column 12: 
PLS-00103: Encountered the symbol ")" when expecting one of the following: 
* & = - + < / > at in is mod remainder not rem 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec as between || multiset member submultiset 


SQL> exec del_rec(7900);

PL/SQL procedure successfully completed.

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
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                                                                                                                       
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                                                                                                                       

13 rows selected.

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
      7900 JAMES      CLERK           7698 03-DEC-81        100                    30                                                                                                                                                                                                                       
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20                                                                                                                                                                                                                       
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10                                                                                                                                                                                                                       

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2  begin
  3    if p_empno = (select empno from emp where empno=p_empno) then
  4    insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
  5* end;
  6  /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2  begin
  3    if p_empno = (select empno from emp where empno=p_empno) then
  4      insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
  5    end if;
  6* end;
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2    v_empno emp.empno%type;
  3  begin
  4    select empno into v_empno from emp where empno=p_empno;
  5    if p_empno = v_empno then
  6      insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
  7    end if;
  8* end;
SQL> /

Procedure created.

SQL> exec ins_rec(8000,'KART',10000);
BEGIN ins_rec(8000,'KART',10000); END;

*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at "SCOTT.INS_REC", line 4 
ORA-06512: at line 1 


SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2    v_empno emp.empno%type;
  3    v_invalid_empno EXCEPTION;
  4  begin
  5    select empno into v_empno from emp where empno=p_empno;
  6    if p_empno = v_empno then
  7      RAISE v_invalid_empno;
  8    else
  9      insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
 10    end if;
 11    EXCEPTION
 12      WHEN v_invalid_empno THEN
 13  	dbms_output.put_line('Employee number already exists. Try give a new employee number.')
 14* end;
SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2    v_empno emp.empno%type;
  3    v_invalid_empno EXCEPTION;
  4  begin
  5    select empno into v_empno from emp where empno=p_empno;
  6    if p_empno = v_empno then
  7      RAISE v_invalid_empno;
  8    else
  9      insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
 10    end if;
 11    EXCEPTION
 12      WHEN v_invalid_empno THEN
 13  	dbms_output.put_line('Employee number already exists. Try give a new employee number.');
 14* end;
SQL> /

Procedure created.

SQL> exec ins_rec(8000,'KART',10000);
BEGIN ins_rec(8000,'KART',10000); END;

*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at "SCOTT.INS_REC", line 5 
ORA-06512: at line 1 


SQL> ed
Wrote file afiedt.buf

  1  create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2    v_empno emp.empno%type;
  3    v_invalid_empno EXCEPTION;
  4  begin
  5    select count(*) into v_empno from emp where empno=p_empno;
  6    if v_empno = 1 then
  7      RAISE v_invalid_empno;
  8    else
  9      insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
 10    end if;
 11    EXCEPTION
 12      WHEN v_invalid_empno THEN
 13  	dbms_output.put_line('Employee number already exists. Try give a new employee number.');
 14* end;
SQL> /

Procedure created.

SQL> exec ins_rec(8000,'KART',10000);

PL/SQL procedure successfully completed.

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
      8000 KART                                           10000                                                                                                                                                                                                                                             

15 rows selected.

SQL> rollback;l
  2  /
rollback;l
        *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1* rollback;
SQL> /
rollback;
        *
ERROR at line 1:
ORA-00911: invalid character 


SQL> ed
Wrote file afiedt.buf

  1      create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2        v_empno emp.empno%type;
  3        v_invalid_empno EXCEPTION;
  4      begin
  5        select empno into v_empno from emp where empno=p_empno;
  6        if sql%notfound then
  7          insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
  8      end if;
  9    /*   EXCEPTION
 10         WHEN v_invalid_empno THEN
 11        dbms_output.put_line('Employee number already exists. Try give a new employee number.');
 12    */
 13*   end;
SQL> /

Procedure created.

SQL> exec ins_rec(8000,'KART',10000);

PL/SQL procedure successfully completed.

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
      8000 KART                                           10000                                                                                                                                                                                                                                             

15 rows selected.

SQL> rollback;

Rollback complete.

SQL> ed
Wrote file afiedt.buf

  1          create or replace procedure ins_rec(p_empno emp.empno%type, p_ename emp.ename%type, p_sal emp.sal%type) is
  2            v_empno emp.empno%type;
  3            v_invalid_empno EXCEPTION;
  4          begin
  5            select empno into v_empno from emp where empno=p_empno;
  6            if sql%notfound then
  7              insert into emp (empno, ename, sal) values (p_empno, p_ename, p_sal);
  8          end if;
  9*     end;
SQL> /

Procedure created.

SQL> exec ins_rec(8000,'KART',10000);

PL/SQL procedure successfully completed.

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
      8000 KART                                           10000                                                                                                                                                                                                                                             

15 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* rollback
SQL> /

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
      8000 KART                                           10000                                                                                                                                                                                                                                             

15 rows selected.

SQL> delete from emp where empno=8000;

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

SQL> e
SP2-0042: unknown command "e" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure get_name
  2  ( p_empno in emp.empno%type,
  3    p_ename out emp.ename%type) is
  4  BEGIN
  5    select ename into p_ename from emp where empno = p_empno;
  6  END;
  7* exec get_name(7369)
SQL> /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure get_name
  2  ( p_empno in emp.empno%type,
  3    p_ename out emp.ename%type) is
  4  BEGIN
  5    select ename into p_ename from emp where empno = p_empno;
  6* END;
  7  /

Procedure created.

SQL> exec get_name(7369);
BEGIN get_name(7369); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7: 
PLS-00306: wrong number or types of arguments in call to 'GET_NAME' 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> exec get_name(7369,'KART');
BEGIN get_name(7369,'KART'); END;

                    *
ERROR at line 1:
ORA-06550: line 1, column 21: 
PLS-00363: expression 'KART' cannot be used as an assignment target 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> exec get_name(7369);
BEGIN get_name(7369); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7: 
PLS-00306: wrong number or types of arguments in call to 'GET_NAME' 
ORA-06550: line 1, column 7: 
PL/SQL: Statement ignored 


SQL> ED
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure get_name
  2  ( p_empno in emp.empno%type,
  3    p_ename out emp.ename%type) is
  4  BEGIN
  5    select ename into p_ename from emp where empno = p_empno;
  6  END;
  7  DECLARE
  8  v_ename emp.ename%type;
  9  BEGIN
 10    get_name(7369,v_ename);
 11    dbms_output.put_line(v_ename);
 12* END;
 13  /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE procedure get_name
  2  ( p_empno in emp.empno%type,
  3    p_ename out emp.ename%type) is
  4  BEGIN
  5    select ename into p_ename from emp where empno = p_empno;
  6* END;
SQL> /

Procedure created.

SQL> 
SQL> DECLARE
  2  v_ename emp.ename%type;
  3  BEGIN
  4    get_name(7369,v_ename);
  5    dbms_output.put_line(v_ename);
  6  END;
  7  /
SMITH                                                                                                                                                                                                                                                                                                       

PL/SQL procedure successfully completed.

SQL> select sysdate-hiredate from emp;

SYSDATE-HIREDATE                                                                                                                                                                                                                                                                                            
----------------                                                                                                                                                                                                                                                                                            
      14096.4983                                                                                                                                                                                                                                                                                            
      14031.4983                                                                                                                                                                                                                                                                                            
      14029.4983                                                                                                                                                                                                                                                                                            
      13990.4983                                                                                                                                                                                                                                                                                            
      13811.4983                                                                                                                                                                                                                                                                                            
      13961.4983                                                                                                                                                                                                                                                                                            
      13922.4983                                                                                                                                                                                                                                                                                            
      13374.4983                                                                                                                                                                                                                                                                                            
      13761.4983                                                                                                                                                                                                                                                                                            
      13831.4983                                                                                                                                                                                                                                                                                            
      13340.4983                                                                                                                                                                                                                                                                                            
      13745.4983                                                                                                                                                                                                                                                                                            
      13745.4983                                                                                                                                                                                                                                                                                            
      13694.4983                                                                                                                                                                                                                                                                                            

14 rows selected.

SQL> select (sysdate-hiredate)/365 from emp;

(SYSDATE-HIREDATE)/365                                                                                                                                                                                                                                                                                      
----------------------                                                                                                                                                                                                                                                                                      
            38.6205438                                                                                                                                                                                                                                                                                      
            38.4424616                                                                                                                                                                                                                                                                                      
            38.4369821                                                                                                                                                                                                                                                                                      
            38.3301328                                                                                                                                                                                                                                                                                      
            37.8397219                                                                                                                                                                                                                                                                                      
            38.2506808                                                                                                                                                                                                                                                                                      
            38.1438315                                                                                                                                                                                                                                                                                      
            36.6424616                                                                                                                                                                                                                                                                                      
            37.7027356                                                                                                                                                                                                                                                                                      
            37.8945164                                                                                                                                                                                                                                                                                      
            36.5493109                                                                                                                                                                                                                                                                                      
               37.6589                                                                                                                                                                                                                                                                                      
               37.6589                                                                                                                                                                                                                                                                                      
            37.5191739                                                                                                                                                                                                                                                                                      

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE procedure emp_proc
  2  (p_empno emp.empno%type,
  3   p_ename out emp.ename%type,
  4   p_sal out emp.sal%type,
  5   p_experience out emp.sal%type) is
  6  BEGIN
  7    select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
  8* END;
  9  /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_ename emp.ename%type;
  3    v_sal emp.sal%type;
  4    v_experience emp.sal%type;
  5  BEGIN
  6    emp_proc(7900, v_ename, v_sal, v_experience);
  7* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_ename emp.ename%type;
  3    v_sal emp.sal%type;
  4    v_experience number;
  5  BEGIN
  6    emp_proc(7900, v_ename, v_sal, v_experience);
  7* END;
SQL> /

PL/SQL procedure successfully completed.

SQL>   1  CREATE or REPLACE procedure emp_proc
SQL>   2  (p_empno emp.empno%type,
SQL>   3   p_ename out emp.ename%type,
SQL>   4   p_sal out emp.sal%type,
SQL>   5   p_experience out emp.sal%type) is
SQL>   6  BEGIN
SQL>   7    select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
SQL>   8* END;
SP2-0042: unknown command "8* END" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1   CREATE or REPLACE procedure emp_proc
  2   (p_empno emp.empno%type,
  3    p_ename out emp.ename%type,
  4    p_sal out emp.sal%type,
  5    p_experience out number) is
  6   BEGIN
  7     select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
  8*  END;
SQL> /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        v_ename emp.ename%type;
  3        v_sal emp.sal%type;
  4        v_experience number;
  5      BEGIN
  6        emp_proc(7900, v_ename, v_sal, v_experience);
  7*    END;
SQL>   1  DECLARE
SQL>   2    v_ename emp.ename%type;
SQL>   3    v_sal emp.sal%type;
SQL>   4    v_experience number;
SQL>   5  BEGIN
SQL>   6    emp_proc(7900, v_ename, v_sal, v_experience);
SQL>   7* END;/
SP2-0042: unknown command "7* END;/" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1   DECLARE
  2     v_ename emp.ename%type
  3     v_sal emp.sal%type
  4     v_experience number
  5   BEGIN
  6     emp_proc(7900, v_ename, v_sal, v_experience)
  7*    END;
  8  /
   v_sal emp.sal%type
   *
ERROR at line 3:
ORA-06550: line 3, column 4: 
PLS-00103: Encountered the symbol "V_SAL" when expecting one of the following: 
:= ( ; not null range default character 
The symbol ";" was substituted for "V_SAL" to continue. 
ORA-06550: line 4, column 4: 
PLS-00103: Encountered the symbol "V_EXPERIENCE" when expecting one of the following: 
:= ( ; not null range default character 


SQL> ed
Wrote file afiedt.buf

  1   DECLARE
  2     v_ename emp.ename%type;
  3     v_sal emp.sal%type;
  4     v_experience number;
  5   BEGIN
  6     emp_proc(7900, v_ename, v_sal, v_experience);
  7*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> eed
SP2-0042: unknown command "eed" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1   DECLARE
  2     v_ename emp.ename%type;
  3     v_sal emp.sal%type;
  4     v_experience number;
  5   BEGIN
  6     emp_proc(7369, v_ename, v_sal, v_experience);
  7*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1      CREATE or REPLACE procedure emp_proc
  2       (p_empno emp.empno%type,
  3        p_ename out emp.ename%type,
  4        p_sal out emp.sal%type,
  5        p_experience out number) is
  6       BEGIN
  7         select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
  8*     END;
SQL>   1   CREATE or REPLACE procedure emp_proc
SQL>   2   (p_empno emp.empno%type,
SQL>   3    p_ename out emp.ename%type,
SQL>   4    p_sal out emp.sal%type,
SQL>   5    p_experience out number) is
SQL>   6   BEGIN
SQL>   7     select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
SQL>   8*  END;  1   CREATE or REPLACE procedure emp_proc
SP2-0734: unknown command beginning "8*  END;  ..." - rest of line ignored.
SQL>   2   (p_empno emp.empno%type,
SQL>   3    p_ename out emp.ename%type,
SQL>   4    p_sal out emp.sal%type,
SQL>   5    p_experience out number) is
SQL>   6   BEGIN
SQL>   7     select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
SQL>   8*  END;
SP2-0042: unknown command "8*  END" - rest of line ignored.
SQL>   1   CREATE or REPLACE procedure emp_proc
SQL>   2   (p_empno emp.empno%type,
SQL>   3    p_ename out emp.ename%type,
SQL>   4    p_sal out emp.sal%type,
SQL>   5    p_experience out number) is
SQL>   6   BEGIN
SQL>   7     select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
SQL>   8*  END;
SP2-0042: unknown command "8*  END" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1    CREATE or REPLACE procedure emp_proc
  2    (p_empno emp.empno%type,
  3     p_ename out emp.ename%type,
  4     p_sal out emp.sal%type,
  5     p_experience out number) is
  6    BEGIN
  7      select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
  8*     END;
SQL> /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE procedure emp_proc
  2   (p_empno in emp.empno%type,
  3    p_ename out emp.ename%type,
  4    p_sal out emp.sal%type,
  5    p_experience out number) is
  6  BEGIN
  7     select ename, sal, round((sysdate-hiredate)/365) into p_ename, p_sal, p_experience from emp where empno = p_empno;
  8* END;
  9  /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_ename emp.ename%type;
  3    v_sal emp.sal%type;
  4    v_experience number;
  5  BEGIN
  6    emp_proc(7369, v_ename, v_sal, v_experience);
  7* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> /

PL/SQL procedure successfully completed.

SQL> DECLARE
  2    v_ename emp.ename%type;
  3    v_sal emp.sal%type;
  4    v_experience number;
  5  BEGIN
  6    emp_proc(7369, v_ename, v_sal, v_experience);
  7    dbms_output.put_line(v_ename||'  '||v_sal||'  '||v_experience);/
  8  END;
  9  /
  dbms_output.put_line(v_ename||'  '||v_sal||'  '||v_experience);/
                                                                 *
ERROR at line 7:
ORA-06550: line 7, column 66: 
PLS-00103: Encountered the symbol "/" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 
The symbol "/" was ignored. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_ename emp.ename%type;
  3    v_sal emp.sal%type;
  4    v_experience number;
  5  BEGIN
  6    emp_proc(7369, v_ename, v_sal, v_experience);
  7    dbms_output.put_line(v_ename||'  '||v_sal||'  '||v_experience);
  8* END;
SQL> /
SMITH  800  39                                                                                                                                                                                                                                                                                              

PL/SQL procedure successfully completed.

SQL> show error;
No errors.
SQL> show err
No errors.
SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE procedure format_phone
  2  ( p_phone_no IN OUT varchar2) is
  3  BEGIN
  4    p_phone_no := '('|| substr(p_phone_no,1,3)|| ')'||substr(p_phone_no,4,3)||'-'|| substr(p_phone_no,7);
  5* END format_phone;
  6  ed
  7  /

Warning: Procedure created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE procedure format_phone
  2  ( p_phone_no IN OUT varchar2) is
  3  BEGIN
  4    p_phone_no := '(' || substr(p_phone_no,1,3) || ')' || substr(p_phone_no,4,3) || '-' || substr(p_phone_no,7);
  5* END format_phone;
SQL> /

Procedure created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE procedure format_phone
  2  ( p_phone_no IN OUT varchar2) is
  3  BEGIN
  4    p_phone_no := '(' || substr(p_phone_no,1,3) || ')' || substr(p_phone_no,4,3) || '-' || substr(p_phone_no,7);
  5* END format_phone;
SQL> /

Procedure created.

SQL> PRINT g_phone_no;
SP2-0552: Bind variable "G_PHONE_NO" not declared.
SQL> 
SQL> EXECUTE format_phone (:g_phone_no);
SP2-0552: Bind variable "G_PHONE_NO" not declared.
SQL> EXECUTE format_phone (:g_phone_no) PRINT g_phone_no;
SP2-0552: Bind variable "G_PHONE_NO" not declared.
SQL> CREATE or REPLACE procedure format_phone
  2  ( p_phone_no IN OUT varchar2) is
  3  BEGIN
  4    p_phone_no := '(' || substr(p_phone_no,1,3) || ')' || substr(p_phone_no,4,3) || '-' || substr(p_phone_no,7);
  5  END format_phone;
  6  /

Procedure created.

SQL> DECLARE
  2    g_phone_no varchar2;
  3  BEGIN
  4    :g_phone_no := '9876543210';
  5  END;
  6  /
SP2-0552: Bind variable "G_PHONE_NO" not declared.
SQL> VARIABLE  g_phone_no varchar2;
SQL> BEGIN
  2    :g_phone_no := '9876543210';
  3  END;
  4  /
BEGIN
*
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: character string buffer too small 
ORA-06512: at line 2 


SQL> VARIABLE  g_phone_no varchar2(15)
SQL> BEGIN
  2    :g_phone_no := '9876543210';
  3  END;/
  4  /
END;/
    *
ERROR at line 3:
ORA-06550: line 3, column 5: 
PLS-00103: Encountered the symbol "/" The symbol "/" was ignored. 


SQL> VARIABLE  g_phone_no varchar2(15)
SQL> BEGIN
  2    :g_phone_no := '9876543210';
  3  END;
  4  /

PL/SQL procedure successfully completed.

SQL> EXECUTE format_phone (:g_phone_no);

PL/SQL procedure successfully completed.

SQL> PRINT g_phone_no;

G_PHONE_NO                                                                                                                                                                                                                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------                                                                                                                                                                            
(987)654-3210                                                                                                                                                                                                                                                                                               

SQL> -- bind variable , mode of passing paramters , phone no
SQL> 
SQL> CREATE or REPLACE procedure format_phone
  2  ( p_phone_no IN OUT varchar2) is
  3  BEGIN
  4    p_phone_no := '(' || substr(p_phone_no,1,3) || ')' || substr(p_phone_no,4,3) || '-' || substr(p_phone_no,7);
  5  END format_phone;
  6  
  7  
  8  VARIABLE  g_phone_no varchar2(15)
  9  BEGIN
 10    :g_phone_no := '9876543210';
 11  END;
 12  
 13  
 14  EXECUTE format_phone (:g_phone_no) PRINT g_phone_no;
 15  /

Warning: Procedure created with compilation errors.

SQL> show err
Errors for PROCEDURE FORMAT_PHONE:

LINE/COL ERROR                                                                                                                                                                                                                                                                                              
-------- -----------------------------------------------------------------                                                                                                                                                                                                                                  
8/1      PLS-00103: Encountered the symbol "VARIABLE"                                                                                                                                                                                                                                                       
SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE function get_annl_sal (p_empno number) return number is x number;
  2  begin
  3  select (sal+nvl(comm,0))*12 into x from emp where empno = p_empno;
  4  return x;
  5* end get_annl_sal;
  6  /

Function created.

SQL> select get_annl_sal(7369) from dual;

GET_ANNL_SAL(7369)                                                                                                                                                                                                                                                                                          
------------------                                                                                                                                                                                                                                                                                          
              9600                                                                                                                                                                                                                                                                                          

SQL> select * from user_functions'
  2  /
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> select * from user_functions;
select * from user_functions
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from functions;
select * from functions
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1  create or replace function ret_loc (p_empno number) return number is x number;
  2  begin
  3  select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
  4  return x;
  5* end ret_loc;
SQL> /

Function created.

SQL> select ret_loc(7900) from dual;
select ret_loc(7900) from dual
       *
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: character to number conversion error 
ORA-06512: at "SCOTT.RET_LOC", line 3 


SQL> ed
Wrote file afiedt.buf

  1* select ret_loc(7900) from dual
SQL>   1  create or replace function ret_loc (p_empno number) return number is x number;
SQL>   2  begin
SQL>   3  select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
SQL>   4  return x;
SQL>   5* end ret_loc;
SP2-0734: unknown command beginning "5* end ret..." - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1   create or replace function ret_loc (p_empno number) return varchar2 is x varchar2;
  2   begin
  3   select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
  4*  return x;
SQL> /

Warning: Function created with compilation errors.

SQL> show err;
Errors for FUNCTION RET_LOC:

LINE/COL ERROR                                                                                                                                                                                                                                                                                              
-------- -----------------------------------------------------------------                                                                                                                                                                                                                                  
4/10     PLS-00103: Encountered the symbol "end-of-file" when expecting                                                                                                                                                                                                                                     
         one of the following:                                                                                                                                                                                                                                                                              
         ( begin case declare end exception exit for goto if loop mod                                                                                                                                                                                                                                       
         null pragma raise return select update while with                                                                                                                                                                                                                                                  
         <an identifier> <a double-quoted delimited-identifier>                                                                                                                                                                                                                                             
         <a bind variable> << continue close current delete fetch lock                                                                                                                                                                                                                                      
         insert open rollback savepoint set sql execute commit forall                                                                                                                                                                                                                                       
         merge pipe purge                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                            
SQL> ed
Wrote file afiedt.buf

  1   create or replace function ret_loc (p_empno number) return varchar2 is x varchar2;
  2   begin
  3   select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
  4   return x;
  5*  end ret_loc;
SQL> /

Warning: Function created with compilation errors.

SQL> show err;
Errors for FUNCTION RET_LOC:

LINE/COL ERROR                                                                                                                                                                                                                                                                                              
-------- -----------------------------------------------------------------                                                                                                                                                                                                                                  
1/56     PLS-00215: String length constraints must be in range (1 ..                                                                                                                                                                                                                                        
         32767)                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                            
SQL> ed
Wrote file afiedt.buf

  1   create or replace function ret_loc (p_empno number) return varchar2(10) is x varchar2(10);
  2   begin
  3   select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
  4   return x;
  5*  end ret_loc;
SQL> /

Warning: Function created with compilation errors.

SQL> show err;
Errors for FUNCTION RET_LOC:

LINE/COL ERROR                                                                                                                                                                                                                                                                                              
-------- -----------------------------------------------------------------                                                                                                                                                                                                                                  
1/50     PLS-00103: Encountered the symbol "(" when expecting one of the                                                                                                                                                                                                                                    
         following:                                                                                                                                                                                                                                                                                         
         . @ % ; is authid as cluster order using external character                                                                                                                                                                                                                                        
         deterministic parallel_enable pipelined aggregate                                                                                                                                                                                                                                                  
         result_cache                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                            
SQL> ed
Wrote file afiedt.buf

  1   create or replace function ret_loc (p_empno number) return varchar2(10) is x dept.loc%type;
  2   begin
  3   select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
  4   return x;
  5*  end ret_loc;
SQL> /

Warning: Function created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1   create or replace function ret_loc (p_empno number) return dept.loc%type is x dept.loc%type;
  2   begin
  3   select loc into x from emp e join dept d on (e.deptno=d.deptno) where empno=p_empno;
  4   return x;
  5*  end ret_loc;
SQL> /

Function created.

SQL> select ret_loc(7900) from dual;

RET_LOC(7900)                                                                                                                                                                                                                                                                                               
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CHICAGO                                                                                                                                                                                                                                                                                                     

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE function area_sqr(rad number) is v_rad number(3);
  2  v_area number(3);
  3  BEGIN
  4    v_area := rad * rad;
  5    return v_area;
  6* END area_sqr;
SQL> /

Warning: Function created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE function area_sqr(rad number) is v_rad number(3);
  2  v_area number(3);
  3  BEGIN
  4    v_area := v_rad * v_rad;
  5    return v_area;
  6* END area_sqr;
SQL> /

Warning: Function created with compilation errors.

SQL> show err;
Errors for FUNCTION AREA_SQR:

LINE/COL ERROR                                                                                                                                                                                                                                                                                              
-------- -----------------------------------------------------------------                                                                                                                                                                                                                                  
1/31     PLS-00103: Encountered the symbol "IS" when expecting one of the                                                                                                                                                                                                                                   
         following:                                                                                                                                                                                                                                                                                         
         return                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                            
SQL> ed
Wrote file afiedt.buf

  1  CREATE or REPLACE function area_sqr(rad number) return number is v_rad number(3);
  2  v_area number(3);
  3  BEGIN
  4    v_area := v_rad * v_rad;
  5    return v_area;
  6* END area_sqr;
SQL> /

Function created.

SQL> select area_sqr(5) from dual;

AREA_SQR(5)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1      CREATE or REPLACE function area_sqr(rad number) return number is v_rad number(3);
  2      v_area number(3);
  3      BEGIN
  4        v_area := v_rad * v_rad;
  5        return v_area;
  6        return v_rad;
  7*    END area_sqr;
SQL> /

Function created.

SQL> select area_sqr(5) from dual;

AREA_SQR(5)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1    CREATE or REPLACE function area_sqr(rad number) return number is v_rad number(3);
  2    v_area number(3);
  3    BEGIN
  4      v_area := v_rad * v_rad;
  5      return v_area;
  6*  END area_sqr;
SQL> /

Function created.

SQL> ed
Wrote file afiedt.buf

  1    CREATE or REPLACE function area_sqr(rad number) return number is v_rad number(3);
  2    v_area number(3);
  3    BEGIN
  4      v_area := v_rad * v_rad;
  5      return v_rad;
  6*  END area_sqr;
SQL> /

Function created.

SQL> select area_sql(5);
select area_sql(5)
                 *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select area_sql(5) from dual;
select area_sql(5) from dual
       *
ERROR at line 1:
ORA-00904: "AREA_SQL": invalid identifier 


SQL> select area_sqr(5) from dual;

AREA_SQR(5)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1        CREATE or REPLACE function area_sqr(rad number) return number is v_rad number(3);
  2        v_area number(3);
  3        BEGIN
  4          v_area := v_rad * v_rad;
  5          return v_rad;
  6*     END area_sqr;
SQL> /

Function created.

SQL> select area_sqr(5) from dual;

AREA_SQR(5)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1            CREATE or REPLACE function area_sqr(rad number) return number is 
  2            v_area number(3);
  3            BEGIN
  4              v_area := v_rad * v_rad;
  5             return v_area;
  6*        END area_sqr;
SQL> /

Warning: Function created with compilation errors.

SQL> show err;
Errors for FUNCTION AREA_SQR:

LINE/COL ERROR                                                                                                                                                                                                                                                                                              
-------- -----------------------------------------------------------------                                                                                                                                                                                                                                  
4/13     PL/SQL: Statement ignored                                                                                                                                                                                                                                                                          
4/23     PLS-00201: identifier 'V_RAD' must be declared                                                                                                                                                                                                                                                     
SQL> ed
Wrote file afiedt.buf

  1            CREATE or REPLACE function area_sqr(rad number) return number is 
  2            v_area number(3);
  3            BEGIN
  4              v_area := rad * rad;
  5             return v_area;
  6*        END area_sqr;
SQL> /

Function created.

SQL> select area_sqr(5) from dual;

AREA_SQR(5)                                                                                                                                                                                                                                                                                                 
-----------                                                                                                                                                                                                                                                                                                 
         25                                                                                                                                                                                                                                                                                                 

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE area_tri (breadth number, height number) return number is
  2  v_area number(3);
  3  begin
  4  v_area := 0.5 * breadth * height;
  5* end area_tri;
SQL> /
CREATE OR REPLACE area_tri (breadth number, height number) return number is
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE area_tri (breadth number, height number) return number is
  2  v_area number(3);
  3  begin
  4  v_area := 0.5 * breadth * height;
  5  return v_area;
  6* end area_tri;
SQL> /
CREATE OR REPLACE area_tri (breadth number, height number) return number is
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE area_tri (breadth number, height number) return number is
  2  v_area number;
  3  begin
  4  v_area := 0.5 * breadth * height;
  5  return v_area;
  6* end area_tri;
SQL> /
CREATE OR REPLACE area_tri (breadth number, height number) return number is
                  *
ERROR at line 1:
ORA-00922: missing or invalid option 


SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE function area_tri (breadth number, height number) return number is
  2  v_area number;
  3  begin
  4  v_area := 0.5 * breadth * height;
  5  return v_area;
  6* end area_tri;
SQL> /

Function created.

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE function area_tri (breadth number, height number) return number is
  2  v_area number;
  3  begin
  4  v_area := 0.5 * breadth * height;
  5  return v_area;
  6* end area_tri;
SQL> /

Function created.

SQL> select area_tri(5,4) from dual;

AREA_TRI(5,4)                                                                                                                                                                                                                                                                                               
-------------                                                                                                                                                                                                                                                                                               
           10                                                                                                                                                                                                                                                                                               

SQL> ed
Wrote file afiedt.buf

  1  CREATE OR REPLACE function area_cir (rad number) return number is
  2  v_area number;
  3  begin
  4  v_area := 3.14 * rad * rad;
  5  return v_area;
  6* end area_cir;
SQL> /

Function created.

SQL> select area_cir(10) from dual;

AREA_CIR(10)                                                                                                                                                                                                                                                                                                
------------                                                                                                                                                                                                                                                                                                
         314                                                                                                                                                                                                                                                                                                

SQL> spool off
