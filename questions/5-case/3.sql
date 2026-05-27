-- 문제3: 재고 수준별 상품 수 집계하기
-- `products` 테이블의 상품들을 재고 수량( `stock_quantity`)에 따라 그룹화하여
-- 각 그룹에 속한 상품의 수를 세어 보아라.
-- 재고가 50개 이상이면 '재고 충분'
-- 20개 이상 50개 미만이면 '재고 보통'
-- 20개 미만이면 '재고 부족'
-- `stock_level`과  `product_count` 라는 컬럼명으로 결과를 출력해야 한다.
-- 
-- Result
-- stock_level product_count
-- 재고 충분 2
-- 재고 보통 3
-- 재고 부족 1

SELECT
    CASE
        WHEN stock_quantity >= 50 THEN '재고 충분'
        WHEN stock_quantity >= 20 THEN '재고 보통'
        ELSE '재고 부족'
    END AS stock_level,
    COUNT(*) AS product_count
FROM
    products
GROUP BY
    stock_level;