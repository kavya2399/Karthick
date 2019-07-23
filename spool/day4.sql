SQL> set pagesize 120
SQL> set linesize 120
SQL> set serveroutput on
SQL> select
  2  /
select
     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE ename_type is table of emp.ename%type
  3    INDEX by binary_integer;
  4    tab_ename ename_type;
  5  BEGIN
  6    tab_ename(1) := 'scott';
  7    tab_ename(2) := 'miller';
  8    tab_ename(3) := 'adams';
  9    dbms_output.put_line(tab_ename(1)||'  '||tab_ename(2)||'  '||tab_ename(3));
 10* END;
 11  /
scott  miller  adams                                                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE ename_type is table of varchar2(30)
  3    INDEX by binary_integer;
  4    tab_ename ename_type;
  5  BEGIN
  6    tab_ename(1) := 'scott';
  7    tab_ename(2) := 'miller';
  8    tab_ename(3) := 'adams';
  9    dbms_output.put_line(tab_ename(1)||'  '||tab_ename(2)||'  '||tab_ename(3));
 10* END;
SQL> /
scott  miller  adams                                                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT *
  7    INTO tab_dept(1)
  8    FROM emp
  9    WHERE deptno = 10;
 10    dbms_output.put_line(tab_dept(1).deptno);
 11* END;
SQL> /
  FROM emp
  *
ERROR at line 8:
ORA-06550: line 8, column 3: 
PL/SQL: ORA-00947: not enough values 
ORA-06550: line 6, column 3: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT *
  7    INTO tab_dept(1)
  8    FROM dept
  9    WHERE deptno = 10;
 10    dbms_output.put_line(tab_dept(1).deptno);
 11* END;
SQL> /
10                                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT *
  7    INTO tab_dept(1)
  8    FROM dept
  9    WHERE deptno = 10;
 10    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(3).loc);
 11* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 10 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT *
  7    INTO tab_dept(1)
  8    FROM dept
  9    WHERE deptno = 10;
 10    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 11* END;
SQL> /
10  ACCOUNTING  NEW YORK                                                                                                

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT * INTO tab_dept(1) FROM dept WHERE deptno = 10;
  7    SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
  8    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
  9    dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 10* END;
SQL> /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    

PL/SQL procedure successfully completed.

SQL> d
SP2-0042: unknown command "d" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT * INTO tab_dept(1) FROM dept WHERE deptno = 10;
  7    SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
  8    SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
  9    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 10    dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 11    dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 12* END;
 13  /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    
30  SALES  CHICAGO                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT * INTO tab_dept(1) FROM dept WHERE deptno = 10;
  7    SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
  8    SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
  9    SELECT * INTO tab_dept(4) FROM dept WHERE deptno = 40;
 10    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 11    dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 12    dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 13    dbms_output.put_line(tab_dept(4).deptno||'  '||tab_dept(4).dname||'  '||tab_dept(4).loc);
 14* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 9 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT * INTO tab_dept(1) FROM dept WHERE deptno = 10;
  7    SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
  8    SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
  9    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 10    dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 11    dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 12* END;
 13  /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    
30  SALES  CHICAGO                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    SELECT * INTO tab_dept(1) FROM dept WHERE deptno = 10;
  7    SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
  8    SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
  9    dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 10    dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 11    dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 12* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5    x number := 10;
  6  BEGIN
  7    FOR i in 1..3    
  8      SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
  9      x := x+10;
 10      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 11    END FOR;
 12      --SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
 13      --SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
 14      --dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 15      --dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 16      --dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 17* END;
 18  /
    SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
    *
ERROR at line 8:
ORA-06550: line 8, column 5: 
PLS-00103: Encountered the symbol "SELECT" when expecting one of the following: 
* & - + / at loop mod remainder rem <an exponent (**)> || 
multiset 
The symbol "loop" was substituted for "SELECT" to continue. 
ORA-06550: line 11, column 7: 
PLS-00103: Encountered the symbol "FOR" when expecting one of the following: 
loop 
The symbol "loop was inserted before "FOR" to continue. 


SQL> EED
SP2-0042: unknown command "EED" - rest of line ignored.
SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5    x number := 10;
  6  BEGIN
  7    FOR i in 1..3 LOOP
  8      SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
  9      x := x+10;
 10      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 11    END FOR;
 12      --SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
 13      --SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
 14      --dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 15      --dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 16      --dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 17* END;
SQL> /
  END FOR;
      *
ERROR at line 11:
ORA-06550: line 11, column 7: 
PLS-00103: Encountered the symbol "FOR" when expecting one of the following: 
loop 
The symbol "loop was inserted before "FOR" to continue. 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5    x number := 10;
  6  BEGIN
  7    LOOP
  8    FOR i in 1..3 
  9      SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
 10      x := x+10;
 11      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 12    END LOOP;
 13      --SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
 14      --SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
 15      --dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 16      --dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 17      --dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 18* END;
SQL> /
    SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
    *
ERROR at line 9:
ORA-06550: line 9, column 5: 
PLS-00103: Encountered the symbol "SELECT" when expecting one of the following: 
* & - + / at loop mod remainder rem <an exponent (**)> || 
multiset 
The symbol "loop" was substituted for "SELECT" to continue. 
ORA-06550: line 18, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5    x number := 10;
  6  BEGIN
  7    FOR i in 1..3 LOOP
  8      SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
  9      x := x+10;
 10      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 11    END LOOP;
 12      --SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
 13      --SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
 14      --dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 15      --dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 16      --dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 17* END;
SQL> /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    
30  SALES  CHICAGO                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    TYPE dept_type is table of dept%rowtype
  3    INDEX by binary_integer;
  4    tab_dept dept_type;
  5    x number := 10;
  6  BEGIN
  7    FOR i in 1..3 LOOP
  8      SELECT * INTO tab_dept(i) FROM dept WHERE deptno = x;
  9      x := x+10;
 10      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 11    END LOOP;
 12      --SELECT * INTO tab_dept(2) FROM dept WHERE deptno = 20;
 13      --SELECT * INTO tab_dept(3) FROM dept WHERE deptno = 30;
 14      --dbms_output.put_line(tab_dept(1).deptno||'  '||tab_dept(1).dname||'  '||tab_dept(1).loc);
 15      --dbms_output.put_line(tab_dept(2).deptno||'  '||tab_dept(2).dname||'  '||tab_dept(2).loc);
 16      --dbms_output.put_line(tab_dept(3).deptno||'  '||tab_dept(3).dname||'  '||tab_dept(3).loc);
 17* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type emp_type is table of emp%rowtype
  3    index by binary_integer;
  4    emp_dup emp_type;
  5  BEGIN
  6    FOR i in 1..14 LOOP
  7      SELECT * INTO emp_dup(i) FROM emp WHERE rownum=i;
  8      dbms_output.put_line(emp_dup(i).empno||'  '||emp_dup(i).ename||'  '||emp_dup(i).sal);
  9    END;
 10* END;
SQL> /
  END;
     *
ERROR at line 9:
ORA-06550: line 9, column 6: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 
The symbol "loop" was substituted for ";" to continue. 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    type emp_type is table of emp%rowtype
  3    index by binary_integer;
  4    emp_dup emp_type;
  5  BEGIN
  6    FOR i in 1..14 LOOP
  7      SELECT * INTO emp_dup(i) FROM emp WHERE rownum=i;
  8      dbms_output.put_line(emp_dup(i).empno||'  '||emp_dup(i).ename||'  '||emp_dup(i).sal);
  9    END LOOP;
 10* END;
