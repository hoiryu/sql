-- 문제5: 특정 상사의 부하 직원 찾기
-- `employees` 테이블을 셀프 조인(SELF JOIN)하여 '최과장'의
-- 직속 부하 직원들의 이름과 직원 ID를 모두 조회하는 SQL 쿼리를 작성해라.
-- 
-- Result
-- employee_id name manager_id manager_name
-- 5 정대리 4 최과장
-- 6 홍사원 4 최과장

SELECT
    e2.employee_id,
    e2.name,
    e2.manager_id,
    e1.name AS manager_name
FROM
    employees e1
JOIN
    employees e2 ON e1.employee_id = e2.manager_id
WHERE
    e1.name = '최과장'