# Record 추가
- INSERT INTO 테이블이름(필드명1, 필드명2, ...) values(값1, 값2, ...)
- INSERT INTO 테이블이름 values(전체 column(필드, 열)에 넣을 값들)

- 첫 번째 방법은 1:1 매핑
- null값이 있어도 되는 필드/default 값은 생략 가능
- 두 번째 방법은 해당되는 데이터 모두 입력
- 필드명을 나열할 필요는 없지만, 필드의 순서대로 빠짐없이 데이터를 나열해야 함

# UPDATE
- UPDATE 테이블명 SET 변경내용 WHERE 검색조건
- WHERE은 생략 가능, 하지만 이렇게 하면 전체 레코드가 대상
- 검색조건 : 필드명 (비교-관계 연산자) 조건값, 흔히 자바에서 if 안에 사용했던 연산

# alter
- on delete cascade - 삭제되면 연계되서 삭제

# select
- select * from tab; - 단순검색
- select * from tabs; - 상세검색

- select - from - where
- || 이어붙이기 연산
- as로 하면 그 이름으로 대신 불림

- select empno || '-' || ename as emp_info from emp

# desc
- desc 