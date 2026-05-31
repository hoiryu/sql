-- 문제2: 주문 상세 정보를 통합한 뷰 생성하기
-- 운영팀에서는 현재 주문 내역을 확인할 때마다 `orders`, `users`, `products` 테이블을
-- 매번 `JOIN`해야 해서 불편함을 겪고 있다.
-- 주문 ID(`order_id`), 고객 이름(`name`), 상품 이름( `name`), 주문 수량(`quantity`),
-- 주문 상태(`status`)를 한 번에 볼 수 있는 `v_order_summary`라는 이름의 뷰를 생성하여 업무 효율을 높여라.
-- 
-- Result
-- order_id 고객명 상품명 주문수량 주문상태
-- 1 션 프리미엄 게이밍 마우스 1 COMPLETED
-- 2 션 관계형 데이터베이스 입문 2 COMPLETED
-- 3 네이트 기계식 키보드 1 SHIPPED
-- 4 세종대왕 관계형 데이터베이스 입문 1 COMPLETED
-- 5 이순신 4K UHD 모니터 1 PENDING
-- 6 마리 퀴리 프리미엄 게이밍 마우스 1 COMPLETED
-- 7 네이트 프리미엄 게이밍 마우스 2 SHIPPED

-- 기존에 뷰가 있다면 삭제
DROP VIEW IF EXISTS v_order_summary;
-- 뷰 생성
CREATE VIEW v_order_summary AS
SELECT
    o.order_id,
    u.name AS '고객명',
    p.name AS '상품명',
    o.quantity AS '주문수량',
    o.status AS '주문상태'
FROM
    orders o
JOIN
    users u ON o.user_id = u.user_id
JOIN
    products p ON o.product_id = p.product_id;
-- 생성된 뷰 조회
SELECT * FROM v_order_summary;