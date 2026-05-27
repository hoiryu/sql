-- 문제4: 회사 전체 인명록 만들기
-- 회사의 모든 관련 인물( `users`의 고객과  `employees`의 직원)을
-- 통합한 인명록을 만들어라.
-- 결과에는  `이름`,  `역할`('고객' 또는 '직원'),  `이메일` 컬럼이 포함되어야 한다.
-- 고객의 연락처는  `email` 컬럼을 사용한다.
-- 직원의 연락처는  `name` 컬럼 뒤에  `'@my-shop.com'`을 붙여서 생성한다.
-- 최종 결과는 이름(가나다/알파벳 순)으로 오름차순 정렬해라.
-- 
-- Result
-- 이름 역할 이메일
-- 김회장 직원 김회장@my-shop.com
-- 네이트 고객 nate@example.com
-- 레오나르도 다빈치 고객 vinci@example.com
-- 마리 퀴리 고객 marie@example.com
-- 박사장 직원 박사장@my-shop.com
-- 세종대왕 고객 sejong@example.com
-- 션 고객 sean@example.com
-- 이부장 직원 이부장@my-shop.com
-- 이순신 고객 sunsin@example.com
-- 정대리 직원 정대리@my-shop.com
-- 최과장 직원 최과장@my-shop.com
-- 홍사원 직원 홍사원@my-shop.com

SELECT
    name AS 이름,
    '고객' AS 역할,
    email AS 이메일
FROM users
UNION ALL
SELECT
    name AS 이름,
    '직원' AS 역할,
    CONCAT(name, '@my-shop.com') AS 이메일
FROM employees
ORDER BY 이름;