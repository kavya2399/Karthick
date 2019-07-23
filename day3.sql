SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_deptno dept.deptno%type;
  3    v_loc dept.loc%type;
  4    v_max_sal emp.sal%type;
  5  BEGIN
  6    SELECT d.deptno, d.loc, max(e.sal) 
  7    INTO v_deptno, v_loc, v_max_sal
  8    FROM emp e
  9    JOIN dept d
 10    ON(e.deptno = d.deptno) 
 11    AND d.deptno=&deptno 
 12    GROUP BY d.deptno, d.loc ;
 13    dbms_output.put_line(v_deptno || '  ' || v_loc || '  ' || v_max_sal);
 14* END;
SQL> /
Enter value for deptno: 10
old  11:   AND d.deptno=&deptno 
new  11:   AND d.deptno=10 
10  NEW YORK  5000                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_deptno dept.deptno%type;
  3    v_loc dept.loc%type;
  4    v_max_sal emp.sal%type;
  5  BEGIN
  6    SELECT d.deptno, d.loc, max(e.sal) 
  7    INTO v_deptno, v_loc, v_max_sal
  8    FROM emp e
  9    JOIN dept d
 10    ON(e.deptno = d.deptno) 
 11    WHERE d.deptno=&deptno 
 12    GROUP BY d.deptno, d.loc ;
 13    dbms_output.put_line(v_deptno || '  ' || v_loc || '  ' || v_max_sal);
 14* END;
SQL> /
Enter value for deptno: 10
old  11:   WHERE d.deptno=&deptno 
new  11:   WHERE d.deptno=10 
10  NEW YORK  5000                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    LOOP
  5      x := x+1;
  6      dbms_output.put_line(x);
  7      exit when x = 10;
  8    END LOOP;
  9* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 1;
  3  BEGIN
  4    LOOP
  5      dbms_output.put_line(x);
  6      x := x+2;
  7      exit when x = 11;
  8    END LOOP;
  9* END;
SQL> /
1                                                                               
3                                                                               
5                                                                               
7                                                                               
9                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 1;
  3  BEGIN
  4    LOOP
  5      IF x % 2 = 1 THEN    
  6        dbms_output.put_line(x);
  7      x := x+1;
  8      exit when x = 11;
  9    END LOOP;
 10* END;
SQL> /
    IF x % 2 = 1 THEN    
           *
ERROR at line 5:
ORA-06550: line 5, column 12: 
PLS-00103: Encountered the symbol "2" when expecting one of the following: 
type <an identifier> <a double-quoted delimited-identifier> 
ORA-06550: line 9, column 7: 
PLS-00103: Encountered the symbol "LOOP" when expecting one of the following: 
if 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 1;
  3  BEGIN
  4    LOOP
  5      IF x % 2 = 1 THEN    
  6        dbms_output.put_line(x);
  7      END IF;
  8      x := x+1;
  9      exit when x = 11;
 10    END LOOP;
 11* END;
SQL> /
    IF x % 2 = 1 THEN    
           *
ERROR at line 5:
ORA-06550: line 5, column 12: 
PLS-00103: Encountered the symbol "2" when expecting one of the following: 
type <an identifier> <a double-quoted delimited-identifier> 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 1;
  3  BEGIN
  4    LOOP
  5      IF x % "2" = 1 THEN    
  6        dbms_output.put_line(x);
  7      END IF;
  8      x := x+1;
  9      exit when x = 11;
 10    END LOOP;
 11* END;
SQL> /
    IF x % "2" = 1 THEN    
            *
ERROR at line 5:
ORA-06550: line 5, column 13: 
PLS-00208: identifier '2' is not a legal cursor attribute 
ORA-06550: line 5, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 1;
  3  BEGIN
  4    LOOP
  5      dbms_output.put_line(x);
  6      x := x+2;
  7      exit when x = 11;
  8    END LOOP;
  9* END;
SQL> /
1                                                                               
3                                                                               
5                                                                               
7                                                                               
9                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    LOOP
  5      x := x+1;
  6      IF MOD (X,2)!=0 THEN
  7        dbms_output.put_line(x);
  8      END IF;
  9      exit when x = 10;
 10    END LOOP;
 11* END;
SQL> /
1                                                                               
3                                                                               
5                                                                               
7                                                                               
9                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    LOOP
  5      x := x+1;
  6      IF MOD (x,2) = 0 THEN
  7        dbms_output.put_line(x);
  8      END IF;
  9      exit when x = 10;
 10    END LOOP;
 11* END;
SQL> /
2                                                                               
4                                                                               
6                                                                               
8                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    WHILE x < 10 LOOP
  5      x := x+1;
  6      dbms_output.put_line(x);
  7    END LOOP;
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    WHILE x <= 10 LOOP
  5      x := x+1;
  6      dbms_output.put_line(x);
  7    END LOOP;
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              
11                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    WHILE x <= 10 LOOP
  5      dbms_output.put_line(x);
  6      x := x+1;
  7    END LOOP;
  8* END;
