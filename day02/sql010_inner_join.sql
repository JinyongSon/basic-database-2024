-- 두개 이상의 테이블 SQL 쿼리 작성
-- Customer, Orders 테이블을 동시에 조회
SELECT *
  FROM Customer, Orders;

-- Customer, Orders 테이블을 동시에 조회(둘의 custid가 일치하는 조건에서)
-- RDB(관계형 데이터베이스)에서 가장가장가장 중요한 쿼리문 1 - Join, 조인, 쪼인!
SELECT *
  FROM Customer, Orders
 WHERE Customer.custid = Orders.custid
 ORDER BY Customer.custid ASC;

-- 주문한 책의 고객이름과 책판매액 조회
SELECT Customer.[name], Orders.[saleprice]
  FROM Customer, Orders
 WHERE Customer.custid = Orders.custid;

-- 고객별로 주문한 모든 도서의 총판매액을 구하고, 고객별로 정렬
SELECT Customer.[name]
	 , SUM(Orders.[saleprice]) AS [판매액]
  FROM Customer, Orders
 WHERE Customer.custid = Orders.custid
 GROUP BY Customer.[name]
 ORDER BY Customer.[name];

-- 각 테이블의 별명으로 줄여서 쓰는게 일반적
-- JOIN, 내부 조인, Inner Join
SELECT c.custid
	 --, o.custid
	 , c.[name]
	 , c.[address]
	 , c.phone
	 , o.orderid
	 , o.bookid
	 , o.saleprice
	 , o.orderdate
  FROM Customer AS c, Orders AS o
 WHERE c.custid = o.custid
 ORDER BY c.custid ASC;

-- 세개 테이블 조인
SELECT *	-- 컬럼별로 나눠적기 생략
  FROM Customer AS c, Orders AS o, Book AS b
 WHERE c.custid = o.custid
   AND o.bookid = b.bookid

-- 실제 표준SQL Inner Join - 표준SQL은 더 복잡함.
SELECT *
  FROM Customer AS c
 INNER JOIN Orders AS o
    on c.custid = o.custid
 INNER JOIN Book AS b
    on o.bookid = b.bookid;

-- 책 가격이 20,000원 이상인 도서를 주문한 고객의 이름과 도서명 조회
SELECT c.[name]
     , b.bookname
	 , o.saleprice
	 , b.price
  FROM Customer AS c, Orders AS o, Book AS b
 WHERE c.custid = o.custid
   AND o.bookid = b.bookid -- 여기까진 Join을 위한 조건
   AND b.price >= 20000 -- 그외 필터링을 위한 조건