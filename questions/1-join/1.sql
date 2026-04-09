-- 문제1: 주문별 상품 정보 조회
-- INNER JOIN`을 사용하여  `orders` 테이블과  `products` 테이블을 연결해라.
-- 모든 주문에 대해  `주문 ID`,  `상품명`, 
-- `주문 수량`이 포함된 목록을 조회하는 SQL을 작성하고  `order_id` 오름차순 정렬해라.
-- 가독성을 위해 **테이블 별칭**을 사용해야 한다.
--
-- Result
-- order_id name quantity
-- 1 프리미엄 게이밍 마우스 1
-- 2 관계형 데이터베이스 입문 2
-- 3 기계식 키보드 1
-- 4 관계형 데이터베이스 입문 1
-- 5 4K UHD 모니터 1
-- 6 프리미엄 게이밍 마우스 1
-- 7 프리미엄 게이밍 마우스	2

SELECT 
	o.order_id,
	p.name AS product_name,
	o.quantity
FROM orders o
JOIN products p
ON o.product_id = p.product_id