SQL> /
7369  SMITH  800                                                                                                        
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    LOOP
  7      insert into dept_dup select * from dept;
  8    EXIT when sql%notfound;
  9    END LOOP;  
 10* END;
 11  /
    insert into dept_dup select * from dept;
                *
ERROR at line 7:
ORA-06550: line 7, column 17: 
PL/SQL: ORA-00942: table or view does not exist 
ORA-06550: line 7, column 5: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    LOOP
  7      select * into dept_dup(i) from dept where deptno = i||0;
  8      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
  9      i := i + 1 ;
 10      EXIT when sql%notfound;
 11    END LOOP;  
 12* END;
SQL> /
    select * into dept_dup(i) from dept where deptno = i||0;
                                                       *
ERROR at line 7:
ORA-06550: line 7, column 56: 
PL/SQL: ORA-00904: "I": invalid identifier 
ORA-06550: line 7, column 5: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 8, column 26: 
PLS-00201: identifier 'TAB_DEPT' must be declared 
ORA-06550: line 8, column 5: 
PL/SQL: Statement ignored 
ORA-06550: line 9, column 5: 
PLS-00201: identifier 'I' must be declared 
ORA-06550: line 9, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5    i number := 1
  6  BEGIN
  7    LOOP
  8      select * into dept_dup(i) from dept where deptno = i||0;
  9      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 10      i := i + 1 ;
 11      EXIT when sql%notfound;
 12    END LOOP;  
 13* END;
SQL> /
BEGIN
*
ERROR at line 6:
ORA-06550: line 6, column 1: 
PLS-00103: Encountered the symbol "BEGIN" when expecting one of the following: 
* & = - + ; < / > at in is mod remainder not rem 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec between || multiset member submultiset 
The symbol ";" was substituted for "BEGIN" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5    i number := 1;
  6  BEGIN
  7    LOOP
  8      select * into dept_dup(i) from dept where deptno = i||0;
  9      dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
 10      i := i + 1 ;
 11      EXIT when sql%notfound;
 12    END LOOP;  
 13* END;
SQL> /
    dbms_output.put_line(tab_dept(i).deptno||'  '||tab_dept(i).dname||'  '||tab_dept(i).loc);
                         *
ERROR at line 9:
ORA-06550: line 9, column 26: 
PLS-00201: identifier 'TAB_DEPT' must be declared 
ORA-06550: line 9, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5    i number := 1;
  6  BEGIN
  7    LOOP
  8      select * into dept_dup(i) from dept where deptno = i||0;
  9      dbms_output.put_line(dept_dup(i).deptno||'  '||dept_dup(i).dname||'  '||dept_dup(i).loc);
 10      i := i + 1 ;
 11      EXIT when sql%notfound;
 12    END LOOP;  
 13* END;
SQL> /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    
30  SALES  CHICAGO                                                                                                      
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 8 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5    i number := 1;
  6  BEGIN
  7    LOOP
  8      select * into dept_dup(i) from dept where deptno = i||0;
  9      dbms_output.put_line(dept_dup(i).deptno||'  '||dept_dup(i).dname||'  '||dept_dup(i).loc);
 10      EXIT when sql%notfound;
 11      i := i + 1 ;
 12    END LOOP;  
 13* END;
 14  /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    
30  SALES  CHICAGO                                                                                                      
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 8 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into dept_dup(i) from dept where deptno = i||0;
  8      dbms_output.put_line(dept_dup(i).deptno||'  '||dept_dup(i).dname||'  '||dept_dup(i).loc);
  9    END LOOP;  
 10* END;
SQL> /
10  ACCOUNTING  NEW YORK                                                                                                
20  RESEARCH  DALLAS                                                                                                    
30  SALES  CHICAGO                                                                                                      

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    FOR i in select * from dept LOOP
  7      select * into dept_dup(i) from dept where deptno = i||0;
  8      dbms_output.put_line(dept_dup(i).deptno||'  '||dept_dup(i).dname||'  '||dept_dup(i).loc);
  9    END LOOP;  
 10* END;
SQL> /
  FOR i in select * from dept LOOP
           *