SQL> /
0                                                                               
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3    i number;
  4  BEGIN
  5    FOR i in 1..10 LOOP
  6      dbms_output.put_line(x+1);
  7    END LOOP;
  8* END;
  9  /
1                                                                               
1                                                                               
1                                                                               
1                                                                               
1                                                                               
1                                                                               
1                                                                               
1                                                                               
1                                                                               
1                                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3    i number;
  4  BEGIN
  5    FOR i in 1..10 LOOP
  6      x := x+1;
  7      dbms_output.put_line(x);
  8    END LOOP;
  9* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  --  i number;
  4  BEGIN
  5    FOR i in 1..10 LOOP
  6      x := x+1;
  7      dbms_output.put_line(x);
  8    END LOOP;
  9* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    FOR index in 1..10 LOOP
  5      x := x+1;
  6      dbms_output.put_line(x);
  7    END LOOP;
  8* END;
SQL> /
  FOR index in 1..10 LOOP
      *
ERROR at line 4:
ORA-06550: line 4, column 7: 
PLS-00103: Encountered the symbol "INDEX" when expecting one of the following: 
<an identifier> <a double-quoted delimited-identifier> 
The symbol "<an identifier> was inserted before "INDEX" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    x number := 0;
  3  BEGIN
  4    FOR iter in 1..10 LOOP
  5      x := x+1;
  6      dbms_output.put_line(x);
  7    END LOOP;
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2  BEGIN
  3    FOR i in 1..10 LOOP
  4      dbms_output.put_line(i);
  5    END LOOP;
  6* END;
  7  /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2  BEGIN
  3    FOR i in 1..10 LOOP
  4      i := i+1;
  5      dbms_output.put_line(i);
  6    END LOOP;
  7* END;
SQL> /
    i := i+1;
    *
ERROR at line 4:
ORA-06550: line 4, column 5: 
PLS-00363: expression 'I' cannot be used as an assignment target 
ORA-06550: line 4, column 5: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2  BEGIN
  3    FOR i in 1..10 LOOP
  4      i := i+1;
  5      dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
    i := i+1;
    *
ERROR at line 4:
ORA-06550: line 4, column 5: 
PLS-00363: expression 'I' cannot be used as an assignment target 
ORA-06550: line 4, column 5: 
PL/SQL: Statement ignored 
ORA-06550: line 7, column 24: 
PLS-00201: identifier 'I' must be declared 
ORA-06550: line 7, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2  BEGIN
  3    FOR i in 1..10 LOOP
  4      dbms_output.put_line(i);
  5    END LOOP;
  6    dbms_output.put_line(i);
  7* END;
SQL> /
  dbms_output.put_line(i);
                       *
ERROR at line 6:
ORA-06550: line 6, column 24: 
PLS-00201: identifier 'I' must be declared 
ORA-06550: line 6, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number;
  3  BEGIN
  4    FOR i in 1..10 LOOP
  5      dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number := 11;
  3  BEGIN
  4    FOR i in 1..10 LOOP
  5      dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              
11                                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number := 100;
  3  BEGIN
  4    FOR i in 1..10 LOOP
  5      dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              
100                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number := 100;
  3  BEGIN
  4    FOR i in 1..10 LOOP
  5  --    dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
  END LOOP;
  *
