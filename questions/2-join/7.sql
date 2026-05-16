-- 문제3: 특정 고객의 주문 내역 상세 조회하기
-- `users`,  `orders`,  `products` 세 개의 테이블을 조인하여 '네이트' 고객이 주문한 모든 상품의 이름
-- ( `product_name`), 주문 날짜( `order_date`), 주문 수량( `quantity`)을
-- 조회하는 SQL 쿼리를 작성해라. 결과는 주문 날짜 최신순으로 정렬해라.
-- 
-- Result
-- customer_name product_name order_date quantity
-- 네이트 프리미엄 게이밍 마우스 2025-06-17 12:00:00 2
-- 네이트 기계식 키보드 2025-06-11 14:20:00 1

SELECT
    u.name AS customer_name,
    p.name AS product_name,
    o.order_date,
    o.quantity
FROM
    users u
JOIN
    orders o ON u.user_id = o.user_id
JOIN
    products p ON o.product_id = p.product_id
WHERE
    u.name = '네이트'
ORDER BY
    o.order_date DESC;