ERROR at line 6:
ORA-06550: line 6, column 12: 
PLS-00103: Encountered the symbol "SELECT" when expecting one of the following: 
( - + case mod new null <an identifier> 
<a double-quoted delimited-identifier> <a bind variable> 
reverse continue avg count current max min prior sql stddev 
sum variance execute forall merge <a SQL statement> time 
timestamp interval date 
<a string literal with character set specification> 
<a number> <a single-quoted SQL string> pipe 
<an alternatively-quoted string literal with character set specificatio 
ORA-06550: line 7, column 5: 
PLS-00103: Encountered the symbol "SELECT" when expecting one of the following: 
) , for group having intersect minus order start union where 
connect 
ORA-06550: line 8, column 5: 
PLS-00103: Encountered the symbol "DBMS_OUTPUT"  
ORA-06550: line 8, column 93: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
. ( , * % & - + / at mod remainder rem <an identifier> 
<a double-quoted delimited-identifier> <an exponent


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    FOR i in 1..select * from dept LOOP
  7      select * into dept_dup(i) from dept where deptno = i||0;
  8      dbms_output.put_line(dept_dup(i).deptno||'  '||dept_dup(i).dname||'  '||dept_dup(i).loc);
  9    END LOOP;  
 10* END;
SQL> /
  FOR i in 1..select * from dept LOOP
              *
ERROR at line 6:
ORA-06550: line 6, column 15: 
PLS-00103: Encountered the symbol "SELECT" when expecting one of the following: 
( - + case mod new null <an identifier> 
<a double-quoted delimited-identifier> <a bind variable> 
continue avg count current max min prior sql stddev sum 
variance execute forall merge time timestamp interval date 
<a string literal with character set specification> 
<a number> <a single-quoted SQL string> pipe 
<an alternatively-quoted string literal with character set specification> 
<an alternatively-quote 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    FOR i in 1..select * from dept LOOP
  7      select * into dept_dup(i) from dept where deptno = i||0;
  8      dbms_output.put_line(dept_dup(i).deptno||'  '||dept_dup(i).dname||'  '||dept_dup(i).loc);
  9    END LOOP;  
 10* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    dept_dup dept_type;
  5  BEGIN
  6    insert into dept_dup select * from dept;
  7* END;
SQL> /
  insert into dept_dup select * from dept;
              *
ERROR at line 6:
ORA-06550: line 6, column 15: 
PL/SQL: ORA-00942: table or view does not exist 
ORA-06550: line 6, column 3: 
PL/SQL: SQL Statement ignored 


SQL> create table dept_dup as select * from dept where 1=2;

Table created.

SQL> ed
Wrote file afiedt.buf

  1      DECLARE
  2        type dept_type is table of dept%rowtype
  3        index by binary_integer;
  4        dept_dup dept_type;
  5      BEGIN
  6        insert into dept_dup select * from dept;
  7*    END;
SQL> /

PL/SQL procedure successfully completed.

SQL> select * from dept_dup;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       

SQL> rollback;

Rollback complete.

SQL> select * from dept_dup;

no rows selected

SQL> ed
Wrote file afiedt.buf

  1          DECLARE
  2            type dept_type is table of dept%rowtype
  3            index by binary_integer;
  4            dept_dup dept_type;
  5          BEGIN
  6            insert into dept_dup select * from dept;
  7        END;
  8* SQL> /
SQL> /
SQL> /
*
ERROR at line 8:
ORA-06550: line 8, column 1: 
PLS-00103: Encountered the symbol "SQL"  


SQL> eed
SP2-0042: unknown command "eed" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1          DECLARE
  2            type dept_type is table of dept%rowtype
  3            index by binary_integer;
  4            dept_dup dept_type;
  5          BEGIN
  6            insert into dept_dup select * from dept;
  7*       END;
  8  /

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in (select * from dept) LOOP
  7    select * into tab_dept(i) where rownum=i;
  8    insert into dept_dup select (tab_dept.deptno,tab_dept.dname, tab_dept.loc) from tab_dept;
  9* END;
SQL> /
  select * into tab_dept(i) where rownum=i;
                            *
ERROR at line 7:
ORA-06550: line 7, column 29: 
PL/SQL: ORA-00923: FROM keyword not found where expected 
ORA-06550: line 7, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 8, column 47: 
PL/SQL: ORA-00907: missing right parenthesis 
ORA-06550: line 8, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 9, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in (select * from dept) LOOP
  7    select * into tab_dept(i) from dept where rownum=i;
  8    insert into dept_dup select (tab_dept.deptno,tab_dept.dname, tab_dept.loc) from tab_dept;
  9* END;
SQL> /
  insert into dept_dup select (tab_dept.deptno,tab_dept.dname, tab_dept.loc) from tab_dept;
                                              *
ERROR at line 8:
ORA-06550: line 8, column 47: 
PL/SQL: ORA-00907: missing right parenthesis 
ORA-06550: line 8, column 3: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 9, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in (select * from dept) LOOP
  7    select * into tab_dept(i) from dept where rownum=i;
  8    insert into dept_dup select * from tab_dept;
  9* END;
SQL> /
END;
   *
ERROR at line 9:
ORA-06550: line 9, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in (select * from dept) LOOP
  7      select * into tab_dept(i) from dept where rownum=i;
  8      insert into dept_dup select * from tab_dept;
  9    END LOOP;
 10* END;
SQL> /
    select * into tab_dept(i) from dept where rownum=i;
                                                     *
ERROR at line 7:
ORA-06550: line 7, column 54: 
PLS-00382: expression is of wrong type 
ORA-06550: line 7, column 28: 
PLS-00382: expression is of wrong type 
ORA-06550: line 7, column 31: 
PL/SQL: ORA-00904: : invalid identifier 
ORA-06550: line 7, column 5: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 8, column 40: 
PL/SQL: ORA-00942: table or view does not exist 
ORA-06550: line 8, column 5: 
PL/SQL: SQL Statement ignored 


SQL> 
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum=i;
  8      insert into dept_dup select * from tab_dept;
  9    END LOOP;
 10* END;
SQL> /
    insert into dept_dup select * from tab_dept;
                                       *
ERROR at line 8:
ORA-06550: line 8, column 40: 
PL/SQL: ORA-00942: table or view does not exist 
ORA-06550: line 8, column 5: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum=i;
  8      insert into dept_dup values(tab_dept(i).deptno, tab_dept(i).dname, tab_dept(i).loc);
  9    END LOOP;
 10* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum=i;
  8      insert into dept_dup(deptno,dname,loc) values(tab_dept(i).deptno, tab_dept(i).dname, tab_dept(i).loc);
  9    END LOOP;
 10* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum=i;
  8      insert into dept_dup(deptno,dname,loc) values(tab_dept(i).deptno, tab_dept(i).dname, tab_dept(i).loc);
  9    END LOOP;
 10* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       

SQL> select * from dept_dup;

    DEPTNO DNAME          LOC                                                                                           
---------- -------------- -------------                                                                                 
        10 ACCOUNTING     NEW YORK                                                                                      
        20 RESEARCH       DALLAS                                                                                        
        30 SALES          CHICAGO                                                                                       

SQL> truncate table dept_dup;

Table truncated.

SQL> eed
SP2-0042: unknown command "eed" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum=i;
  8      insert into dept_dup(deptno,dname,loc) values(tab_dept(i).deptno, tab_dept(i).dname, tab_dept(i).loc);
  9    END LOOP;
 10* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> select * from dept_dup;

no rows selected

SQL> ed
Wrote file afiedt.buf

  1* select * from dept_dup
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum = i;
  8      insert into dept_dup(deptno,dname,loc) values(tab_dept(i).deptno, tab_dept(i).dname, tab_dept(i).loc);
  9    END LOOP;
 10* END;
SQL> desc dept_dup;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 DEPTNO                                                                     NUMBER(2)
 DNAME                                                                      VARCHAR2(14)
 LOC                                                                        VARCHAR2(13)

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum = i;
  8    END LOOP;
  9    FOR j in 1..3 LOOP
 10      insert into dept_dup(deptno,dname,loc) values(tab_dept(j).deptno, tab_dept(j).dname, tab_dept(j).loc);
 11    END LOOP;
 12* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type dept_type is table of dept%rowtype
  3    index by binary_integer;
  4    tab_dept dept_type;
  5  BEGIN
  6    FOR i in 1..3 LOOP
  7      select * into tab_dept(i) from dept where rownum = i;
  8    END LOOP;
  9    FOR j in 1..3 LOOP
 10      insert into dept_dup(deptno,dname,loc) values(tab_dept(j).deptno, tab_dept(j).dname, tab_dept(j).loc);
 11    END LOOP;
 12* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 7 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select ename from emp where deptno = 30;
  3    v_ename emp.ename%type;
  4  BEGIN
  5    open c1;
  6    fetch c1 into v_ename;
  7    close c1;
  8    dbms_output.put_line(v_ename);
  9* END;
SQL> /
ALLEN                                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select ename from emp where deptno = 30;
  3    v_ename emp.ename%type;
  4  BEGIN
  5    open c1;
  6    LOOP
  7      fetch c1 into v_ename;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_ename);
 10    END LOOP;
 11    close c1;
 12* END;
 13  /
ALLEN                                                                                                                   
WARD                                                                                                                    
MARTIN                                                                                                                  
BLAKE                                                                                                                   
TURNER                                                                                                                  
JAMES                                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select ename from emp where deptno = 30;
  3    v_ename emp.ename%type;
  4  BEGIN
  5    open c1;
  6    LOOP
  7      fetch c1 into v_ename;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_ename);
 10    END LOOP;
 11    close c1;
 12    dbms_output.put_line(v_ename);
 13* END;
SQL> /
ALLEN                                                                                                                   
WARD                                                                                                                    
MARTIN                                                                                                                  
BLAKE                                                                                                                   
TURNER                                                                                                                  
JAMES                                                                                                                   
JAMES                                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select sal+10 from emp where deptno = 30;
  3    v_incr_sal emp.sal%type;
  4  BEGIN
  5    open c1;
  6    LOOP
  7      FETCHc1 into v_incr_sal;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_incr_sal);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
    FETCHc1 into v_incr_sal;
            *
ERROR at line 7:
ORA-06550: line 7, column 13: 
PLS-00103: Encountered the symbol "INTO" when expecting one of the following: 
:= . ( @ % ; 
ORA-06550: line 11, column 3: 
PLS-00103: Encountered the symbol "CLOSE"  


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select sal+10 from emp where deptno = 30;
  3    v_incr_sal emp.sal%type;
  4  BEGIN
  5    open c1;
  6    LOOP
  7      FETCH c1 into v_incr_sal;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_incr_sal);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
