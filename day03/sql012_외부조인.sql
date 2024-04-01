-- Customer를 기준으로 Orders 테이블과 외부조인하기
SELECT c.custid
     , c.[name]
     , c.[address]
     , c.phone
     , o.orderid
     , o.custid -- OUTER JOIN에서는 이 외래키는 필요X
     , o.bookid
     , o.saleprice
     , o.orderdate
  FROM Customer AS c LEFT OUTER JOIN Orders AS o -- LEFT, RIGHT, FULL 등으로 변경하면서 실행 
    ON c.custid = o.custid;