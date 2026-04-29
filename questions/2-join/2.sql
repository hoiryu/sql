-- 문제2: 고객별 주문 횟수 구하기 (주문 없는 고객 포함)
-- 모든 고객의 이름과 각 고객이 주문한 총 횟수를 조회하는 SQL을 작성해라. 주문을 한 번도 하지 않은 고객은 주문 횟
-- 수가 0으로 표시되어야 한다. 결과는 고객 이름으로 오름차순 정렬해라.
-- 
-- Result
-- name order_count
-- 네이트 2
-- 레오나르도 다빈치 0
-- 마리 퀴리 1
-- 세종대왕 1
-- 션 2
-- 이순신 1

SELECT
    u.name,
    COUNT(o.order_id) AS order_count
FROM
    users u
LEFT JOIN
    orders o ON u.user_id = o.user_id
GROUP BY
    u.user_id, u.name
ORDER BY
    u.name;