1610                                                                                                                    
1260                                                                                                                    
1260                                                                                                                    
2860                                                                                                                    
1510                                                                                                                    
960                                                                                                                     

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select empno, ename, sal, comm, (sal+nvl(comm,0))*12 from emp;
  3    v_ename emp.ename%type;
  4    v_empno emp.empno%type;
  5    v_sal emp.sal%type;
  6    v_comm emp.comm%type;
  7    v_total_sal emp.sal%type;
  8  BEGIN
  9    open c1;
 10    LOOP
 11      FETCH c1 into v_empno, v_ename,v_sal,v_comm,v_total_sal;
 12      EXIT when c1%notfound;
 13      dbms_output.put_line(v_empno||' '||v_ename||' '||v_sal||' '||v_comm||' '||v_total_sal);
 14    END LOOP;
 15    close c1;
 16* END;
SQL> /
7369 SMITH 800  9600                                                                                                    
7499 ALLEN 1600 300 22800                                                                                               
7521 WARD 1250 500 21000                                                                                                
7566 JONES 2975  35700                                                                                                  
7654 MARTIN 1250 1400 31800                                                                                             
7698 BLAKE 2850  34200                                                                                                  
7782 CLARK 2450  29400                                                                                                  
7788 SCOTT 3000  36000                                                                                                  
7839 KING 5000  60000                                                                                                   
7844 TURNER 1500 0 18000                                                                                                
7876 ADAMS 1100  13200                                                                                                  
7900 JAMES 950  11400                                                                                                   
7902 FORD 3000  36000                                                                                                   
7934 MILLER 1300  15600                                                                                                 

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select empno, ename, sal, comm, (sal+nvl(comm,0))*12 from emp;
  3    type emp_type is record
  4    ( v_ename emp.ename%type;
  5      v_empno emp.empno%type;
  6      v_sal emp.sal%type;
  7      v_comm emp.comm%type;
  8      v_total_sal emp.sal%type);
  9    v_emp emp_type;
 10  BEGIN
 11    open c1;
 12    LOOP
 13      FETCH c1 into v_emp;
 14      EXIT when c1%notfound;
 15      dbms_output.put_line(v_emp.v_empno||' '||v_emp.v_ename||' '||v_emp.v_sal||' '||v_emp.v_comm||' '||v_emp.v_total_sal);
 16    END LOOP;
 17    close c1;
 18* END;
SQL> /
  ( v_ename emp.ename%type;
                          *
ERROR at line 4:
ORA-06550: line 4, column 27: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
:= ( ) , not null range default external character 
The symbol ")" was substituted for ";" to continue. 
ORA-06550: line 8, column 29: 
PLS-00103: Encountered the symbol ")" when expecting one of the following: 
:= ( ; not null range default character 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select empno, ename, sal, comm, (sal+nvl(comm,0))*12 from emp;
  3    type emp_type is record
  4    ( v_ename emp.ename%type,
  5      v_empno emp.empno%type,
  6      v_sal emp.sal%type,
  7      v_comm emp.comm%type,
  8      v_total_sal emp.sal%type);
  9    v_emp emp_type;
 10  BEGIN
 11    open c1;
 12    LOOP
 13      FETCH c1 into v_emp;
 14      EXIT when c1%notfound;
 15      dbms_output.put_line(v_emp.v_empno||' '||v_emp.v_ename||' '||v_emp.v_sal||' '||v_emp.v_comm||' '||v_emp.v_total_sal);
 16    END LOOP;
 17    close c1;
 18* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: character to number conversion error 
ORA-06512: at line 13 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select empno, ename, sal, comm, (sal+nvl(comm,0))*12 from emp;
  3    type emp_type is record
  4    ( v_empno emp.empno%type,
  5      v_ename emp.ename%type,
  6      v_sal emp.sal%type,
  7      v_comm emp.comm%type,
  8      v_total_sal emp.sal%type);
  9    v_emp emp_type;
 10  BEGIN
 11    open c1;
 12    LOOP
 13      FETCH c1 into v_emp;
 14      EXIT when c1%notfound;
 15      dbms_output.put_line(v_emp.v_empno||' '||v_emp.v_ename||' '||v_emp.v_sal||' '||v_emp.v_comm||' '||v_emp.v_total_sal);
 16    END LOOP;
 17    close c1;
 18* END;
SQL> /
7369 SMITH 800  9600                                                                                                    
7499 ALLEN 1600 300 22800                                                                                               
7521 WARD 1250 500 21000                                                                                                
7566 JONES 2975  35700                                                                                                  
7654 MARTIN 1250 1400 31800                                                                                             
7698 BLAKE 2850  34200                                                                                                  
7782 CLARK 2450  29400                                                                                                  
7788 SCOTT 3000  36000                                                                                                  
7839 KING 5000  60000                                                                                                   
7844 TURNER 1500 0 18000                                                                                                
7876 ADAMS 1100  13200                                                                                                  
7900 JAMES 950  11400                                                                                                   
7902 FORD 3000  36000                                                                                                   
7934 MILLER 1300  15600                                                                                                 

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select empno, ename, sal, comm, (sal+nvl(comm,0))*12 t_sal from emp;
  3    v_emp c1%rowtype;
  4  BEGIN
  5    open c1;
  6    LOOP
  7      FETCH c1 into v_emp;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_emp.empno||' '||v_emp.ename||' '||v_emp.sal||' '||v_emp.comm||' '||v_emp.t_sal);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
7369 SMITH 800  9600                                                                                                    
7499 ALLEN 1600 300 22800                                                                                               
7521 WARD 1250 500 21000                                                                                                
7566 JONES 2975  35700                                                                                                  
7654 MARTIN 1250 1400 31800                                                                                             
7698 BLAKE 2850  34200                                                                                                  
7782 CLARK 2450  29400                                                                                                  
7788 SCOTT 3000  36000                                                                                                  
7839 KING 5000  60000                                                                                                   
7844 TURNER 1500 0 18000                                                                                                
7876 ADAMS 1100  13200                                                                                                  
7900 JAMES 950  11400                                                                                                   
7902 FORD 3000  36000                                                                                                   
7934 MILLER 1300  15600                                                                                                 

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    CURSOR c1 is select ename, sal, e.deptno, dname from emp e join dept d on (e.deptno=d.deptno) where sal > 1500;
  3    v_cur c1%rowtype;
  4  BEGIN
  5    open c1;  
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.sal||' '||v_cur.e.deptno||' '||v_cur.dname);
 10    END LOOP;
 11    close c1;
 12* END;s
SQL> /
END;s
    *
ERROR at line 12:
ORA-06550: line 12, column 5: 
PLS-00103: Encountered the symbol "S" The symbol "S" was ignored. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    CURSOR c1 is select ename, sal, e.deptno, dname from emp e join dept d on (e.deptno=d.deptno) where sal > 1500;
  3    v_cur c1%rowtype;
  4  BEGIN
  5    open c1;  
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.sal||' '||v_cur.e.deptno||' '||v_cur.dname);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
    dbms_output.put_line(v_cur.ename||' '||v_cur.sal||' '||v_cur.e.deptno||' '||v_cur.dname);
                                                                 *
