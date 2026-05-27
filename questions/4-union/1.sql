-- 문제1: 전체 고객 목록 조회하기
-- 우리 쇼핑몰의 모든 고객(활동 고객과 탈퇴 고객)의 이름과 이메일을 중복 없이 조회하여
-- 하나의 목록으로 만들어라.
-- 
-- Result
-- 이름 이메일
-- 션 sean@example.com
-- 네이트 nate@example.com
-- 세종대왕 sejong@example.com
-- 이순신 sunsin@example.com
-- 마리 퀴리 marie@example.com
-- 레오나르도 다빈치 vinci@example.com
-- 아이작 뉴턴 newton@example.com

SELECT name AS 이름, email AS 이메일
FROM users
UNION
SELECT name, email
FROM retired_users;