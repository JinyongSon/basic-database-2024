-- 1. 박지성이 구매한 도서의 출판사 수
-- 서브쿼리로
SELECT DISTINCT COUNT(publisher) AS '박지성 구매 출판사수'
  FROM Book
 WHERE bookid IN(SELECT bookid
                    FROM Orders
                    WHERE custid = (SELECT custid
                                    FROM Customer
                                    WHERE [name] = '박지성'));

-- 똑같은 문제 조인으로
SELECT DISTINCT COUNT(b.publisher) AS '구매책 출판사수'
  FROM Book AS b, Orders AS o, Customer AS c
 WHERE b.bookid = o.bookid
   AND o.custid = c.custid
   AND c.name = '박지성';

-- 2. 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이



-- 3. 박지성이 구매하지 않은 도서의 이름