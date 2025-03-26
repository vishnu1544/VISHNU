CREATE TABLE xxnyb_constraints_test (
    sno             NUMBER,
    constraint_name VARCHAR2(50) NOT NULL,
    comments        VARCHAR2(500)
);

INSERT INTO xxnyb_constraints_test VALUES ( 1,
                                            'Not Null',
                                            'It should not allow NULL values' );
commit;


INSERT INTO xxnyb_constraints_test (
    sno,
    comments
) VALUES ( 2,
           'No comments' );
           
           
--UNIQUE
--Add UNIQUE constraint on sno column from XXNYB_CONSTRAINTS_TEST

ALTER TABLE XXNYB_CONSTRAINTS_TEST
MODIFY sno number UNIQUE;

desc XXNYB_CONSTRAINTS_TEST;

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Unique',
                                            'It wont allow Duplicate values' );
                                            
select * from XXNYB_CONSTRAINTS_TEST; 

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Duplicate Unique',
                                            'No Comments' );
                                            
ROLLBACK;                                            
                                            
ALTER TABLE XXNYB_CONSTRAINTS_TEST
DROP constraint SYS_C008486;


--PRIMARY KEY
--Create Primary Key constraint on SNO column: XXNYB_CONSTRAINTS_TEST

ALTER TABLE xxnyb_constraints_test ADD CONSTRAINT sno_pk PRIMARY KEY ( sno );


--Passing Duplicate values

INSERT INTO xxnyb_constraints_test VALUES ( 2,
                                            'Duplicate Unique',
                                            'No Comments' );
                                            
--Passing NULL values

INSERT INTO xxnyb_constraints_test VALUES ( NULL,
                                            'Duplicate Unique',
                                            'No Comments' );
                                            
--COMPOSITE Primary Key
--Create a new table: XXNYB_EMPLOYEES_TEST
--Define Composite Primary Key

CREATE TABLE xxnyb_employees_test (
    employee_id   NUMBER,
    employee_name VARCHAR2(100),
    hire_date     DATE,
    department_id NUMBER,
    CONSTRAINT emp_pk PRIMARY KEY (employee_id, employee_name)
);

insert into xxnyb_employees_test values (1001, 'Chandeep', sysdate -280, 10);
insert into xxnyb_employees_test values (1002, 'Chandeep', sysdate -218, 20);

insert into xxnyb_employees_test values (1001, 'Vamsi', sysdate -280, 10);
insert into xxnyb_employees_test values (1002, 'Vamsi', sysdate -268, 20);

commit;


insert into xxnyb_employees_test values (1001, 'Vamsi', sysdate -268, 20);

insert into xxnyb_employees_test values (NULL, NULL, sysdate -268, 20);

select * from xxnyb_employees_test;