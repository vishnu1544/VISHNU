--All Constraints
--Create a table and define all constraints
-- XXNYB_EMP_COURSES
-- columns: course_no, course_name, employee_id, course_description, comments
-- Parent Table: XXNYB_EMPLOYEES_TEST Ref: EMPLOYEE_ID

CREATE TABLE xxnyb_emp_courses (
    course_no          NUMBER,
    course_name        VARCHAR2(200) NOT NULL,
    employee_id        NUMBER NOT NULL,
    department_id      NUMBER NOT NULL,
    course_description VARCHAR2(500),
    course_rating      VARCHAR2(10) DEFAULT 'NA',
    comments           VARCHAR2(500),
    CONSTRAINT course_no_pk PRIMARY KEY ( course_no ),
    CONSTRAINT emp_id_fk FOREIGN KEY ( employee_id )
        REFERENCES xxnyb_employees_test ( employee_id ),
    CONSTRAINT department_id_chk CHECK ( department_id <= 100 )
);
--Define Primary Key After the table definition

ALTER table xxnyb_emp_courses
add constraint course_no_pk PRIMARY KEY (course_no);

--drop composite primary key on xxnyb_employees_test

ALTER TABLE xxnyb_employees_test
drop constraint emp_pk;


--define primary key on employee_id from xxnyb_employees_test

ALTER TABLE xxnyb_employees_test
ADD CONSTRAINT emp_id_pk PRIMARY KEY (employee_id);


--delete the duplicate data

select * from xxnyb_employees_test
--ROWID
select xet.rowid, length(xet.rowid), xet.*
  from xxnyb_employees_test xet
order by xet.rowid desc;

select xet.rowid, xet.*
  from xxnyb_employees_test xet
 where xet.employee_id = 1002
order by xet.rowid desc;


delete from xxnyb_employees_test
where  rowid = 'AAATeTAAPAAAAIeAAB';

commit;

--ROWNUM
SELECT
    *
FROM
    (SELECT
            xet.rowid,
            xet.*
        FROM
            xxnyb_employees_test xet
        WHERE
            xet.employee_id = 1001
        ORDER BY
            xet.rowid DESC
    ) emp_test
where rownum < 3;

select e.rowid, e.*
 from employees e
 where rownum < 12;
