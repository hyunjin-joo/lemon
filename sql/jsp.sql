create database jsp;
use jsp;


create table board.member (
    memberid varchar(50) primary key,
    name varchar(50) not null,
    password varchar(10) not null,
    regdate datetime not null,
    email varchar(100) not null,
    email1 varchar(100) not null,
    phone varchar(100) not null
) engine=InnoDB default character set = utf8;

create table board.article (
    article_no int auto_increment primary key,
    writer_id varchar(50) not null,
    writer_name varchar(50) not null,
    title varchar(255) not null,
    regdate datetime not null,
    moddate datetime not null,
    read_cnt int
) engine=InnoDB default character set = utf8;

create table board.article_content (
    article_no int primary key,
    content text
) engine=InnoDB default character set = utf8;
-- text : 최대 65535 문자길이, 글 본문에 주로 쓰임

select * from board.member;
select * from board.article;

-- 없으면 넣기(admin은 필수)
insert into board.member values("admin","관리자","admin",now(),"admin1","@homepage.net","010-1577-1577");
insert into board.member values("apple","사과","apple",now(),"apple1","@fruit.net","010-4555-9811");
insert into board.member values("bbb","비비","bbb123",now(),"bbg","@bibi.net","010-3156-0254");




-- alter table board.member drop mname;
-- alter table board.member add email varchar(100);
-- alter table board.member add email1 varchar(100);
-- alter table board.member add phone varchar(100);


-- update board.member set email="apple" where memberid = "aa";
-- update board.member set email1="@fruit.com" where memberid = "aa";
-- update board.member set phone="010-4567-9978" where memberid = "aa";

-- alter table board.member change email1 phone1 varchar(100); 
-- alter table board.member change phone email1 varchar(100);
-- alter table board.member change phone1 phone varchar(100);

-- update board.member set email1 = "@fruit.com"; 
-- update board.member set phone = "010-1234-5678"; 
-- update board.member set phone = "010-4564-7779" where memberid="bbb"; 
-- (memberid,name,password,email,email1,phone)-- 


-- manager 실패..ㅠㅠ
-- create table board.manager(
-- mid varchar(100) primary key,
-- mpw varchar(100) not null
-- )engine=InnoDB default character set = utf8;

-- select * from board.manager;
-- alter table board.manager add mname varchar(50);

-- insert into board.manager values("admin1234","1234");
-- update board.manager set mname = "관리자";