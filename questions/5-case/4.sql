-- 문제4: 사용자별 카테고리 주문 건수 피벗 테이블 만들기
-- 각 사용자( `users`)가 카테고리별로 몇 건의 주문을 했는지 피벗 테이블 형태로 조회해라.
-- 사용자 이름, 총 주문 건수, '전자기기' 주문 건수, '도서'
-- 주문 건수를 각각 `user_name`, `total_orders`, `electronics_orders`, 
-- `book_orders`, `fashion_orders` 컬럼으로 출력해야 한다. 한 번도 주문하지 않은 고객도 결과에 포함해야 한다.
-- 
-- Result
-- user_name total_orders electronics_orders book_orders fashion_orders
-- 션 2 1 1 0
-- 네이트 2 2 0 0
-- 세종대왕 1 0 1 0
-- 이순신 1 1 0 0
-- 마리 퀴리 1 1 0 0
-- 레오나르도 다빈치 0 0 0 0

SELECT
    u.name AS user_name,
    COUNT(o.order_id) AS total_orders,
    SUM(CASE WHEN p.category = '전자기기' THEN 1 ELSE 0 END) AS 
electronics_orders,
    SUM(CASE WHEN p.category = '도서' THEN 1 ELSE 0 END) AS book_orders,
    SUM(CASE WHEN p.category = '패션' THEN 1 ELSE 0 END) AS fashion_orders
FROM
    users u
LEFT JOIN
    orders o ON u.user_id = o.user_id
LEFT JOIN
    products p ON o.product_id = p.product_id
GROUP BY
    u.name;