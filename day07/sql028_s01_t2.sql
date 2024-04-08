-- 트랜잭션 2

BEGIN TRANSACTION;
USE madang;


SELECT * 
FROM   Book
WHERE  bookid=1;


UPDATE Book 
SET     price=price+100
WHERE  bookid=1;


/* Commit 과 동시에 결과 나타남 */

SELECT * 
FROM   Book
WHERE  bookid=1;



COMMIT;
ROLLBACK;