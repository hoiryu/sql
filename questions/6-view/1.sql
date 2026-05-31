-- 문제1: 고객의 기본 정보만 보여주는 뷰 생성하기
-- `users` 테이블에는 고객의 주소, 생년월일과 같은 민감한 정보가 포함되어 있다.
-- 마케팅팀에서는 고객에게 이메일을 보내기 위해 이름과 이메일 주소만 필요하다.
-- 보안을 위해 고객의 `user_id`, `name`, `email` 컬럼만을
-- 포함하는 `v_customer_email_list`라는 이름의 뷰(View)를 생성해라.
-- 
-- Result
-- user_id 고객명 이메일
-- 1 션 sean@example.com
-- 2 네이트 nate@example.com
-- 3 세종대왕 sejong@example.com
-- 4 이순신 sunsin@example.com
-- 5 마리 퀴리 marie@example.com
-- 6 레오나르도 다빈치 vinci@example.com

-- 기존에 뷰가 있다면 삭제
DROP VIEW IF EXISTS v_customer_email_list;
-- 뷰 생성
CREATE VIEW v_customer_email_list AS
SELECT
    user_id,
    name AS 고객명,
    email AS 이메일
FROM
    users;
-- 생성된 뷰 조회
SELECT * FROM v_customer_email_list;