ERROR at line 9:
ORA-06550: line 9, column 66: 
PLS-00302: component 'E' must be declared 
ORA-06550: line 9, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    CURSOR c1 is select ename, sal, e.deptno, dname from emp e join dept d on (e.deptno=d.deptno) where sal > 1500;
  3    v_cur c1%rowtype;
  4  BEGIN
  5    open c1;  
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.sal||' '||v_cur.deptno||' '||v_cur.dname);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
ALLEN 1600 30 SALES                                                                                                     
JONES 2975 20 RESEARCH                                                                                                  
BLAKE 2850 30 SALES                                                                                                     
CLARK 2450 10 ACCOUNTING                                                                                                
SCOTT 3000 20 RESEARCH                                                                                                  
KING 5000 10 ACCOUNTING                                                                                                 
FORD 3000 20 RESEARCH                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select * from emp;
  3  BEGIN
  4    FOR i in c1 LOOP
  5      dbms_output.put_line(i.ename);
  6    END LOOP;
  7* END;
SQL> .
SQL> /
SMITH                                                                                                                   
ALLEN                                                                                                                   
WARD                                                                                                                    
JONES                                                                                                                   
MARTIN                                                                                                                  
BLAKE                                                                                                                   
CLARK                                                                                                                   
SCOTT                                                                                                                   
KING                                                                                                                    
TURNER                                                                                                                  
ADAMS                                                                                                                   
JAMES                                                                                                                   
FORD                                                                                                                    
MILLER                                                                                                                  

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1 is select * from emp;
  3  BEGIN
  4    FOR i in c1 LOOP
  5      dbms_output.put_line(i.ename||' '||i.empno);
  6    END LOOP;
  7* END;
SQL> 
SQL> /
SMITH 7369                                                                                                              
ALLEN 7499                                                                                                              
WARD 7521                                                                                                               
JONES 7566                                                                                                              
MARTIN 7654                                                                                                             
BLAKE 7698                                                                                                              
CLARK 7782                                                                                                              
SCOTT 7788                                                                                                              
KING 7839                                                                                                               
TURNER 7844                                                                                                             
ADAMS 7876                                                                                                              
JAMES 7900                                                                                                              
FORD 7902                                                                                                               
MILLER 7934                                                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  -- CURSOR FOR LOOP
  2  DECLARE
  3    cursor c1 is select * from emp;
  4  BEGIN
  5    FOR i in c1 LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8* END;
  9  /
SMITH 7369                                                                                                              
ALLEN 7499                                                                                                              
WARD 7521                                                                                                               
JONES 7566                                                                                                              
MARTIN 7654                                                                                                             
BLAKE 7698                                                                                                              
CLARK 7782                                                                                                              
SCOTT 7788                                                                                                              
KING 7839                                                                                                               
TURNER 7844                                                                                                             
ADAMS 7876                                                                                                              
JAMES 7900                                                                                                              
FORD 7902                                                                                                               
MILLER 7934                                                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  -- CURSOR FOR LOOP
  2  BEGIN
  3    FOR i in (select * from emp) LOOP
  4      dbms_output.put_line(i.ename||' '||i.empno);
  5    END LOOP;
  6* END;
  7  /
SMITH 7369                                                                                                              
ALLEN 7499                                                                                                              
WARD 7521                                                                                                               
JONES 7566                                                                                                              
MARTIN 7654                                                                                                             
BLAKE 7698                                                                                                              
CLARK 7782                                                                                                              
SCOTT 7788                                                                                                              
KING 7839                                                                                                               
TURNER 7844                                                                                                             
ADAMS 7876                                                                                                              
JAMES 7900                                                                                                              
FORD 7902                                                                                                               
MILLER 7934                                                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  BEGIN
  4    open c1(10);
  5    FOR i in c1 LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8    close c1;
  9* END;
SQL> /
  FOR i in c1 LOOP
           *
ERROR at line 5:
ORA-06550: line 5, column 12: 
PLS-00306: wrong number or types of arguments in call to 'C1' 
ORA-06550: line 5, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  BEGIN
  4    open c1(10);
  5    FOR i in c1(10) LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8    close c1;
  9* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-06511: PL/SQL: cursor already open 
ORA-06512: at line 2 
ORA-06512: at line 5 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  BEGIN
  4    open c1(10);
  5    FOR i in c1(10) LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8    close c1;
  9* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-06511: PL/SQL: cursor already open 
ORA-06512: at line 2 
ORA-06512: at line 5 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  BEGIN
  4    open c1(10);
  5    FOR i in c1 LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8    close c1;
  9* END;
SQL> /
  FOR i in c1 LOOP
           *
ERROR at line 5:
ORA-06550: line 5, column 12: 
PLS-00306: wrong number or types of arguments in call to 'C1' 
ORA-06550: line 5, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  BEGIN
  4    open c1(10);
  5    FOR i in c1() LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8    close c1;
  9* END;
SQL> /
  FOR i in c1() LOOP
           *
ERROR at line 5:
ORA-06550: line 5, column 12: 
PLS-00306: wrong number or types of arguments in call to 'C1' 
ORA-06550: line 5, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  BEGIN
  4    open c1(10);
  5    FOR i in c1(10) LOOP
  6      dbms_output.put_line(i.ename||' '||i.empno);
  7    END LOOP;
  8    close c1;
  9* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-06511: PL/SQL: cursor already open 
ORA-06512: at line 2 
ORA-06512: at line 5 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  v_cur c1%rowtype;
  4  BEGIN
  5    open c1(10);
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.empno);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
CLARK 7782                                                                                                              
KING 7839                                                                                                               
MILLER 7934                                                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  v_cur c1%rowtype;
  4  BEGIN
  5    open c1(10);
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.empno);
 10    END LOOP;
 11    close c1;
 12    open c1(20);
 13    LOOP
 14      fetch c1 into v_cur;
 15      exit when c1%notfound;
 16      dbms_output.put_line(v_cur.ename||' '||v_cur.empno);
 17    END LOOP;
 18    close c1;
 19* END;
SQL> /
CLARK 7782                                                                                                              
KING 7839                                                                                                               
MILLER 7934                                                                                                             
SMITH 7369                                                                                                              
JONES 7566                                                                                                              
SCOTT 7788                                                                                                              
ADAMS 7876                                                                                                              
FORD 7902                                                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  v_cur c1%rowtype;
  4  BEGIN
  5    open c1(10);
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.empno||'  '||v_cur.deptno);
 10    END LOOP;
 11    close c1;
 12    open c1(20);
 13    LOOP
 14      fetch c1 into v_cur;
 15      exit when c1%notfound;
 16      dbms_output.put_line(v_cur.ename||' '||v_cur.empno);
 17    END LOOP;
 18    close c1;
 19* END;
SQL> /
CLARK 7782  10                                                                                                          
KING 7839  10                                                                                                           
MILLER 7934  10                                                                                                         
SMITH 7369                                                                                                              
JONES 7566                                                                                                              
SCOTT 7788                                                                                                              
ADAMS 7876                                                                                                              
FORD 7902                                                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  v_cur c1%rowtype;
  4  BEGIN
  5    open c1(10);
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.empno||'  '||v_cur.deptno);
 10    END LOOP;
 11    close c1;
 12    open c1(20);
 13    LOOP
 14      fetch c1 into v_cur;
 15      exit when c1%notfound;
 16      dbms_output.put_line(v_cur.ename||' '||v_cur.empno||'  '||v_cur.deptno);
 17    END LOOP;
 18    close c1;
 19* END;
SQL> /
CLARK 7782  10                                                                                                          
KING 7839  10                                                                                                           
MILLER 7934  10                                                                                                         
SMITH 7369  20                                                                                                          
JONES 7566  20                                                                                                          
SCOTT 7788  20                                                                                                          
ADAMS 7876  20                                                                                                          
FORD 7902  20                                                                                                           

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  v_cur c1%rowtype;
  4  BEGIN
  5    open c1(&deptno);
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.empno||'  '||v_cur.deptno);
 10    END LOOP;
 11    close c1;
 12    open c1(20);
 13    LOOP
 14      fetch c1 into v_cur;
 15      exit when c1%notfound;
 16      dbms_output.put_line(v_cur.ename||' '||v_cur.empno||'  '||v_cur.deptno);
 17    END LOOP;
 18    close c1;
 19* END;