ERROR at line 6:
ORA-06550: line 6, column 3: 
PLS-00103: Encountered the symbol "END" when expecting one of the following: 
( begin case declare exit for goto if loop mod null pragma 
raise return select update while with <an identifier> 
<a double-quoted delimited-identifier> <a bind variable> << 
continue close current delete fetch lock insert open rollback 
savepoint set sql execute commit forall merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number := 100;
  3  BEGIN
  4    FOR i in reverse 1..10 LOOP
  5  --    dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
  END LOOP;
  *
ERROR at line 6:
ORA-06550: line 6, column 3: 
PLS-00103: Encountered the symbol "END" when expecting one of the following: 
( begin case declare exit for goto if loop mod null pragma 
raise return select update while with <an identifier> 
<a double-quoted delimited-identifier> <a bind variable> << 
continue close current delete fetch lock insert open rollback 
savepoint set sql execute commit forall merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number := 100;
  3  BEGIN
  4    FOR i in reverse 1..10 LOOP
  5      dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
10                                                                              
9                                                                               
8                                                                               
7                                                                               
6                                                                               
5                                                                               
4                                                                               
3                                                                               
2                                                                               
1                                                                               
100                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    i number := 100;
  3  BEGIN
  4    FOR i in 1..10 LOOP
  5      dbms_output.put_line(i);
  6    END LOOP;
  7    dbms_output.put_line(i);
  8* END;
SQL> /
1                                                                               
2                                                                               
3                                                                               
4                                                                               
5                                                                               
6                                                                               
7                                                                               
8                                                                               
9                                                                               
10                                                                              
100                                                                             

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 3000 THEN
  9      dbms_output.put_line('High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 THEN
  9      dbms_output.put_line('High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
High Salary!                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 THEN
  9      dbms_output.put_line('High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 790
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 790;
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 4 


SQL> /.
Enter value for empno: 7900
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7900;

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7900
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7900;

PL/SQL procedure successfully completed.

SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
3000 High Salary!                                                               

PL/SQL procedure successfully completed.

SQL> /
Enter value for empno: 7698
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7698;
2850 High Salary!                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 and v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7689
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7689;
DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 4 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000, v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
  IF v_sal > 1000, v_sal < 3000 THEN
                 *
ERROR at line 8:
ORA-06550: line 8, column 18: 
PLS-00103: Encountered the symbol "," when expecting one of the following: 
* & - + / at mod remainder rem then <an exponent (**)> and or 
|| multiset 
The symbol "and was inserted before "," to continue. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 && v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
Enter value for v_sal: 4000
old   8:   IF v_sal > 1000 && v_sal < 3000 THEN
new   8:   IF v_sal > 1000 4000 < 3000 THEN
  IF v_sal > 1000 4000 < 3000 THEN
                  *
ERROR at line 8:
ORA-06550: line 8, column 19: 
PLS-00103: Encountered the symbol "4000" when expecting one of the following: 
* & - + / at mod remainder rem then <an exponent (**)> and or 
|| multiset 
The symbol "and" was substituted for "4000" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 & v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
old   8:   IF v_sal > 1000 & v_sal < 3000 THEN
new   8:   IF v_sal > 1000 4000 < 3000 THEN
  IF v_sal > 1000 4000 < 3000 THEN
                  *
ERROR at line 8:
ORA-06550: line 8, column 19: 
PLS-00103: Encountered the symbol "4000" when expecting one of the following: 
* & - + / at mod remainder rem then <an exponent (**)> and or 
|| multiset 
The symbol "and" was substituted for "4000" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 and v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> /
Enter value for empno: 7782
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7782;
2450 High Salary!                                                               

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 and v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal||' High Salary!');
 10    END IF;
 11* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal > 1000 and v_sal < 3000 THEN
  9      dbms_output.put_line(v_sal || ' High Salary!');
 10    ELSE
 11      dbms_output.put_line(v_sal || ' Low Salary!');
 12    END IF;
 13* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
3000 Low Salary!                                                                

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal >= 4000 and v_sal < 5000 THEN
  9      dbms_output.put_line(v_sal || ' Grade A');
 10    ELSIF v_sal >= 3000 and v_sal < 4000 THEN
 11      dbms_output.put_line(v_sal || ' Grade B');
 12    ELSIF v_sal >= 2000 and v_sal < 3000 THEN
 13      dbms_output.put_line(v_sal || ' Grade C');
 14    ELSE
 15      dbms_output.put_line(v_sal || ' Grade D');
 16    END IF;
 17* END;
SQL> /
Enter value for empno: 7782
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7782;
2450 Grade C                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal >= 4000 and v_sal < 5000 THEN
  9      dbms_output.put_line(v_sal || ' Grade A');
 10    ELSIF v_sal >= 3000 and v_sal < 4000 THEN
 11      dbms_output.put_line(v_sal || ' Grade B');
 12    ELSIF v_sal >= 2000 and v_sal < 3000 THEN
 13      dbms_output.put_line(v_sal || ' Grade C');
 14    ELSE
 15      dbms_output.put_line(v_sal || ' Grade D');
 16    END IF;
 17* END;
SQL> /
Enter value for empno: 7839
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7839;
5000 Grade D                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_sal emp.sal%type;
  3  BEGIN
  4    SELECT sal
  5    INTO v_sal
  6    FROM emp
  7    WHERE empno = &empno;
  8    IF v_sal >= 4000 and v_sal <= 5000 THEN
  9      dbms_output.put_line(v_sal || ' Grade A');
 10    ELSIF v_sal >= 3000 and v_sal < 4000 THEN
 11      dbms_output.put_line(v_sal || ' Grade B');
 12    ELSIF v_sal >= 2000 and v_sal < 3000 THEN
 13      dbms_output.put_line(v_sal || ' Grade C');
 14    ELSE
 15      dbms_output.put_line(v_sal || ' Grade D');
 16    END IF;
 17* END;
SQL> /
Enter value for empno: 7839
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7839;
5000 Grade A                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_empno emp.empno%type;
  3    v_deptno emp.deptno%type;
  4  BEGIN
  5    SELECT empno, deptno
  6    INTO v_empno, v_deptno
  7    FROM emp
  8    WHERE empno = &empno;
  9    IF v_deptno = 20 THEN
 10      update emp set sal = sal+20 where empno=v_empno;
 11    ELSIF v_deptno = 30 THEN
 12      update emp set sal = sal+30 where empno=v_empno;
 13    ELSE
 14      dbms_output.put_line('No Update!');
 15    END IF;
 16    IF sql%found THEN
 17      dbms_output.put_line(sql%rowcount);
 18    END IF;
 19* END;
SQL> /
Enter value for empno: 7839
old   8:   WHERE empno = &empno;
new   8:   WHERE empno = 7839;
No Update!                                                                      
1                                                                               

PL/SQL procedure successfully completed.

SQL> select * from emp;

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

SQL>   1  DECLARE
SQL>   2    v_empno emp.empno%type;
SQL>   3    v_deptno emp.deptno%type;
SQL>   4  BEGIN
SQL>   5    SELECT empno, deptno
SQL>   6    INTO v_empno, v_deptno
SQL>   7    FROM emp
SQL>   8    WHERE empno = &empno;
SQL>   9    IF v_deptno = 20 THEN
SQL>  10      update emp set sal = sal+20 where empno=v_empno;
SQL>  11    ELSIF v_deptno = 30 THEN
SQL>  12      update emp set sal = sal+30 where empno=v_empno;
SQL>  13    ELSE
SQL>  14      dbms_output.put_line('No Update!');
SQL>  15    END IF;
SQL>  16    IF sql%found THEN
SQL>  17      dbms_output.put_line(sql%rowcount);
SQL>  18    END IF;
SQL>  19* END;
SP2-0042: unknown command "19* END" - rest of line ignored.
SQL> SQL> /
SP2-0042: unknown command "SQL> /" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1   DECLARE
  2     v_empno emp.empno%type;
  3     v_deptno emp.deptno%type;
  4   BEGIN
  5     SELECT empno, deptno
  6     INTO v_empno, v_deptno
  7     FROM emp
  8     WHERE empno = &empno;
  9     IF v_deptno = 20 THEN
 10       update emp set sal = sal+20 where empno=v_empno;
 11     ELSIF v_deptno = 30 THEN
 12       update emp set sal = sal+30 where empno=v_empno;
 13     ELSE
 14       dbms_output.put_line('No Update!');
 15     END IF;
 16     IF sql%found THEN
 17       dbms_output.put_line(sql%rowcount);
 18*    END IF;
SQL> /
Enter value for empno: 7788
old   8:    WHERE empno = &empno;
new   8:    WHERE empno = 7788;
   END IF;
         *
ERROR at line 18:
ORA-06550: line 18, column 10: 
PLS-00103: Encountered the symbol "end-of-file" when expecting one of the 
following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1   DECLARE
  2     v_empno emp.empno%type;
  3     v_deptno emp.deptno%type;
  4   BEGIN
  5     SELECT empno, deptno
  6     INTO v_empno, v_deptno
  7     FROM emp
  8     WHERE empno = &empno;
  9     IF v_deptno = 20 THEN
 10       update emp set sal = sal+20 where empno=v_empno;
 11     ELSIF v_deptno = 30 THEN
 12       update emp set sal = sal+30 where empno=v_empno;
 13     ELSE
 14       dbms_output.put_line('No Update!');
 15     END IF;
 16     IF sql%found THEN
 17       dbms_output.put_line(sql%rowcount);
 18     END IF;
 19* END;
SQL> /
Enter value for empno: 7788
old   8:    WHERE empno = &empno;
new   8:    WHERE empno = 7788;
1                                                                               

PL/SQL procedure successfully completed.

SQL> select * from emp;

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
                                                                                
      7788 SCOTT      ANALYST         7566 09-DEC-82       3020                 
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

SQL>   1   DECLARE
SQL>   2     v_empno emp.empno%type;
SQL>   3     v_deptno emp.deptno%type;
SQL>   4   BEGIN
SQL>   5     SELECT empno, deptno
SQL>   6     INTO v_empno, v_deptno
SQL>   7     FROM emp
SQL>   8     WHERE empno = &empno;
SQL>   9     IF v_deptno = 20 THEN
SQL>  10       update emp set sal = sal+20 where empno=v_empno;
SQL>  11     ELSIF v_deptno = 30 THEN
SQL>  12       update emp set sal = sal+30 where empno=v_empno;
SQL>  13     ELSE
SQL>  14       dbms_output.put_line('No Update!');
SQL>  15     END IF;
SQL>  16     IF sql%found THEN
SQL>  17       dbms_output.put_line(sql%rowcount);
SQL>  18     END IF;
SQL>  19* END;
SP2-0042: unknown command "19* END" - rest of line ignored.
SQL> ed
Wrote file afiedt.buf

  1    DECLARE
  2      v_empno emp.empno%type;
  3      v_deptno emp.deptno%type;
  4    BEGIN
  5      SELECT empno, deptno
  6      INTO v_empno, v_deptno
  7      FROM emp
  8      WHERE empno = &empno;
  9      IF v_deptno = 20 THEN
 10        update emp set sal = sal+20 where empno=v_empno;
 11      ELSIF v_deptno = 30 THEN
 12        update emp set sal = sal+30 where empno=v_empno;
 13      ELSE
 14        dbms_output.put_line('No Update!');
 15      END IF;
 16      IF sql%found THEN
 17        dbms_output.put_line(sql%rowcount);
 18      END IF;
 19*   END;
SQL> /
Enter value for empno: 7839
old   8:     WHERE empno = &empno;
new   8:     WHERE empno = 7839;
No Update!                                                                      
1                                                                               

PL/SQL procedure successfully completed.

SQL> ED
Wrote file afiedt.buf

  1    DECLARE
  2      v_empno emp.empno%type;
  3      v_deptno emp.deptno%type;
  4    BEGIN
  5      SELECT empno, deptno
  6      INTO v_empno, v_deptno
  7      FROM emp
  8      WHERE empno = &empno;
  9      IF v_deptno = 10 THEN
 10        update emp set sal = sal+10 where empno=v_empno;
 11      ELSIF v_deptno = 20 THEN
 12        update emp set sal = sal+20 where empno=v_empno;
 13      ELSIF v_deptno = 30 THEN
 14        update emp set sal = sal+30 where empno=v_empno;
 15      ELSE
 16        dbms_output.put_line('No Update!');
 17      END IF;
 18      IF sql%found THEN
 19        dbms_output.put_line(sql%rowcount);
 20      END IF;
 21*   END;
SQL> /
Enter value for empno: 7389
old   8:     WHERE empno = &empno;
new   8:     WHERE empno = 7389;
  DECLARE
*
ERROR at line 1:
ORA-01403: no data found 
ORA-06512: at line 5 


SQL> ED
Wrote file afiedt.buf

  1    DECLARE
  2      v_empno emp.empno%type;
  3      v_deptno emp.deptno%type;
  4    BEGIN
  5      SELECT empno, deptno
  6      INTO v_empno, v_deptno
  7      FROM emp
  8      WHERE empno = &empno;
  9      IF v_deptno = 10 THEN
 10        update emp set sal = sal+10 where empno=v_empno;
 11      ELSIF v_deptno = 20 THEN
 12        update emp set sal = sal+20 where empno=v_empno;
 13      ELSIF v_deptno = 30 THEN
 14        update emp set sal = sal+30 where empno=v_empno;
 15      ELSE
 16        dbms_output.put_line('No Update!');
 17      END IF;
 18      IF sql%found THEN
 19        dbms_output.put_line(sql%rowcount);
 20      END IF;
 21*   END;
SQL> 7839
SP2-0226: Invalid line number 
SQL> /
Enter value for empno: 7839
old   8:     WHERE empno = &empno;
new   8:     WHERE empno = 7839;
1                                                                               

PL/SQL procedure successfully completed.

SQL> ROLLBACK;

Rollback complete.

SQL> ED
Wrote file afiedt.buf

  1* ROLLBACK
SQL> SELECT * FROM EMP;

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

SQL> ED
Wrote file afiedt.buf

  1        DECLARE
  2          v_empno emp.empno%type;
  3          v_deptno emp.deptno%type;
  4        BEGIN
  5          SELECT empno, deptno
  6          INTO v_empno, v_deptno
  7          FROM emp
  8          WHERE empno = &empno;
  9          IF v_deptno = 10 THEN
 10           update emp set sal = sal+10 where empno=v_empno;
 11         ELSIF v_deptno = 20 THEN
 12           update emp set sal = sal+20 where empno=v_empno;
 13         ELSIF v_deptno = 30 THEN
 14           update emp set sal = sal+30 where empno=v_empno;
 15         /*ELSE
 16           dbms_output.put_line('No Update!');*/
 17         END IF;
 18         IF sql%found THEN
 19           dbms_output.put_line(sql%rowcount);
 20         END IF;
 21*     END;
SQL> /
Enter value for empno: 7788
old   8:         WHERE empno = &empno;
new   8:         WHERE empno = 7788;
1                                                                               

PL/SQL procedure successfully completed.

SQL> rollback;

Rollback complete.

SQL> ed
Wrote file afiedt.buf

  1  begin
  2  select sal from emp;
  3* end;
SQL> /
select sal from emp;
*
ERROR at line 2:
ORA-06550: line 2, column 1: 
PLS-00428: an INTO clause is expected in this SELECT statement 


SQL> ed
Wrote file afiedt.buf

  1  begin
  2  select sal from emp;
  3* end;
SQL> ed
Wrote file afiedt.buf

  1  begin
  2   select empno from emp where empno=7788;
  3* end;
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
 10    IF sql%found THEN
 11      dbms_output.put_line(v_staff_code||'  '||v_staff_name||'  '||v_staff_sal);
 12    END IF;
 13* END;
SQL> /
Enter value for dept_code: 40
old   9:   WHERE dept_code = &dept_code;
new   9:   WHERE dept_code = 40;
100008  Raviraj  18000                                                          

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    v_grade char(1) := UPPER ('&p_grade');
  3    v_appraisal varchar2(20);
  4  BEGIN
  5    v_appraisal :=
  6      CASE v_grade
  7  	WHEN 'A' THEN 'Excellent'
  8  	WHEN 'B' THEN 'Very Good'
  9  	WHEN 'C' THEN 'Good'
 10  	ELSE 'No such grade'
 11      END;
 12    DBMS_OUTPUT.PUT_LINE('Grade: ' || '   ' || ' Appraisal ' || v_appraisal);
 13* END;
 14  /
Enter value for p_grade: A
old   2:   v_grade char(1) := UPPER ('&p_grade');
new   2:   v_grade char(1) := UPPER ('A');
Grade:     Appraisal Excellent                                                  

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    v_grade char(1) := UPPER ('&p_grade');
  3    v_appraisal varchar2(20);
  4  BEGIN
  5    v_appraisal :=
  6      CASE v_grade
  7  	WHEN 'A' THEN 'Excellent'
  8  	WHEN 'B' THEN 'Very Good'
  9  	WHEN 'C' THEN 'Good'
 10  	ELSE 'No such grade'
 11      END;
 12    DBMS_OUTPUT.PUT_LINE('Grade: ' || '   ' || ' Appraisal ' || v_appraisal);
 13    DBMS_OUTPUT.PUT_LINE(p_grade);
 14* END;
SQL> /
Enter value for p_grade: A
old   2:   v_grade char(1) := UPPER ('&p_grade');
new   2:   v_grade char(1) := UPPER ('A');
  DBMS_OUTPUT.PUT_LINE(p_grade);
                       *
ERROR at line 13:
ORA-06550: line 13, column 24: 
PLS-00201: identifier 'P_GRADE' must be declared 
ORA-06550: line 13, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE 
  2    v_grade char(1) := UPPER ('&p_grade');
  3    v_appraisal varchar2(20);
  4  BEGIN
  5    v_appraisal :=
  6      CASE v_grade
  7  	WHEN 'A' THEN 'Excellent'
  8  	WHEN 'B' THEN 'Very Good'
  9  	WHEN 'C' THEN 'Good'
 10  	ELSE 'No such grade'
 11      END;
 12    DBMS_OUTPUT.PUT_LINE('Grade: ' || '   ' || ' Appraisal ' || v_appraisal);
 13* END;
SQL> /
Enter value for p_grade: B
old   2:   v_grade char(1) := UPPER ('&p_grade');
new   2:   v_grade char(1) := UPPER ('B');
Grade:     Appraisal Very Good                                                  

PL/SQL procedure successfully completed.

SQL> /
Enter value for p_grade: C\
old   2:   v_grade char(1) := UPPER ('&p_grade');
new   2:   v_grade char(1) := UPPER ('C\');
DECLARE 
*
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: character string buffer too small 
ORA-06512: at line 2 


SQL> /
Enter value for p_grade: C
old   2:   v_grade char(1) := UPPER ('&p_grade');
new   2:   v_grade char(1) := UPPER ('C');
Grade:     Appraisal Good                                                       

PL/SQL procedure successfully completed.

SQL> /
Enter value for p_grade: D
old   2:   v_grade char(1) := UPPER ('&p_grade');
new   2:   v_grade char(1) := UPPER ('D');
Grade:     Appraisal No such grade                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_rec dept%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_rec
  6    FROM dept
  7    WHERE deptno = 10;
  8    dbms_output.put_line(v_rec);
  9* END;
SQL> /
  dbms_output.put_line(v_rec);
  *
ERROR at line 8:
ORA-06550: line 8, column 3: 
PLS-00306: wrong number or types of arguments in call to 'PUT_LINE' 
ORA-06550: line 8, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_rec dept%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_rec
  6    FROM dept
  7    WHERE deptno = 10;
  8    dbms_output.get_line(v_rec);
  9* END;
SQL> /
  dbms_output.get_line(v_rec);
  *
ERROR at line 8:
ORA-06550: line 8, column 3: 
PLS-00306: wrong number or types of arguments in call to 'GET_LINE' 
ORA-06550: line 8, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_rec dept%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_rec
  6    FROM dept
  7    WHERE deptno = 10;
  8    dbms_output.put(v_rec);
  9* END;
SQL> /
  dbms_output.put(v_rec);
  *
ERROR at line 8:
ORA-06550: line 8, column 3: 
PLS-00306: wrong number or types of arguments in call to 'PUT' 
ORA-06550: line 8, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_rec dept%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_rec
  6    FROM dept
  7    WHERE deptno = 10;
  8    dbms_output.put_line(deptno.v_rec);
  9* END;
SQL> /
  dbms_output.put_line(deptno.v_rec);
                       *
ERROR at line 8:
ORA-06550: line 8, column 24: 
PLS-00201: identifier 'DEPTNO.V_REC' must be declared 
ORA-06550: line 8, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_rec dept%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_rec
  6    FROM dept
  7    WHERE deptno = 10;
  8    dbms_output.put_line(v_rec.deptno || ' ' || v_rec.dname || ' ' || v-rec.loc );
  9* END;
SQL> /
  dbms_output.put_line(v_rec.deptno || ' ' || v_rec.dname || ' ' || v-rec.loc );
                                                                    *
ERROR at line 8:
ORA-06550: line 8, column 69: 
PLS-00306: wrong number or types of arguments in call to 'V' 
ORA-06550: line 8, column 3: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_rec dept%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_rec
  6    FROM dept
  7    WHERE deptno = 10;
  8    dbms_output.put_line(v_rec.deptno || ' ' || v_rec.dname || ' ' || v_rec.loc );
  9* END;
SQL> /
10 ACCOUNTING NEW YORK                                                          

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    v_com emp%rowtype;
  3  BEGIN
  4    SELECT *
  5    INTO v_com
  6    FROM emp
  7    WHERE empno = &empno;
  8    dbms_output.put_line (v_com.empno || ' ' || v_com.ename || ' ' || v_com.sal || ' ' || v_com.mgr || ' ' || v_com.deptno || ' ' 
  9  || v_com.hiredate);
 10* END;
SQL> /
Enter value for empno: 7788
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7788;
7788 SCOTT 3000 7566 20 09-DEC-82                                               

PL/SQL procedure successfully completed.

SQL> /
Enter value for empno: 7900
old   7:   WHERE empno = &empno;
new   7:   WHERE empno = 7900;
7900 JAMES 950 7698 30 03-DEC-81                                                

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_empno emp.empno%type,
  4      v_ename emp.empno%type,
  5      v_sal emp.sal%type,
  6      v_deptno emp.deptno%type);
  7    v_rec rec_type;
  8  BEGIN
  9    SELECT empno, ename, sal, deptno
 10    INTO v_rec
 11    FROM emp
 12    WHERE empno = &empno;
 13    dbms_output.put_line(v_rec.v_empno || ' ' || v_rec.v_ename || ' ' || v_rec.v_sal || ' ' || v_rec.v_deptno);
 14* END;
SQL> /
Enter value for empno: 7788
old  12:   WHERE empno = &empno;
new  12:   WHERE empno = 7788;
DECLARE
*
ERROR at line 1:
ORA-06502: PL/SQL: numeric or value error: character to number conversion error 
ORA-06512: at line 9 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_empno emp.empno%type,
  4      v_ename emp.ename%type,
  5      v_sal emp.sal%type,
  6      v_deptno emp.deptno%type);
  7    v_rec rec_type;
  8  BEGIN
  9    SELECT empno, ename, sal, deptno
 10    INTO v_rec
 11    FROM emp
 12    WHERE empno = &empno;
 13    dbms_output.put_line(v_rec.v_empno || ' ' || v_rec.v_ename || ' ' || v_rec.v_sal || ' ' || v_rec.v_deptno);
 14* END;
SQL> /
Enter value for empno: 7788
old  12:   WHERE empno = &empno;
new  12:   WHERE empno = 7788;
7788 SCOTT 3000 20                                                              

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_empno emp.empno%type,
  4      v_ename emp.ename%type,
  5      v_sal emp.sal%type,
  6      v_annual_sal emp.sal%type);
  7    v_rec rec_type;
  8  BEGIN
  9    SELECT empno, ename, sal, (sal+nvl(comm,0))*12
 10    INTO v_rec
 11    FROM emp
 12    WHERE empno = &empno;
 13    dbms_output.put_line( v_rec.v_empno || ' ' || v_rec.v_ename || ' ' || v_rec.v_sal || ' ' || v_rec.v_annual_sal );
 14* END;
SQL> /
Enter value for empno: 7788
old  12:   WHERE empno = &empno;
new  12:   WHERE empno = 7788;
7788 SCOTT 3000 36000                                                           

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_empno emp.empno%type,
  4      v_ename emp.ename%type,
  5      v_deptno emp.deptno%type,
  6      v_dname dept.dname%type,
  7      v_loc dept.loc%type);
  8    v_rec rec_type;
  9  BEGIN
 10    SELECT empno, ename, d.deptno, dname, loc
 11    INTO v_rec
 12    FROM emp e JOIN dept d
 13    ON (e.deptno = d.deptno)
 14    WHERE empno = &empno;
 15    dbms_output.put_line ( v_rec.v_empno || ' ' || v_rec.v_ename || ' ' || v_rec.v_deptno || ' ' || v_rec.v_dname || ' ' || v_rec.v_loc );
 16* END;
SQL> /
Enter value for empno: 7788
old  14:   WHERE empno = &empno;
new  14:   WHERE empno = 7788;
7788 SCOTT 20 RESEARCH DALLAS                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE empno = &empno
 13    GROUP BY (d.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE empno = &empno
 13    GROUP BY (d.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for empno: 7788
old  12:   WHERE empno = &empno
new  12:   WHERE empno = 7788
20 DALLAS 3000                                                                  

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE deptno = &deptno;
 13    GROUP BY (d.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 10
old  12:   WHERE deptno = &deptno;
new  12:   WHERE deptno = 10;
  GROUP BY (d.deptno, loc);
  *
ERROR at line 13:
ORA-06550: line 13, column 3: 
PLS-00103: Encountered the symbol "GROUP" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE deptno = &deptno;
 13    GROUP BY (d.deptno, loc, sal);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 10
old  12:   WHERE deptno = &deptno;
new  12:   WHERE deptno = 10;
  GROUP BY (d.deptno, loc, sal);
  *
ERROR at line 13:
ORA-06550: line 13, column 3: 
PLS-00103: Encountered the symbol "GROUP" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE deptno = &deptno;
 13    GROUP BY (e.deptno, loc, sal);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 10
old  12:   WHERE deptno = &deptno;
new  12:   WHERE deptno = 10;
  GROUP BY (e.deptno, loc, sal);
  *
ERROR at line 13:
ORA-06550: line 13, column 3: 
PLS-00103: Encountered the symbol "GROUP" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE deptno = &deptno;
 13    GROUP BY (e.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 10
old  12:   WHERE deptno = &deptno;
new  12:   WHERE deptno = 10;
  GROUP BY (e.deptno, loc);
  *
ERROR at line 13:
ORA-06550: line 13, column 3: 
PLS-00103: Encountered the symbol "GROUP" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 


SQL> /
Enter value for deptno: 20
old  12:   WHERE deptno = &deptno;
new  12:   WHERE deptno = 20;
  GROUP BY (e.deptno, loc);
  *
ERROR at line 13:
ORA-06550: line 13, column 3: 
PLS-00103: Encountered the symbol "GROUP" when expecting one of the following: 
( begin case declare end exception exit for goto if loop mod 
null pragma raise return select update while with 
<an identifier> <a double-quoted delimited-identifier> 
<a bind variable> << continue close current delete fetch lock 
insert open rollback savepoint set sql execute commit forall 
merge pipe purge 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE deptno = &deptno
 13    GROUP BY (e.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 10
old  12:   WHERE deptno = &deptno
new  12:   WHERE deptno = 10
  WHERE deptno = 10
        *
ERROR at line 12:
ORA-06550: line 12, column 9: 
PL/SQL: ORA-00918: column ambiguously defined 
ORA-06550: line 8, column 3: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    WHERE e.deptno = &deptno
 13    GROUP BY (e.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 20
old  12:   WHERE e.deptno = &deptno
new  12:   WHERE e.deptno = 20
DECLARE
*
ERROR at line 1:
ORA-00979: not a GROUP BY expression 
ORA-06512: at line 8 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    GROUP BY (e.deptno, loc)
 13    HAVING e.deptno = &deptno;
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 30
old  13:   HAVING e.deptno = &deptno;
new  13:   HAVING e.deptno = 30;
DECLARE
*
ERROR at line 1:
ORA-00979: not a GROUP BY expression 
ORA-06512: at line 8 


SQL> ED
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    AND e.deptno = &deptno
 13    GROUP BY (e.deptno, loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 30
old  12:   AND e.deptno = &deptno
new  12:   AND e.deptno = 30
DECLARE
*
ERROR at line 1:
ORA-00979: not a GROUP BY expression 
ORA-06512: at line 8 


SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, d.loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    AND d.deptno = &deptno
 13    GROUP BY (d.deptno, d.loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> /
Enter value for deptno: 20
old  12:   AND d.deptno = &deptno
new  12:   AND d.deptno = 20
20 DALLAS 800                                                                   

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  DECLARE
  2    type rec_type is record
  3    ( v_deptno dept.deptno%type,
  4      v_loc dept.loc%type,
  5      v_min_sal emp.sal%type);
  6    v_rec rec_type;
  7  BEGIN
  8    SELECT d.deptno, d.loc, min(sal)
  9    INTO v_rec
 10    FROM emp e JOIN dept d
 11    ON (e.deptno = d.deptno)
 12    AND d.deptno = &deptno
 13    GROUP BY (d.deptno, d.loc);
 14    dbms_output.put_line ( v_rec.v_deptno || ' ' || v_rec.v_loc || ' ' || v_rec.v_min_sal ) ;
 15* END;
SQL> ed
Wrote file afiedt.buf

  1  <<outer>>
  2  DECLARE
  3   x number := 5;
  4  BEGIN
  5    <<inner>>
  6    DECLARE
  7      x number: = 10;
  8    BEGIN
  9      null;
 10    END;
 11    dbms_output.put_line(inner.x);
 12* END;
SQL> /
    x number: = 10;
            *
ERROR at line 7:
ORA-06550: line 7, column 13: 
PLS-00103: Encountered the symbol ":" when expecting one of the following: 
:= . ( @ % ; not null range default character 


SQL> ed
Wrote file afiedt.buf

  1  <<outer>>
  2  DECLARE
  3   x number := 5;
  4  BEGIN
  5    <<inner>>
  6    DECLARE
  7      x number := 10;
  8    BEGIN
  9      null;
 10    END;
 11    dbms_output.put_line(inner.x);
 12* END;
SQL> /
  dbms_output.put_line(inner.x);
                             *
ERROR at line 11:
ORA-06550: line 11, column 30: 
PLS-00219: label 'INNER' reference is out of scope 
ORA-06550: line 11, column 3: 
PL/SQL: Statement ignored 


SQL> spool off
