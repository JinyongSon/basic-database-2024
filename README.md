# basic-database-2024
부경대학교 2024 IoT 개발자 과정 기초 프로그래밍 언어－MySQL


## 1일차
-  MS SQL Server 설치 : https://www.microsoft.com/ko-kr/sql-server/sql-server-downloads = 최신버전
    - DBMS 엔진 
        - iso 다운로드 후 설치 추천
        - SQL Server에 대한 Azure 확장 비활성화

        ![기능선택](https://raw.githubusercontent.com/JinyongSon/basic-database-2024/main/images/db001.png)

        - 데이터베이스 엔진 구성부터 중요
            - Windows인증모드로 하면 외부에서 접근불가
            - 혼합모드(sa)에 대한 암호를 지정 / mssql_p@ss(8자이상 / 대소문자 구분/ )
            - 데이터루트 디렉토리는 변경
    - [개발툴 설치](https://learn.microsoft.com/ko-kr/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
            - SSMS(sql Server Management Studio) DB에 접근, 여러개발 작업할 툴

- 데이터베이스 개념
    - 데이터를 보관, 관리, 서비스하는 시스템
    - Data, Information, Knowlege 개념

    - DBMS > Database > Data(model)

- DB언어
    - SQL(Structured Query Language) : 구조화된 질의 언어
        - 데이터 정의어 DDL(Data Definition Lang) - 데이터베이스, 테이블, 인덱스 생성, CREATE, ALTER, DROP
        - 데이터 조작어 DML(Data Manipulation Lang) - 검색(SELECT), 삽입(INSERT), 수정(UPDATE), 삭제(DELETE) 등 기능(!)
        - 데이터 제어어 DCL(Data Control Lang) - 보안, 권한 부여/제거 기능. GRANT, REVOKE
        - TCL(Transaction Control Lang) - 트랜스액션(트랜잭션) 제어하는 기능 COMMIT, ROLLABCK / 원래는 DCL의 일부, 기능이 특이해서 TCL로 분리

- SQL 기본 학습
    - SSMS 실행
    ![SSMS로그인](https://raw.githubusercontent.com/JinyongSon/basic-database-2024/main/images/db002.png)
- DML 학습
    - SQL 명령어 키워드 : SELECT, INSERT, UPDATE, DELETE
    - IT개발 표현언어 : Request, Create, Update, Delete(CRUD로 부름. CRU개발 뜻은 INSERT, UPDATE, SELECT를 할 수 있는 기능을 개발하라)
    - SELECT
        ```sql
        SELECT [ALL | DISTINCT] 속성이름(들)
          FROM 테이블이름(들)
        [WHERE 검색조건(들)]
        [GROUP BY 속성이름(들)]
        [HAVING 검색조건(들)]
        [ORDER BY 속성이름(들) [ASC|DESC]]
        ```
    - SELECT 문 학습
        - 기본, 조건검색 학습 중    
## 2일차
- Database 학습
    - DB 개발시 사용할 수 있는 툴
        - SSMS(기본)
        - Visual Studio - 아무런 설치 없이 개발 가능
        - Visual Studio Code - SQL Server(mssql) 플러그인 설치하고 개발
    - ServerName(HostName) - 본인 컴퓨터이름 | 본인 네트워크 IP주소 | 127.0.0.1(LoopBack IP)|localhost(LoopBack URL)
    - 관계 데이터 모델
        - 릴레이션 - 행과 열로 구성된 테이블
            - 행(튜플), 열(속성), 스키마, 인스턴스 용어
        - 테이블(실제 DB)
            - 행(레코드), 열(컬럼, 필드), 내포(필드명), 외연(데이터)
        - 차수(degree) - 속성의 개수
        - 카디날리티(cardinality) - 튜플의 수

    - 릴레이션 특징
        1. 속성은 단일값을 가짐(책이름이 여러개 들어가면 안됨)
        2. 속성은 다른 이름으로 구성(책이름이라는 속성이 두번있으면 안됨)
        3. 속성의 값은 정의된 도메인값만 가짐(대학교 학년에 5학년이 있으면 안됨)
        4. 속성의 순서는 상관없음
        5. 릴레이션내 중복된 튜플 허용안함(같은 책을 정보를 두번 넣을 수 없음)
        6. 튜플 순서는 상관없음(1,3,5,2,7,6,....)

    - 관계 데이터 모델은
        - 릴레이션(Relation)
        - 제약조건(Contraints)
        - 관계대수(Relational algebra)

- DML 학습
    - SELECT문
        - 복합조건
