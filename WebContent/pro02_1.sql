create database myshop1;
commit;
use myshop1;

create table custom(
	cusId varchar(13) primary key,
    cusPw varchar(200) not null,
    cusName varchar(30) not null,
    address varchar(500) not null,
    tel varchar(14) not null,
    regDate dateTime default now(),
    point int default 0,
    level int default 0,
    visited int default 0        
);

create table notice(
	notiNo int primary key auto_increment,
    title varchar(200) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resDate dateTime default now()
);

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);

-- 판매 테이블 생성
create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(13) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);

-- 결제 테이블 생성
create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);
-- 배송 테이블 생성
create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0
);   
insert into custom(cusId,cusPw,cusName,address,tel) values ('admin','1234','관리자','','010-0000-0000');
insert into custom(cusId,cusPw,cusName,address,tel) values ('jin','1234','진','','010-0000-0000');
update custom set cusPw ="1234" where cusId = "admin";
update custom set cusPw ="03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4" where cusId = "admin";



alter table notice add  visited int default 0;


insert into notice(title,content,author) values("테스트글1","테스트내용1","admin");
insert into notice(title,content,author) values("테스트글2","테스트내용2","admin");
insert into notice(title,content,author) values("테스트3","테스트내용3","admin");
commit;



create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);

select * from notice order by notiNo desc;
select * from category;
select * from custom;
select * from notice;
select * from product;
select * from sales;
select * from payment;
select * from parsel;