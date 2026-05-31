-- 문제4: 기존 뷰에 정보 추가하여 수정하기
-- 문제 3에서 만들었던 `v_electronics_sales_status` 뷰가 매우 유용하다는 피드백을 받았다.
-- 전략기획팀에서 총매출액뿐만 아니라, 평균 주문액(`average_order_value`)도
-- 함께 보고 싶다는 추가 요청이 왔다.
-- 기존 뷰를 삭제하지 말고, `ALTER VIEW`를 사용하여 `v_electronics_sales_status` 뷰의
-- 정의를 수정해라. 총주문 건수, 총매출액, 그리고 평균 주문액을 보여주도록 변경해야 한다.
-- 
-- Result
-- category total_orders total_sales average_order_value
-- 전자기기 5 770000 154000.0000

-- 뷰 수정
ALTER VIEW v_electronics_sales_status AS
SELECT
    p.category,
    COUNT(o.order_id) AS total_orders,
    SUM(p.price * o.quantity) AS total_sales,
    AVG(p.price * o.quantity) AS average_order_value
FROM
    orders o
JOIN
    products p ON o.product_id = p.product_id
WHERE
    p.category = '전자기기'
GROUP BY
    p.category;
-- 수정된 뷰 조회
SELECT * FROM v_electronics_sales_status;