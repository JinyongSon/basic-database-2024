-- HR 데이터베이스 연습

-- 1. 사원정보 테이블 사번, 이름, 급여, 입사일, 상사의 사원번호를 출력하시오.(107개행)
SELECT EMPLOYEE_ID
     , FIRST_NAME + LAST_NAME AS [NAME]
     , SALARY
     , HIRE_DATE
     , MANAGER_ID
  FROM employees;

/* 1. 사원정보 사원의 성과 이름을 name으로, 업무는 job, 급여는 salary,
      연봉에 $100 보너스를 추가 계산한 연봉은 Increased Ann Salary,
      월급에 $100 추가해서 Increased Salary의 별칭으로 출력하시오. */
SELECT FIRST_NAME + ' ' + LAST_NAME AS 'name'
     , JOB_ID AS 'job'
     , SALARY
     , (SALARY * 12) + 100 AS 'Increased Ann_Salary'
     , (SALARY + 100) * 12 AS 'Increased Salary'
  FROM employees;

/* 2. 사원정보 모든 사원의 Last name에 Last name: 1 Year Salary = $연봉
      컬럼에 1 Year Salary 별칭을 붙이시오 */
SELECT LAST_NAME + ': 1 Year Salary = $' + CONVERT(VARCHAR, SALARY * 12) AS '1 Year Salary'
  FROM employees;