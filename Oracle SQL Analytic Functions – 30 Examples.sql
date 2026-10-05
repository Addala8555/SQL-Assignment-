-- SELECT
--     employee_id,
--     first_name,
--     salary,
--     ROW_NUMBER() OVER (
--         ORDER BY salary DESC
--     ) AS row_num
-- FROM hr.employees;



-- SELECT
--     employee_id,
--     first_name,
--     salary,
--     ROW_NUMBER() OVER (
--         ORDER BY salary ASC
--     ) AS row_num
-- FROM hr.employees;


-- SELECT
--     employee_id,
--     first_name,
--     department_id,
--     salary,
--     ROW_NUMBER() over (  PARTITION BY DEPARTMENT_ID order by department_id DESC) AS row_num 
-- FROM HR.EMPLOYEES



-- SELECT 
-- employee_id,
-- first_name,
-- HIRE_DATE,
--     ROW_NUMBER() OVER( ORDER by HIRE_DATE ASC) AS JOINING_ORDER
-- FROM HR.EMPLOYEES



-- SELECT *
-- FROM
-- (
--     SELECT
--         EMPLOYEE_ID,
--         FIRST_NAME,
--         DEPARTMENT_ID,
--         HIRE_DATE,
--             ROW_NUMBER() OVER(
--                 PARTITION BY DEPARTMENT_ID ORDER BY HIRE_DATE DESC 
--               ) AS RN
--         FROM HR.EMPLOYEES
-- )
-- WHERE RN = 1;


-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         ROW_NUMBER() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS rn

--     FROM hr.employees
-- )
-- WHERE rn <= 3;



-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     SALARY,
--         RANK() OVER (  ORDER BY SALARY DESC ) AS SALARY_RANK
-- FROM HR.EMPLOYEES



-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     SALARY,
--         RANK() OVER (  ORDER BY SALARY ASC ) AS SALARY_RANK
-- FROM HR.EMPLOYEES



-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     DEPARTMENT_ID,
--     SALARY,
--         RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC ) AS DEPARTMEN_RANL
-- FROM HR.EMPLOYEES



-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     HIRE_DATE,
--         RANK() OVER (ORDER BY HIRE_DATE ASC )AS JOINING_DATE
-- FROM HR.EMPLOYEES


-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,
--         RANK() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS salary_rank
--     FROM hr.employees
-- )
-- WHERE salary_rank = 1;



-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         department_id,
--         salary,

--         RANK() OVER (
--             PARTITION BY department_id
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank <= 3;



-- SELECT
--     employee_id,
--     first_name,
--     salary,
--     DENSE_RANK() OVER (ORDER BY salary DESC
--     ) AS salary_rank
-- FROM hr.employees;



-- SELECT
--     employee_id,
--     first_name,
--     salary,
--     DENSE_RANK() OVER (ORDER BY salary ASC
--     ) AS salary_rank
-- FROM hr.employees;


-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     DEPARTMENT_ID,
--     SALARY,
--         DENSE_RANK () OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DEPARTMENT_RANK
--     FROM HR.EMPLOYEES;



-- SELECT *
-- FROM
-- (
-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     SALARY,
--         DENSE_RANK() OVER(ORDER BY SALARY DESC) AS salary_rank
--     FROM HR.employees
-- )
-- WHERE SALARY_RANK = 2;


-- SELECT *
-- FROM
-- (
--     SELECT
--         employee_id,
--         first_name,
--         salary,

--         DENSE_RANK() OVER (
--             ORDER BY salary DESC
--         ) AS salary_rank

--     FROM hr.employees
-- )
-- WHERE salary_rank = 3;



-- SELECT *
-- FROM
-- (
-- SELECT
--     EMPLOYEE_ID,
--     FIRST_NAME,
--     SALARY,
--     DEPARTMENT_ID,
--         DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID  ORDER BY SALARY DESC) AS salary_rank
--     FROM HR.employees
-- )
-- WHERE SALARY_RANK = 2;