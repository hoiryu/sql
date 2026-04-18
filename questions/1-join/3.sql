-- 문제3: 고객별 총 구매액 계산
-- `INNER JOIN`과 집계 함수를 함께 사용해서,
-- 각 고객이 지금까지 주문한 총 구매액을 계산해라. 결과는
-- `고객 이름 (user_name)`과
-- `총 구매액(total_purchase_amount)`으로 구성되어야 하며,
-- 총 구매액이 높은 순서대로 정렬해야 한다. (총 구매액 = 주문수량 * 상품가격)
-- Result
-- user_name total_purchase_amount
-- 이순신 350000
-- 네이트 270000
-- 션 131000
-- 마리 퀴리 75000
-- 세종대왕 28000

SELECT
	u.name AS user_name,
	SUM(p.price * o.quantity) AS total_purchase_amount
FROM
	users u
JOIN
	orders o ON u.user_id = o.user_id
JOIN
	products p ON p.product_id = o.product_id
GROUP BY
	u.name
ORDER BY
	total_purchase_amount DESC