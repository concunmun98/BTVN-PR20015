drop table if exists bookauthor  ;
drop table if exists bookborrow ;
drop table if exists  borrow;
drop table if exists author;
drop table if exists reader;
drop table if exists book;

create table if not exists reader(
reader_id int auto_increment,
readername varchar(50) not null,
sex bit,
phone varchar(40),
primary key (reader_id));

create table if not exists borrow(
 borrow_id int auto_increment,
borrowdate  date,
readerid int,
foreign key (readerid) REFERENCES reader(reader_id),
primary key (borrow_id));

create table if not exists book(
book_id int auto_increment,
title varchar(100) not null,
category varchar(100) not null,
primary key (book_id ));

create table if not exists bookborrow(
bookborrow_id int auto_increment,
bookid int,
borrowid int,
quantity int,
foreign key (bookid) REFERENCES book(book_id),
foreign key (borrowid) REFERENCES borrow(borrow_id ),
primary key (bookborrow_id));

create table if not exists author(
author_id int auto_increment,
authorname varchar(100) not null,
primary key (author_id));

create table if not exists bookauthor(
bookauthor_id int auto_increment,
bookid int,
authorid int,
foreign key (bookid) REFERENCES book(book_id),
foreign key (authorid) REFERENCES author(author_id),
primary key (bookauthor_id));


/*chen du lieu*/
insert into reader(readername,sex,phone)
values
("tran van thuan",1,"09123"),
("do van minh",1,"09324"),
("do van long",1,"0345"),
("nguyen van huy",1,"04567"),
("le van minh",1,"35798"),
("tran van dung",1,"12789");

insert into borrow(borrowdate,readerid)
values
("2011-01-01",2),
("2011-02-01",3),
("2011-05-06",4),
("2011-03-01",3),
("2011-04-01",2),
("2011-05-01",1),
("2011-05-01",1),
("2011-06-01",4),
("2011-06-01",1),
("2011-07-01",1),
("2011-08-01",1),
("2011-03-02",1),
("2012-06-01",1);

insert into book(title,category)
values
("hello", "tieuthuyet"),
("thep","tho"),
("vietnam","ca dao"),
("tinh yeu","tieu thuyet"),
("tam quoc","kiemhiep"),
("thuyhu","kiem hiep"),
("tam","kiem hiep"),
("thienlong","kiem hiep"),
("tuyet hoa","kiem hiep"),
("ab","kiem hiep"),
("cd","kiem hiep"),
(" ngo","kiem hiep"),
("ton ngo","kiem hiep"),
("gh","kiem hiep"),
("vo ","kiem hiep"),
("tam","kiem hiep"),
("tuong","kiem hiep"),
("nhat","kiem hiep"),
("thuy","kiem hiep");


insert into bookborrow(bookid,borrowid,quantity)
values
(2,3,1),
(1,3,3),
(3,5,1),
(4,3,3),
(5,4,1),
(2,6,1),
(7,3,3),
(3,3,3),
(2,3,1),
(4,3,1),
(4,3,2),
(2,3,1),
(1,3,4),
(3,3,4),
(4,3,4),
(3,5,4),
(2,3,4);
 
 insert into author(authorname)
 values
 ("Stephen King"),
 ("le van tam"),
 ("nguyen van ha"),
 ("tran van dai"),
 ("le van bay"),
  ("le van bay"),
   ("le manh tuan"),
  ("tran van huy"),
("le van bay");

insert into bookauthor(bookid,authorid )
values
(2,3),
(3,3),
(1,3),
(1,2),
(3,3),
(2,4),
(5,3),
(4,3),
(3,3),
(4,2),
(2,1),
(4,5),
(6,4),
(2,3),
(1,3);

/*lam phan 1 */
select title,sum(quantity)
from bookborrow inner join book  on book.book_id=bookborrow.bookid
	inner  join borrow on borrow.borrow_id=bookborrow.borrowid
    where year(borrowdate)=2011
    group by title
    having SUM(quantity)>10


