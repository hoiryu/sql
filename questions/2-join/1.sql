-- 문제1: 특정 카테고리의 미판매 상품 찾기
-- `products` 테이블과  `orders` 테이블을  `LEFT JOIN`하여, '전자기기' 카테고리에 속하지만 단 한 번도 판매되지 않
-- 은 상품의 이름과 가격을 조회하는 SQL을 작성해라.
-- 
-- Result
-- name price
-- 스마트 워치 280000

SELECT
	p.name AS product_name,
	p.price
FROM
	products p
LEFT JOIN
	orders o ON p.product_id = o.product_id
WHERE
	o.product_id IS NULL
AND
	p.category = '전자기기'