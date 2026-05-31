-- 문제3: '전자기기' 카테고리 매출 분석 뷰 생성하기
-- 전략기획팀은 '전자기기' 카테고리의 상품들에 대한 주문 건수와 총매출액을 집중적으로 분석하고자 한다.
-- `products` 테이블과 `orders` 테이블을  `JOIN`하여, '전자기기' 카테고리에 속한 상품들의 총주문 건수
-- (`total_orders`)와 총매출액(`total_sales`)을 계산하는
-- `v_electronics_sales_status` 뷰를 생성해라.
-- 
-- Result
-- category total_orders total_sales
-- 전자기기 5 770000

-- 기존에 뷰가 있다면 삭제
DROP VIEW IF EXISTS v_electronics_sales_status;
-- 뷰 생성
CREATE VIEW v_electronics_sales_status AS
SELECT
    p.category,
    COUNT(o.order_id) AS total_orders,
    SUM(p.price * o.quantity) AS total_sales
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
WHERE
    p.category = '전자기기'
GROUP BY
    p.category;
-- 생성된 뷰 조회
SELECT * FROM v_electronics_sales_status;