SQL> /
Enter value for deptno: 10
old   5:   open c1(&deptno);
new   5:   open c1(10);
CLARK 7782  10                                                                                                          
KING 7839  10                                                                                                           
MILLER 7934  10                                                                                                         
SMITH 7369  20                                                                                                          
JONES 7566  20                                                                                                          
SCOTT 7788  20                                                                                                          
ADAMS 7876  20                                                                                                          
FORD 7902  20                                                                                                           

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    cursor c1(p_deptno emp.deptno%type) is select empno, ename, deptno from emp where deptno = p_deptno;
  3  v_cur c1%rowtype;
  4  BEGIN
  5    open c1(&deptno);
  6    LOOP
  7      fetch c1 into v_cur;
  8      exit when c1%notfound;
  9      dbms_output.put_line(v_cur.ename||' '||v_cur.empno||'  '||v_cur.deptno);
 10    END LOOP;
 11    close c1;
 12* END;
SQL> /
Enter value for deptno: 10
old   5:   open c1(&deptno);
new   5:   open c1(10);
CLARK 7782  10                                                                                                          
KING 7839  10                                                                                                           
MILLER 7934  10                                                                                                         

PL/SQL procedure successfully completed.

SQL> /
Enter value for deptno: 20
old   5:   open c1(&deptno);
new   5:   open c1(20);
SMITH 7369  20                                                                                                          
JONES 7566  20                                                                                                          
SCOTT 7788  20                                                                                                          
ADAMS 7876  20                                                                                                          
FORD 7902  20                                                                                                           

PL/SQL procedure successfully completed.

SQL> /
Enter value for deptno: 30
old   5:   open c1(&deptno);
new   5:   open c1(30);
ALLEN 7499  30                                                                                                          
WARD 7521  30                                                                                                           
MARTIN 7654  30                                                                                                         
BLAKE 7698  30                                                                                                          
TURNER 7844  30                                                                                                         
JAMES 7900  30                                                                                                          

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT staff_code, staff_name, staff_sal FROM staff_masters WHERE dept_code = p_dept_code;
  3    v_c1 c1%rowtype;
  4  BEGIN
  5    open c1(&dept_code);
  6    LOOP
  7      FETCH c1 into v_c1;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(c1.staff_code||'  '||c1.staff_name||'  '||c1.staff_sal);
 10    END LOOP;
 11    close c1;  
 12* END;
SQL> /
Enter value for dept_code: 10
old   5:   open c1(&dept_code);
new   5:   open c1(10);
    dbms_output.put_line(c1.staff_code||'  '||c1.staff_name||'  '||c1.staff_sal);
                            *
ERROR at line 9:
ORA-06550: line 9, column 29: 
PLS-00225: subprogram or cursor 'C1' reference is out of scope 
ORA-06550: line 9, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT staff_code, staff_name, staff_sal FROM staff_masters WHERE dept_code = p_dept_code;
  3    v_c1 c1%rowtype;
  4  BEGIN
  5    open c1(&dept_code);
  6    LOOP
  7      FETCH c1 into v_c1;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_c1.staff_code||'  '||v_c1.staff_name||'  '||v_c1.staff_sal);
 10    END LOOP;
 11    close c1;  
 12* END;
SQL> /
Enter value for dept_code: 10
old   5:   open c1(&dept_code);
new   5:   open c1(10);
    dbms_output.put_line(v_c1.staff_code||'  '||v_c1.staff_name||'  '||v_c1.staff_sal);
                                                 *
ERROR at line 9:
ORA-06550: line 9, column 50: 
PLS-00103: Encountered the symbol "" when expecting one of the following: 
. ( ) , * @ % & = - + < / > at in is mod remainder not rem => 
<an exponent (**)> <> or != or ~= >= <= <> and or like like2 
like4 likec as between from using || member submultiset 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT staff_code, staff_name, staff_sal FROM staff_masters WHERE dept_code = p_dept_code;
  3    v_c1 c1%rowtype;
  4  BEGIN
  5    open c1(&dept_code);
  6    LOOP
  7      FETCH c1 into v_c1;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_c1.staff_code||'  '||v_c1.staff_name||'  '||v_c1.staff_sal);
 10    END LOOP;
 11    close c1;  
 12* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT staff_code, staff_name, staff_sal FROM staff_masters WHERE dept_code = p_dept_code;
  3    v_c1 c1%rowtype;
  4  BEGIN
  5    open c1(&dept_code);
  6    LOOP
  7      FETCH c1 into v_c1;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_c1.staff_code||'  '||v_c1.staff_name||'  '||v_c1.staff_sal);
 10    END LOOP;
 11    close c1;  
 12* END;
SQL> /
Enter value for dept_code: 10
old   5:   open c1(&dept_code);
new   5:   open c1(10);
100003  Mohan  24000                                                                                                    
100005  John  32000                                                                                                     

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT * FROM staff_masters WHERE dept_code=p_dept_code;
  3    v_c1 c1%rowtype; 
  4  BEGIN
  5    OPEN C1(&dept_code);
  6    LOOP
  7      FETCH C1 into v_c1;
  8      dbms_output.put_line(v_c1.staff_code || '  ' || v_c1.staff_name || '  ' || v_c1.design_code || '  ' || v_c1.dept_code || '  ' || v_c1.staff_dob || '  ' || v_c1.hiredate || '  ' || v_c1.mgr_code || '  ' || v_c1.staff_sal || '  ' || v_c1.staff_address );
  9    CLOSE C1;
 10* END;
SQL> /
Enter value for dept_code: 10
old   5:   OPEN C1(&dept_code);
new   5:   OPEN C1(10);
END;
   *
ERROR at line 10:
ORA-06550: line 10, column 4: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
loop 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT * FROM staff_masters WHERE dept_code=p_dept_code;
  3    v_c1 c1%rowtype; 
  4  BEGIN
  5    OPEN C1(&dept_code);
  6    LOOP
  7      FETCH C1 into v_c1;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_c1.staff_code || '  ' || v_c1.staff_name || '  ' || v_c1.design_code || '  ' || v_c1.dept_code || '  ' || v_c1.staff_dob || '  ' || v_c1.hiredate || '  ' || v_c1.mgr_code || '  ' || v_c1.staff_sal || '  ' || v_c1.staff_address );
 10    END LOOP;
 11    CLOSE C1;
 12* END;
