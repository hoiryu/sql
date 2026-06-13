-- 문제: 인덱스들을 만들어서 다음 쿼리 성능을 개선해라.
-- 최근 쇼핑몰의  `items` 테이블에 데이터가 많아지면서, 사용자들이 특정 조건으로 상품을 조회할 때 시스템이 점점 느
-- 려진다는 불만이 접수되었다. 원인 파악 결과, 자주 사용되는 조회 쿼리에 인덱스가 걸려있지 않아 전체 데이터를 스캔
-- (Full Table Scan)하고 있었다.
-- 다음은 느리다고 보고된 주요 쿼리이다.
-- 인덱스를 만들어서 이 쿼리들이 풀 테이블 스캔이 걸리지 않도록 해라.
-- 필요하다면 여러 인덱스를 만들어도 된다.

SELECT * FROM items
WHERE category = '전자기기' AND is_active = TRUE;

SELECT * FROM items
WHERE category = '전자기기' AND is_active = TRUE
ORDER BY stock_quantity DESC;

SELECT * FROM items
WHERE stock_quantity < 90 AND category = '전자기기' AND is_active = TRUE;

SELECT * FROM items
WHERE stock_quantity < 90 AND category = '전자기기' AND is_active = TRUE
ORDER BY stock_quantity DESC;

CREATE INDEX idx_items_category_actvie_stock ON items (category, is_active, 
stock_quantity DESC);