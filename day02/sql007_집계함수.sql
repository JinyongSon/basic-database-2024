-- 집계함수, GROUP BY
-- 고객이 주문한 도서의 총 판매액
SELECT SUM(saleprice) AS [총 매출]
  FROM Orders;

-- 김연아 고객이 주문한 도서의 총 판매액
SELECT *
  FROM Customer;
-- 김연아는 custid가 2번

SELECT sum(saleprice) AS '김연아고객 총판매액'
  FROM Orders
 WHERE custid = 2;

-- COUNT()는 *을 사용할 수 있음.
-- 나머지 집계함수는 열(컬럼) 하나만 지정해서 사용할 것
SELECT COUNT(saleprice) AS [주문개수]
     , SUM(saleprice) AS [총 판매액]
	 , AVG(saleprice) AS [판매액 평균]
	 , MIN(saleprice) AS [주문도서 최소금액]
	 , MAX(saleprice) AS [주문도서 최대금액]
  FROM Orders;

-- 출판사 중복제거 개수
SELECT COUNT(DISTINCT publisher)
  FROM Book;

-- GROUP BY - 필요조건으로 그룹핑을 해서 결과(통계)를 내기위함
-- GROUP BY절에 들어있는 컬럼 외에는 SELECT문에 절대(!) 쓸 수 없음
-- 단, saleprice는 집계함수 안에 들어있으므로 예외
SELECT custid, SUM(saleprice) AS '판매액'
  FROM Orders
  GROUP BY custid;

-- HAVING - WHERE절은 일반 필터링조건
-- HAVING은 통계, 집합함수의 필터링조건
-- 가격이 8,000원 이상인 도서를 구매한 고객에 고객별 주문도서 총수량
-- 단, 2권 이상 구매한 경우만...
SELECT custid, COUNT(*) AS '구매수'
  FROM Orders
 WHERE saleprice >= 8000
 GROUP BY custid
HAVING COUNT(*) >= 2; -- 별명 [구매수] 사용할 수 없음