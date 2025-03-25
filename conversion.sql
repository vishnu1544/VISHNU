SELECT
    to_char(sysdate, 'day')
FROM
    dual;

SELECT
    to_char(sysdate, 'Dy')
FROM
    dual;
    
SELECT
    to_char(sysdate, 'DDD')
FROM
    dual;
    
SELECT
    to_char(sysdate, 'DD')
FROM
    dual;
    
SELECT
    to_char(sysdate, 'MM')
FROM
    dual;
    
SELECT
    to_char(sysdate, 'YYYY')
FROM
    dual;

SELECT
    to_char(sysdate, 'DD-MM-YYYY'),
    to_char(sysdate, 'DD/MM/YYYY'),
    to_char(sysdate, 'DD.MM.YYYY'),
    to_char(sysdate, 'DD+MM+YYYY'),
    to_char(sysdate, 'DD-MON-YYYY'),
    to_char(sysdate, 'DD-Mon-YYYY'),
    to_char(sysdate, 'DD-Month-YYYY')
FROM
    dual;   

SELECT
    to_char(sysdate, 'DD-Mon-YYYY HH24:MI:SS.SSSS'),
    to_char(current_date, 'DD-Mon-YYYY HH24:MI:SS.SSSS')
FROM
    dual;
    
    
    
--TO_DATE
--s = '20-03-2025'
--f = 'DD-MM-YYYY'

SELECT
    TO_DATE('20-03-2025', 'DD-MM-YYYY')
FROM
    dual;
    
    select sysdate from dual;
    
--s= '2025/03/25'

SELECT
    TO_DATE('2025/03/25', 'YYYY/MM/DD')
FROM
    dual;
    
    
--s = '200325'

SELECT
    TO_DATE('200325', 'DDMMYY')
FROM
    dual;
    
--s = '20250320'

select to_Date('20250320', 'YYYYMMDD')
from dual;

--s= '2025.03.20 19:21:55'

SELECT
    TO_DATE('2025.03.20 19:21:55', 'YYYY.MM.DD HH24:MI:SS')
FROM
    dual;
    

--TO_NUMBER
--s = '20032025'

select TO_NUMBER('20032025') from dual;

--s ='1200.98'
--f = '9999.99'

select TO_NUMBER('1200.98',  '9999.99')
 from dual;