-- 트랜잭션 1
BEGIN TRANSACTION;
USE madang;
SELECT * 
FROM   Book
WHERE  bookid=1;
 

UPDATE Book 
SET     price=7100
WHERE  bookid=1;
-- 1. 여기까지 실행

SELECT * 
FROM   Book
WHERE  bookid=1;

 

COMMIT;
ROLLBACK;