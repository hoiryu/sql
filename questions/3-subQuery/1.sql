-- 문제1: 가장 비싼 상품 조회하기
-- `products` 테이블에서 가격이 가장 비싼 상품의  `product_id`,  `name`,  `price`를 조회해라.
-- `WHERE` 절에 스칼라 서브쿼리를 사용하여 문제를 해결해야 한다.
-- 
-- Result
-- 상품ID 상품명 가격
-- 3 4K UHD 모니터 350000

SELECT
    product_id AS 상품ID,
    name AS 상품명,
    price AS 가격
FROM
    products
WHERE
    price = (SELECT MAX(price) FROM products);