-- 문제4: 서울 지역 고객의 총 주문 금액 계산하기
-- `JOIN`과 집계 함수를 함께 사용하는 종합 문제다.
-- `users`,  `orders`,  `products` 테이블을 조인하여 '서울'에 거주하는
-- 고객별로 총 주문 금액( `total_spent`)을 계산하는 쿼리를 작성해라.
-- 총 주문 금액은 각 주문의  `가격(price) * 수량(quantity)`의 합계이다.
-- 결과는 총 주문 금액이 높은 순으로 정렬해라.
-- 
-- Result
-- customer_name total_spent
-- 션 131000
-- 마리 퀴리 75000
-- 세종대왕 28000

SELECT
    u.name AS customer_name,
    SUM(p.price * o.quantity) AS total_spent
FROM
    users u
JOIN
    orders o ON u.user_id = o.user_id
JOIN
    products p ON o.product_id = p.product_id
WHERE
    u.address LIKE '서울%'
GROUP BY
    u.name
ORDER BY
    total_spent DESC;