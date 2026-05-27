-- 문제2: 주문 수량에 따른 분류 및 정렬
-- `orders` 테이블의 주문들을 수량( `quantity`)에 따라 분류하고 싶다.
-- 수량이 2개 이상이면 '다량 주문', 1개이면 '단일 주문'으로 표시하는 `order_type` 컬럼을 만들어라.
-- 주문 ID, 수량, 그리고 이 새로운  `order_type` 컬럼을 조회하되,
-- '다량 주문'이 '단일 주문'보다 먼저 나오도록 정렬해라.
-- 
-- Result
-- order\_id quantity order\_type
-- 2 2 다량 주문
-- 7 2 다량 주문
-- 1 1 단일 주문
-- 3 1 단일 주문
-- 4 1 단일 주문
-- 5 1 단일 주문
-- 6 1 단일 주문

SELECT
    order_id,
    quantity,
    CASE
        WHEN quantity >= 2 THEN '다량 주문'
        ELSE '단일 주문'
    END AS order_type
FROM
    orders
ORDER BY
    CASE
        WHEN quantity >= 2 THEN 1
        ELSE 2
    END ASC;