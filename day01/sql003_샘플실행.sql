-- 책중에서 '축구의 역사'라는 도서의 출판사와 가격을 알고 싶어.
-- dbo는 DataBase Owner(지금은 패스)
-- DML(4가지) 중 SELECT(조회)
SELECT publisher, price
  FROM Book
 WHERE Bookname = '축구의 역사';

 /*
 - SQL에서는 equal연산자에 == 사용안함. 무조건 =
 - SQL에서는 문자열에 " 사용안함. 무조건 '
 - SQL에서는 대소문자 구분없음. 하지만, 키워드는 대문자로 사용할 것
 - SQL에서는 ;이 필수가 아님. 하지만, 중요한 사항에서는 사용할 것
*/ 
