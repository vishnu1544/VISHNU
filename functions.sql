
--Aggregate Functions
--MIN
--c = SALARY column

select * from employees;

SELECT
    MIN(salary)
FROM
    employees;


--Department wise minimum salary

SELECT
    department_id,
    MIN(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY department_id;


--MAX
--Department wise maximum salary

SELECT
   department_id,
   MAX(SALARY)
 FROM 
   Employees
GROUP BY department_id
ORDER BY department_id;

SELECT
    department_id,
    MAX(salary),
    MIN(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    
--AVG
--department wise Average salary

SELECT
    department_id,
    AVG(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    
select employee_id, salary
from employees
where department_id = 50;

select (8000
+8200
+7900
+6500
+5800
+3200
+2700
+2400
+2200
+3300
+2800
+2500
+2100
+3300
+2900
+2400
+2200
+3600
+3200
+2700
+2500
+3500
+3100
+3100
+2600
+2500
+3200
+3100
+2500
+2800
+4200
+4100
+3400
+3000
+3800
+3600
+2900
+2500
+4000
+3900
+3200
+2800
+3100
+3000
+2600
+2600)/45  avg
 from dual;
 
 
 select sum(salary)/45
  from employees
 where department_id = 50;

--Avg value for dept 50 -->?3475.555555555555555555555555555555555556

SELECT
    department_id,
    ROUND(AVG(salary), 3) avg_rounded_salary,
    TRUNC(AVG(salary), 3) avg_trunc_salary
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    

--SUM

--department wise sum of salaries

SELECT
    department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    
    
--COUNT
--department wise count of salaries

--COUNT(column)


select * from employees;

select COUNT(*) from employees;  --107   --1177 times

--11*107

select 11* 107 from dual;

select COUNT(employee_id) from employees; --107  --107 times

select COUNT(commission_pct) from employees; --35 

--department wise count of employee_id, commission_pct
SELECT
    department_id,
    COUNT(employee_id),
    COUNT(commission_pct)
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;
    
--department wise min, max, avg, sum, count of salaries

SELECT
    department_id,
    MIN(salary)   as "++++++Min Salary+++++++",
    MAX(salary)   max_salary,
    AVG(salary)   avg_salary,
    SUM(salary)   sum_salary,
    COUNT(salary) salary_count
FROM
    employees
GROUP BY
    department_id
ORDER BY
    department_id;