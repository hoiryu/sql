-- 문제1: 상품 카테고리 영문으로 표시하기
-- `products` 테이블에서 상품의  `category` 컬럼 값을 영문으로 변경하여 조회해라.
-- '전자기기'는 'Electronics', '도서'는 'Books',
-- '패션'은 'Fashion'으로 표시하고, `category_english` 라는 별칭을 사용해라.
-- 상품 이름, 원래 카테고리, 그리고 영문 카테고리를 함께 출력해야 한다.
-- 
-- Result
-- name category category\_english
-- 프리미엄 게이밍 마우스 전자기기 Electronics
-- 기계식 키보드 전자기기 Electronics
-- 4K UHD 모니터 전자기기 Electronics
-- 관계형 데이터베이스 입문 도서 Books
-- 고급 가죽 지갑 패션 Fashion
-- 스마트 워치 전자기기 Electronics

SELECT
    name,
    category,
    CASE category
        WHEN '전자기기' THEN 'Electronics'
        WHEN '도서' THEN 'Books'
        WHEN '패션' THEN 'Fashion'
        ELSE 'Etc'
    END AS category_english
FROM
    products;