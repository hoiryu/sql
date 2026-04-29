-- 문제4: 고객별 주문 상품 목록 조회하기
-- 모든 고객의 이름과 그 고객이 주문한 상품의 이름을 조회하는 SQL을 작성해라. 한 고객이 여러 상품을 주문했다면 모
-- 든 상품명이 나와야 하며, 주문 기록이 없는 고객의 상품명은  `NULL`로 표시되어야 한다. 결과는 고객 이름
-- ( `user_name`), 상품 이름 순( `product_name`)으로 정렬해라.
-- 
-- Result
-- user_name product_name
-- 네이트 기계식 키보드
-- 네이트 프리미엄 게이밍 마우스
-- 레오나르도 다빈치 NULL
-- 마리 퀴리 프리미엄 게이밍 마우스
-- 세종대왕 관계형 데이터베이스 입문
-- 션 관계형 데이터베이스 입문
-- 션 프리미엄 게이밍 마우스
-- 이순신 4K UHD 모니터

SELECT
    u.name AS user_name,
    p.name AS product_name
FROM
    users u
LEFT JOIN
    orders o ON u.user_id = o.user_id
LEFT JOIN
	products p ON o.product_id = p.product_id
ORDER BY user_name ASC, product_name ASC