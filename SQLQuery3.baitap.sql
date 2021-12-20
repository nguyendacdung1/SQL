create database BookLibrary
GO
create table Book(
    BookCode int primary key,
	BookTitle varchar(100) not null,
	Author varchar(50) not null ,
	Edition int null,
	BookPrice money not null default(200000),
	Copies int null
	)
GO
create table Member(
     MemberCode int UNIQUE not null,
	 Name varchar(50) not null,
	 Address varchar(100) not null,
	 PhoneNumber int not null
	 )
GO
create table IssueDetails(
      BookCode int primary key not null,
	  MemberCode int UNIQUE not null,
	  IssueDate datetime not null,
	  ReturnDate datetime not null
	  
	  )
alter table Book add constraint MN_CHECK check(BookPrice>0)
alter table IssueDetails add constraint chk_rc foreign key (BookCode) references Book(BookCode)
alter table IssueDetails drop constraint chk_rc;
alter table Member add constraint mi_ni primary key (PhoneNumber)
alter table Member drop constraint mi_ni;

       
