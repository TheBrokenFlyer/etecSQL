use master
go
drop database dtb
create database dtb
go
use dtb
go

create table d (
	idd int not null primary key identity(0,1),
	s varchar(3) not null unique
)
create table p (
	idp int not null primary key identity(0,1),
	s varchar(3) not null unique,
	idd int not null foreign key references d(idd)
)

go
CREATE TRIGGER idfempty ON d AFTER INSERT AS
IF NOT EXISTS(
	 select p.idd, i.idd
	 from p
	 join inserted as i
	 on (p.idd = i.idd)
	)
begin
	SELECT idd FROM inserted
	rollback transaction
end

go
insert into d(s) values
('aaa'),('aac')

select * from d