SQL> /
Enter value for dept_code: 10
old   5:   OPEN C1(&dept_code);
new   5:   OPEN C1(10);
100003  Mohan  102  10  23-MAR-80  19-JAN-02  100006  24000  Mumbai                                                     
100005  John  106  10  22-MAY-76  21-JAN-01  100007  32000  Bangalore                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    CURSOR c1(p_dept_code staff_masters.dept_code%type) is SELECT * FROM staff_masters WHERE dept_code=p_dept_code;
  3    v_c1 c1%rowtype; 
  4  BEGIN
  5    OPEN C1(&dept_code);
  6    LOOP
  7      FETCH C1 into v_c1;
  8      EXIT when c1%notfound;
  9      dbms_output.put_line(v_c1.staff_code || '  ' || v_c1.staff_name || '  ' || v_c1.design_code || '  ' || v_c1.dept_code || '  ' || v_c1.staff_dob || '  ' || v_c1.hiredate || '  ' || v_c1.mgr_code || '  ' || v_c1.staff_sal || '  ' || v_c1.staff_address );
 10    END LOOP;
 11    CLOSE C1;
 12* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    min_sal staff_masters.staff_sal%type;
  3  BEGIN
  4    select min(sal) into min_sal from staff_masters where dept_code=&dept_code;
  5    IF min_sal*0.3 < 5000 THEN
  6       min_sal := min_sal + min_sal*0.3;
  7       dbms_output.put_line (min_sal);
  8    ELSE
  9       min_sal := min_sal + 5000;
 10       dbms_output.put_line (min_sal);
 11    END IF;
 12* END; 
SQL> /
Enter value for dept_code: 10
old   4:   select min(sal) into min_sal from staff_masters where dept_code=&dept_code;
new   4:   select min(sal) into min_sal from staff_masters where dept_code=10;
  select min(sal) into min_sal from staff_masters where dept_code=10;
             *
ERROR at line 4:
ORA-06550: line 4, column 14: 
PL/SQL: ORA-00904: "SAL": invalid identifier 
ORA-06550: line 4, column 3: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    min_sal staff_masters.staff_sal%type;
  3  BEGIN
  4    select min(staff_sal) into min_sal from staff_masters where dept_code=&dept_code;
  5    IF min_sal*0.3 < 5000 THEN
  6       min_sal := min_sal + min_sal*0.3;
  7       dbms_output.put_line (min_sal);
  8    ELSE
  9       min_sal := min_sal + 5000;
 10       dbms_output.put_line (min_sal);
 11    END IF;
 12* END; 
SQL> /
Enter value for dept_code: 10
old   4:   select min(staff_sal) into min_sal from staff_masters where dept_code=&dept_code;
new   4:   select min(staff_sal) into min_sal from staff_masters where dept_code=10;
29000                                                                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    min_sal staff_masters.staff_sal%type;
  3  BEGIN
  4    select min(staff_sal) into min_sal from staff_masters where dept_code=&dept_code;
  5    IF min_sal*0.3 < 5000 THEN
  6       min_sal := min_sal + min_sal*0.3;
  7       dbms_output.put_line (min_sal);
  8    ELSE
  9       min_sal := min_sal + 5000;
 10       dbms_output.put_line (min_sal);
 11    END IF;
 12* END; 
SQL> set pagesize 500;
SQL> set linesize 500
SQL> select * from staff_masters where dept_code = 10;

STAFF_CODE STAFF_NAME                                         DESIGN_CODE  DEPT_CODE STAFF_DOB HIREDATE    MGR_CODE  STAFF_SAL STAFF_ADDRESS                                                                                                                                                                                                                                                                                                                                                                        
---------- -------------------------------------------------- ----------- ---------- --------- --------- ---------- ---------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                                                     
    100003 Mohan                                                      102         10 23-MAR-80 19-JAN-02     100006      24000 Mumbai                                                                                                                                                                                                                                                                                                                                                                               
    100005 John                                                       106         10 22-MAY-76 21-JAN-01     100007      32000 Bangalore                                                                                                                                                                                                                                                                                                                                                                            

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    min_sal staff_masters.staff_sal%type;
  3  BEGIN
  4    select min(staff_sal) into min_sal from staff_masters where dept_code=&dept_code;
  5    IF min_sal*0.3 < 5000 THEN
  6       min_sal := min_sal + min_sal*0.3;
  7       dbms_output.put_line (min_sal);
  8    ELSE
  9       min_sal := min_sal + 5000;
 10       dbms_output.put_line (min_sal);
 11    END IF;
 12* END; 
SQL> /
Enter value for dept_code: 10
old   4:   select min(staff_sal) into min_sal from staff_masters where dept_code=&dept_code;
new   4:   select min(staff_sal) into min_sal from staff_masters where dept_code=10;
29000                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

PL/SQL procedure successfully completed.

SQL> /
Enter value for dept_code: 10
old   4:   select min(staff_sal) into min_sal from staff_masters where dept_code=&dept_code;
new   4:   select min(staff_sal) into min_sal from staff_masters where dept_code=10;
29000                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1* select
SQL> /
select
     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1* select
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_ename emp.ename%type;
  3    x number := 100;
  4  BEGIN
  5    x := x/0;
  6    select ename into v_ename from emp where empno = 112312;
  7    dbms_output.put_line (v_ename);
  8* END;
SQL> /
DECLARE
*
ERROR at line 1:
ORA-01476: divisor is equal to zero 
ORA-06512: at line 5 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_ename emp.ename%type;
  3    x number := 100;
  4  BEGIN
  5    x := x/0;
  6    select ename into v_ename from emp where empno = 112312;
  7    dbms_output.put_line (v_ename);
  8  EXCEPTION
  9    dbms_output.put_line ('exception check');
 10* END;
SQL> /
  dbms_output.put_line ('exception check');
  *
