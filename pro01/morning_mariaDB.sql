select version();

/*project3 마리아 DB 게시판, 회원*/
create database morning;

use morning;
show tables;
commit;

create table board (
bno int auto_increment primary key, 
title varchar(200), 
content varchar(1000), 
autor varchar(20), 
vcnt int default 0, 
resdata timestamp default current_timestamp
);

insert into board (title, content) values('더미글 제목1', '더미글 내용1 입니다');
insert into board (title, content) values('더미글 제목2', '더미글 내용2 입니다');
insert into board (title, content) values('더미글 제목3', '더미글 내용3 입니다');
insert into board (title, content) values('더미글 제목4', '더미글 내용4 입니다');
insert into board (title, content) values('더미글 제목5', '더미글 내용5 입니다');
insert into board (title, content) values('더미글 제목6', '더미글 내용6 입니다');

commit;

create table member( id varchar(20) primary key, 
pw varchar(300) not null, 
name varchar(100) not null, 
email varchar(200) not null, 
tel varchar(100) not null, 
addr1 varchar(200), 
addr2 varchar(100), 
postcode varchar(20), 
birth date, 
point int default 1000, 
resdate timestamp default current_timestamp 
);

create table free(
no int auto_increment primary key, 
title varchar(200) not null, 
content varchar(1000) , 
hits int default 0, 
resdate timestamp default current_timestamp, 
id varchar(2), name varchar(100)
);

create table qna (
no int auto_increment primary key, 
title varchar(200) not null, 
content varchar(1000) , parse int,
hits int default 0, 
resdate timestamp default current_timestamp, 
id varchar(2), name varchar(100)
);

create table fileboard(
no int auto_increment primary key, 
title varchar(200) not null, 
content varchar(1000) , 
url varchar(300), 
author varchar(20)
);

create table product(pno int auto_increment primary key, 
cate varchar(20) not null, pname varchar(100) not null, 
price int default 1000, com varchar(1000), img varchar(300)
);

/*입고
iprice: 입고가격
oprice: 출고가격
amount : 수량(기본 1)
remark : 참고사항
*/
create table inventory (ino int auto_increment primary key, 
pno int, 
iprice int default 1000, oprice int default 1000, 
amount int default 1,   
remark varchar(200), 
foreign key(pno) references product(pno) 
);
desc inventory;

/*판매
pno : 물품 번호
tot : 총 가격
id : 구매자
dno : 화물 ..
*/
create table sales ( sno int auto_increment primary key, 

pno int , amount int default 1, tot int, id varchar(20), 
paymethod varchar(20), paynum varchar(30), 
addr varchar(300), tel varchar(100), 
delcom varchar(100), deltel varchar(100), 
delno varchar(50), dalstatus varchar(20), 
st varchar(20),
dno int
);

alter table sales add constraint fk_mem1
foreign key (id) references member(id);

desc sales;

create table basket(
bno int auto_increment primary key, 
id varchar(20), 
pno int , 
amount int , 
remark varchar(100)
);

alter table basket add constraint fk_mem2
foreign key (id) references member(id);




