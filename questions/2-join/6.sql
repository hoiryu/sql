-- 문제2: 모든 상품 옵션 조합에 재질 추가하기
-- `sizes`와  `colors` 테이블을  `CROSS JOIN`하여 모든 색상과 사이즈 조합을 만들었던 것을 응용해 보자.
-- '면(Cotton)'과 '실크(Silk)'라는 두 가지 재질 옵션을 가진  `materials` 테이블을 새로 만들고, 기존의  `sizes`, 
-- `colors` 테이블과 모두  `CROSS JOIN`하여 '상품명-색상-사이즈-재질' 형태의 모든 조합을 조회하는 쿼리를 작성해
-- 라.
-- 1. `materials` 테이블을 생성하고 데이터를 삽입한다.
-- 2. `sizes`,  `colors`,  `materials` 세 테이블을  `CROSS JOIN` 한다.
-- 3. `CONCAT` 함수를 사용하여  `상품명-색상-사이즈-재질` 형식의  `product_full_name`을 생성한다.
--
-- Result
-- product_full_name size color material
-- 기본티셔츠-Black-L-Cotton L Black Cotton
-- 기본티셔츠-Black-L-Silk L Black Silk
-- 기본티셔츠-Blue-L-Cotton L Blue Cotton
-- 기본티셔츠-Blue-L-Silk L Blue Silk
-- ... ... ... ...
-- 기본티셔츠-Black-XL-Cotton XL Black Cotton
-- 기본티셔츠-Black-XL-Silk XL Black Silk
-- 총 24개 행이 출력된다.

-- 실습을 위한 임시 테이블 생성 및 데이터 삽입
-- (테이블이 이미 존재할 경우를 대비하여 DROP 구문 추가)

DROP TABLE IF EXISTS materials;
CREATE TABLE materials (
    material VARCHAR(20) PRIMARY KEY
);

INSERT INTO materials(material) VALUES ('Cotton'), ('Silk');

SELECT
    CONCAT('기본티셔츠-', c.color, '-', s.size, '-', m.material) AS product_full_name,
    s.size,
    c.color,
    m.material
FROM
    sizes s
CROSS JOIN
    colors c
CROSS JOIN
    materials m
ORDER BY
    s.size, c.color, m.material;