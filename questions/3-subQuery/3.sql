-- 문제3: 고객별 총 주문 횟수 조회하기
-- 각 고객( `users`)별로 총 몇 번의 주문을 했는지 '총주문횟수'를 이름과 함께 조회해라. 정렬은  `user_id` 오름차순이다.
-- 한 번도 주문하지 않은 고객도 결과에 포함되어야 한다.  `SELECT` 절에 상관 서브쿼리를 사용하여 해결해야 한다.
-- 
-- Result
-- 고객명 총주문횟수
-- 션 2
-- 네이트 2
-- 세종대왕 1
-- 이순신 1
-- 마리 퀴리 1
-- 레오나르도 다빈치 0


SELECT
    name AS 고객명,
    (
        SELECT COUNT(*)
        FROM orders o
        WHERE o.user_id = u.user_id
    ) AS 총주문횟수
FROM
    users u
ORDER BY
    u.user_id;