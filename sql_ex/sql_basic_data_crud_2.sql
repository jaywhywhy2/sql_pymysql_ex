use db_basic ;
create table post(
id int primary key auto_increment,
title varchar(255),
content text
);

use db_basic ;
create table usersd(
id int primary key auto_increment,
name varchar(50),
phone varchar(30),
address varchar(100)
);

insert into post(id,title,content)
value (1,'코딩', '재밌어요');
insert into post(id,title,content)
value (2,'java', '객체지향언어');
insert into post(id,title,content)
value (3,'html', '웹표준언어');
insert into post(id,title,content)
value (4,'python', '잘할수있다.');
insert into post(id,title,content)
value (5,'django', '풀스텍개발프레임워크');


insert into usersd(id,name, phone, address)
value (1,'kim','010-1111-1111','Seoul');
insert into usersd(id,name, phone, address)
value (2,'lee','010-2222-2222','Seoul');
insert into usersd(id,name, phone, address)
value (3,'song','010-3333-3333','Daegu');
insert into usersd(id,name, phone, address)
value (4,'park','010-4444-4444','Busan');
insert into usersd(id,name, phone, address)
value (5,'lee','010-5555-5555','Daegu');

select * from post p ;

select * from post p 
where id = 2;

select * from post p 
where title = '코딩';

select title, content from post p 
where id between 1 and 3 ;

select * from usersd u  where address in ('Seoul','Busan','Daegu');

select * from post p order by title asc;

update post p  
set title = '제목 수정 중',
	content = '본문 수정 중'
	where id = 3;

delete from post where id = 3;
