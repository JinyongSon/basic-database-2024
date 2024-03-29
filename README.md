# basic-database-2024
IoT 개발자과정 SQLServer 학습 리포지토리

## 1일차
- MS SQL Server 설치 : https://www.microsoft.com/ko-kr/sql-server/sql-server-downloads 최신버전
    - DBMS 엔진 - 개발자 버전
        - iso 다운로드 후 설치 추천
        - SQL Server에 대한 Azure 확장 비활성화 후 진행
        - 데이터베이스 엔진 구성부터 중요
            - Windows인증모드로 하면 외부에서 접근불가
            - 혼합모드(sa)에 대한 암호를 지정 / mssql_p@ss(8자이상 / 대소문자구분 / 특수문자1자이상 포함)
            - 데이터루트 디렉토리는 변경
    - 개발툴 설치
        - SSMS(Sql Server Management Studio)

- 데이터베이스 개념
    - 데이터를 보관, 관리, 서비스하는 시스템
    - Data, Information, Knowlege 개념
    - DBMS > Database > Data(Model)

- DB언어
    - SQL(Structured Query Language) : 구조화된 질의 언어
        - DDL(Data Definition Language) - 데이터베이스, 테이블, 인덱스 생성
        - DML(Data Manipulation Language) - 검색(SELECT), 삽입(INSERT), 수정(UPDATE), 삭제(DELETE) 등 기능(중요!)
        - DCL(Data Control Language) - 권한, 트랜스액션 부여/제거 기능

- SQL 기본 학습
    - SSMS 실행 

- DML 학습
    - SQL 명령어 키워드 : SELECT, INSERT, UPDATE, DELETE
    - IT개발 표현언어 : Request, Create, Updatd, Delete(CRUD로 부름. CRU개발 뜻은 INSERT, UPDATE, SELECT 를 할 수있는 기능을 개발하라)
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
        - VISUAL STUDIO : 아무런 설치 없이 개발 가능
        - VISUAL STUDIO CODE : SQL SERVER(MSSQL) 플로그인 설치하고 개발
    - VS CODE 에서 DB개발하기
    - ServerName(HostName) - 내 컴퓨터의 이름|내 네트워크 주소|127.0.0.1(LoopBack IP)|localhost(LoopBack URL)
    - 관계 데이터 모델
        - 릴레이션 : 행과 열로 구성된 테이블(관계 데이터모델 에서만)
            - 행, 튜플 ,열, 속성, 스키마, 인스턴트 용어
        - 매핑되는 이름 테이블(실제 DB)
            - 행 레코드 열 컬럼 컬럼이름 데이터
        - 차수(Degree) - 속성의 개수
        - 카디날리티(Cardinality) - 튜플의 수
    - 릴레이션 특징 
        a. 속성은 단일값을 가짐(책이름이 여러개 들어가면 안됨)
        b. 속성은 다른 이름으로 구성(책이름이라는 속성이 두번있으면 안됨)
        c. 속성의 값은 정의된 도메인값만 가짐(대학교 학년에 5학년이 있으면 안됨)
        d. 속성의 순서는 상관없음
        e. 린레이션내 중복된 튜플 허용 안됨(같은 책 정보를 두번 넣을 수 없음)
        f. 튜플 순서는 상관없음(1,3,5,2,6...)
    - 관계 데이터 모델
        - 릴레이션
        - 제약조건
        - 관계대수
        - DML 학습

- DML 학습