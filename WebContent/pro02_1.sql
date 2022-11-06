create database myshop1;
commit;
use myshop1;
create table custom(
	cusId varchar(13) primary key,
    cusPw varchar(50) not null,
    cusName varchar(30) not null,
    address varchar(500) not null,
    tel varchar(14) not null,
    regDate dateTime default now(),
    point int default 0,
    level int default 0,
    visited int default 0        
);

insert into custom(cusId,cusPw,cusName,address,tel) values ('admin','a1234','관리자','','010-0000-0000');

create table notice(
	notiNo int primary key auto_increment,
    title varchar(200) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resDate dateTime default now()
);

insert into notice(title,content,author) values("테스트글1","테스트내용1","admin");
insert into notice(title,content,author) values("테스트글2","테스트내용2","admin");
insert into notice(title,content,author) values("테스트3","테스트내용3","admin");
commit;



create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);
;
select * from notice order by notiNo desc;
select * from category;
select * from custom;
select * from notice;
