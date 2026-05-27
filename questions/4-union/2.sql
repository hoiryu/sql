-- 문제2: 특별 이벤트 대상자 목록 만들기 (중복 포함)
-- 마케팅팀에서 두 그룹의 고객에게 이벤트를 진행하려고 한다.
-- 1. '전자기기' 카테고리 상품을 한 번이라도 구매한 고객
-- 2. 한 번의 주문으로 상품을 2개 이상 구매한 고객
-- 두 그룹에 모두 해당하는 고객도 있을 수 있다. 성능을 고려하여,
-- 두 그룹의 목록을 **중복 제거 없이** 모두 합쳐서 조회해라.
-- 컬럼 별칭은  `고객명`,  `이메일`로 지정한다.
-- 
-- Result
-- 고객명 이메일
-- 선 sean@example.com
-- 마리 퀴리 marie@example.com
-- 네이트 nate@example.com
-- 이순신 sunsin@example.com
-- 선 sean@example.com
-- 네이트 nate@example.com

-- 전자기기 구매 고객
SELECT DISTINCT u.name AS 고객명, u.email AS 이메일
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
INNER JOIN products p ON o.product_id = p.product_id
WHERE p.category = '전자기기'
UNION ALL
-- 한 번에 2개 이상 구매한 고객
SELECT DISTINCT u.name AS 고객명, u.email AS 이메일
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
WHERE o.quantity > 1;