-- DB 사용 선언 "use DB이름 ;"형태
-- 실행 = ctrl+enter, 마이너스 두개는 주석
use db_basic; 
create table users_info(
-- 프라이머리키 선언(auto_increment는 자동으로 증가시킬 거라는 뜻)
id int primary key auto_increment, 
username varchar(255),
email varchar(255),
phone varchar(20),
website varchar(255),
regdate datetime
);
create table users_info2(
id int primary key auto_increment, 
username varchar(255),
email varchar(255),
phone varchar(20),
website varchar(255),
regdate datetime
);

 -- 테이블 삭제(drop)
drop table users_info2;

-- DML : data creat
insert into users_info
(id, username, email, phone, website, regdate)
value (1, 'kim', 'kim@cozlab.com', '010-1234-5678', 'cozlab.com', '2020-10-24 00:00:00');

insert into users_info
(id, username, email, phone, website, regdate)
value (2, 'jay', 'jay@cozlab.com', '010-1234-5678', 'cozlab.com', '2020-10-24 00:00:00');

insert into users_info
(id, username, email, phone, website, regdate)
value (3, 'kim', 'kim@cozlab.com', '010-1234-5678', 'cozlab.com', '2020-10-24 00:00:00');

insert into users_info
(id, username, email, phone, website, regdate)
value (4, 'kim', 'kim@cozlab.com', '010-1234-5678', 'cozlab.com', '2020-10-24 00:00:00');

insert into users_info
(id, username, email, phone, website, regdate)
value (5, 'kim', 'kim@cozlab.com', '010-1234-5678', 'cozlab.com', '2020-10-24 00:00:00');

-- DML - Read(데이터 읽기)
-- users_info 테이블의 모든 데이터 읽기
select *
from users_info;

-- 특정 칼럼 데이터 읽기 (이탤릭체는 as가 생략된 형태)
select username, phone from users_info ui 

-- DML - Update(특정 칼럼 데이터 수정)
update users_info ui 
set email = 'joy@google.com',
	phone = '010-3214-9875',
	regdate = '2025-10-22'
where id = 1;

-- DML - Delete(조건에 맞는 데이터 삭제-Record를삭제하는 것)
-- 만약 특정 칼럼의 데이터를 수정한다는 것은 곧 update임
delete from users_info 
where id = 3;

-- DML - Delete(테이블 데이터를 모두 삭제)
delete from users_info ;

-- DDL 테이블 삭제
drop table users_info ;
