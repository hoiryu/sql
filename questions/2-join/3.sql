-- 문제3: RIGHT JOIN으로 주문 없는 고객 찾기
-- `RIGHT JOIN`을 사용하여, 가입은 했지만 주문 기록이 없는 고객의 이름과 이메일을 찾는 SQL을 작성해라.
-- 
-- Result
-- name email
-- 레오나르도 다빈치 vinci@example.com

SELECT
    u.name,
    u.email
FROM
    orders o
RIGHT JOIN
    users u ON o.user_id = u.user_id
WHERE
    o.order_id IS NULL;