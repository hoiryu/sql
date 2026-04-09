-- 문제2: 3개 테이블 조인하기
-- `orders`,  `users`,  `products` 세 개의 테이블을 모두 조인해라.
-- `SHIPPED` (배송) 상태인 주문에 대해  `주문 ID`,
-- `고객 이름`,  `상품명`,  `주문 날짜`를 조회하는 SQL을 작성해라.
--
-- Result
-- order_id user_name product_name order_date
-- 3 네이트 기계식 키보드 2025-06-11 14:20:00
-- 7 네이트 프리미엄 게이밍 마우스 2025-06-17 12:00:00


SELECT
	o.order_id,
	u.name AS user_name,
	p.name AS product_name,
	o.order_date
FROM
	orders o
JOIN
	users u ON o.user_id = u.user_id
JOIN
	products p ON p.product_id = o.product_id
WHERE
	o.status = 'SHIPPED'
ORDER BY
	o.order_date ASC