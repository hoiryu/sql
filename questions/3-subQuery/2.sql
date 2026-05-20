-- 문제2: 동일 상품 주문 정보 조회하기
-- `order_id`가 1인 주문과 동일한 상품을
-- 주문한 다른 모든 주문의  `order_id`,  `user_id`,  `order_date`를 조회해라.
-- 스칼라 서브쿼리를 활용해야 한다.
-- 
-- Result
-- 주문ID 고객ID 주문일시
-- 6 5 2025-06-16 18:00:00
-- 7 2 2025-06-17 12:00:00

SELECT
    order_id AS 주문ID,
    user_id AS 고객ID,
    order_date AS 주문일시
FROM
    orders
WHERE
    product_id = (
        SELECT product_id
        FROM orders
        WHERE order_id = 1
    )
AND order_id != 1;