ERROR at line 9:
ORA-06550: line 9, column 3: 
PLS-00103: Encountered the symbol "DBMS_OUTPUT" when expecting one of the following: 
pragma when 
ORA-06550: line 9, column 43: 
PLS-00103: Encountered the symbol ";" when expecting one of the following: 
. ( , * % & - + / at mod remainder rem <an identifier> 
<a double-quoted delimited-identifier> <an exponent (**)> as 
from into || multiset bulk 


SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    x := x/0;
  7    select ename into v_ename from emp where empno = 112312;
  8    dbms_output.put_line (v_ename);
  9  EXCEPTION
 10    WHEN zero_divide THEN
 11      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 12* END;
 13  /
Exception Check - Number cannot be divided by Zero                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where empno = 112312;
  7    x := x/0;
  8    dbms_output.put_line (v_ename);
  9  EXCEPTION
 10    WHEN zero_divide THEN
 11      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 12* END;
SQL> /
-- EXCEPTION HANDLING
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 6 


SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where empno = 112312;
  7    x := x/0;
  8    dbms_output.put_line (v_ename);
  9  EXCEPTION
 10    WHEN zero_divide THEN
 11      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 12    WHEN no_data_found THEN
 13      dbms_output.put_line ('There is no data like given. Check the data given.')
 14* END;
SQL> /
END;
*
ERROR at line 14:
ORA-06550: line 14, column 1: 
PLS-00103: Encountered the symbol "END" when expecting one of the following: 
:= . ( % ; 
The symbol ";" was substituted for "END" to continue. 


SQL> ED
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where empno = 112312;
  7    x := x/0;
  8    dbms_output.put_line (v_ename);
  9  EXCEPTION
 10    WHEN zero_divide THEN
 11      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 12    WHEN no_data_found THEN
 13      dbms_output.put_line ('There is no data like given. Check the data given.');
 14* END;
SQL> /
There is no data like given. Check the data given.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    x := x/0;
  7    select ename into v_ename from emp where empno = 112312;
  8    dbms_output.put_line (v_ename);
  9  EXCEPTION
 10    WHEN zero_divide THEN
 11      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 12    WHEN no_data_found THEN
 13      dbms_output.put_line ('There is no data like given. Check the data given.');
 14* END;
SQL> /
Exception Check - Number cannot be divided by Zero                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where deptno = 10;
  7    x := x/0;
  8    select ename into v_ename from emp where empno = 112312;
  9    dbms_output.put_line (v_ename);
 10  EXCEPTION
 11    WHEN zero_divide THEN
 12      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 13    WHEN no_data_found THEN
 14      dbms_output.put_line ('There is no data like given. Check the data given.');
 15* END;
SQL> /
-- EXCEPTION HANDLING
*
ERROR at line 1:
ORA-01422: exact fetch returns more than requested number of rows 
ORA-06512: at line 6 


SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where deptno = 10;
  7    x := x/0;
  8    select ename into v_ename from emp where empno = 112312;
  9    dbms_output.put_line (v_ename);
 10  EXCEPTION
 11    WHEN zero_divide THEN
 12      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 13    WHEN no_data_found THEN
 14      dbms_output.put_line ('There is no data like given. Check the data given.');
 15    WHEN too_many_rows THEN
 16      dbms_output.put_line('Try to fetch single row next time, Plzzz');
 17* END;
SQL> /
Try to fetch single row next time, Plzzz                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where deptno = 10;
  7    x := x/0;
  8    select ename into v_ename from emp where empno = 112312;
  9    dbms_output.put_line (v_ename);
 10  EXCEPTION
 11    WHEN zero_divide THEN
 12      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 13    WHEN no_data_found THEN
 14      dbms_output.put_line ('There is no data like given. Check the data given.');
 15    WHEN too_many_rows THEN
 16      dbms_output.put_line('Use cursor to process multiple rows. If u don't know how to use cursor, then try to fetch single row next time, Plzzz');
 17* END;
SQL> /
ERROR:
ORA-01756: quoted string not properly terminated 


SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    select ename into v_ename from emp where deptno = 10;
  7    x := x/0;
  8    select ename into v_ename from emp where empno = 112312;
  9    dbms_output.put_line (v_ename);
 10  EXCEPTION
 11    WHEN zero_divide THEN
 12      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 13    WHEN no_data_found THEN
 14      dbms_output.put_line ('There is no data like given. Check the data given.');
 15    WHEN too_many_rows THEN
 16      dbms_output.put_line('Use cursor to process multiple rows. If u dont know how to use cursor, then try to fetch single row next time, Plzzz');
 17* END;
SQL> /
Use cursor to process multiple rows. If u dont know how to use cursor, then try to fetch single row next time, Plzzz                                                                                                                                                                                                                                                                                                                                                                                                

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  -- EXCEPTION HANDLING
  2  DECLARE
  3    v_ename emp.ename%type;
  4    x number := 100;
  5  BEGIN
  6    insert into dept values(10,'abcd','zyx');
  7    select ename into v_ename from emp where deptno = 10;
  8    x := x/0;
  9    select ename into v_ename from emp where empno = 112312;
 10    dbms_output.put_line (v_ename);
 11  EXCEPTION
 12    WHEN zero_divide THEN
 13      dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 14    WHEN no_data_found THEN
 15      dbms_output.put_line ('There is no data like given. Check the data given.');
 16    WHEN too_many_rows THEN
 17      dbms_output.put_line('Use cursor to process multiple rows. If u dont know how to use cursor, then try to fetch single row next time, Plzzz');
 18* END;
SQL> /
Use cursor to process multiple rows. If u dont know how to use cursor, then try to fetch single row next time, Plzzz                                                                                                                                                                                                                                                                                                                                                                                                

PL/SQL procedure successfully completed.

SQL> alter table dept
  2  modify deptno primary key;
alter table dept
*
ERROR at line 1:
ORA-02437: cannot validate (SCOTT.SYS_C007169) - primary key violated 


SQL> ed
Wrote file afiedt.buf

  1  alter table dept
  2* modify deptno primary key
SQL> select constraint_name from user_constriants where table_name = 'DEPT';
select constraint_name from user_constriants where table_name = 'DEPT'
                            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* select constraint_name from user_constriant where table_name = 'DEPT'
SQL> /
select constraint_name from user_constriant where table_name = 'DEPT'
                            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* select constraint_name from user_constriant where table_name = 'DEPT'
SQL> /
select constraint_name from user_constriant where table_name = 'DEPT'
                            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* select constraint_name from user_constriant where table_name = 'DEPT'
SQL> alter table dept
  2  /
alter table dept
               *
ERROR at line 1:
ORA-02210: no options specified for ALTER TABLE 


SQL> rollback
  2  ed
  3  /
ed
*
ERROR at line 2:
ORA-02181: invalid option to ROLLBACK WORK 


SQL> rollback;

Rollback complete.

SQL> alter table dept
  2  add primary key(deptno);
alter table dept
*
ERROR at line 1:
ORA-02437: cannot validate (SCOTT.SYS_C007170) - primary key violated 


SQL> selct * from dept;
SP2-0734: unknown command beginning "selct * fr..." - rest of line ignored.
SQL> select * from dept;

    DEPTNO DNAME          LOC                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
---------- -------------- -------------                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
        10 ACCOUNTING     NEW YORK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
        20 RESEARCH       DALLAS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        30 SALES          CHICAGO                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
        10 abcd           zyx                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

SQL> delete from dept where dname=
  2  '
  3  abcd';

0 rows deleted.

SQL> delete from dept where dname='abcd';

1 row deleted.

SQL> alter table dept
  2  add primary key(deptno);

Table altered.

SQL> ed
Wrote file afiedt.buf

  1      -- EXCEPTION HANDLING
  2      DECLARE
  3        v_ename emp.ename%type;
  4        x number := 100;
  5      BEGIN
  6        insert into dept values(10,'abcd','zyx');
  7        select ename into v_ename from emp where deptno = 10;
  8        x := x/0;
  9        select ename into v_ename from emp where empno = 112312;
 10       dbms_output.put_line (v_ename);
 11     EXCEPTION
 12       WHEN zero_divide THEN
 13         dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 14       WHEN no_data_found THEN
 15         dbms_output.put_line ('There is no data like given. Check the data given.');
 16       WHEN too_many_rows THEN
 17         dbms_output.put_line('Use cursor to process multiple rows. If u dont know how to use cursor, then try to fetch single row next time, Plzzz');
 18*   END;
SQL> /
    -- EXCEPTION HANDLING
*
ERROR at line 1:
ORA-00001: unique constraint (SCOTT.SYS_C007171) violated 
ORA-06512: at line 6 


SQL> ed
Wrote file afiedt.buf

  1      -- EXCEPTION HANDLING
  2      DECLARE
  3        v_ename emp.ename%type;
  4        x number := 100;
  5      BEGIN
  6        insert into dept values(10,'abcd','zyx');
  7        select ename into v_ename from emp where deptno = 10;
  8        x := x/0;
  9        select ename into v_ename from emp where empno = 112312;
 10       dbms_output.put_line (v_ename);
 11     EXCEPTION
 12       WHEN zero_divide THEN
 13         dbms_output.put_line('Exception Check - Number cannot be divided by Zero');
 14       WHEN no_data_found THEN
 15         dbms_output.put_line ('There is no data like given. Check the data given.');
 16       WHEN too_many_rows THEN
 17         dbms_output.put_line('Use cursor to process multiple rows. If u dont know how to use cursor, then try to fetch single row next time, Plzzz');
 18       WHEN dup_val_on_index THEN
 19         dbms_output.put_line('Cannot insert duplicate values, Cuz it has a unique column.');
 20*   END;
SQL> /
Cannot insert duplicate values, Cuz it has a unique column.                                                                                                                                                                                                                                                                                                                                                                                                                                                         

PL/SQL procedure successfully completed.

SQL> spool off
