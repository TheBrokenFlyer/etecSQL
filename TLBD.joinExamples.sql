use master;

drop table tbA;
create table tbA (
	name	varchar(32)	null
);

drop table tbB;
create table tbB (
	name	varchar(32)	null
);

insert into tbA(name) values
	('fernanda'),
	('luiz'),
	('fernando'),
	('josefa');


insert into tbB(name) values
	('carlos'),
	('fernando'),
	('manoel'),
	('luiz');



select AName.name, BName.name	--select colums from both tables 
	from		tbA			as	AName	--takes table A as the name "AName"
	inner join	tbB			as	BName	--takes table B as the name "BName"
			on	AName.name	=	BName.name	--takes B and compare if there are registries in A that are equals to B. shows compatible values.

select AName.name, BName.name	--select colums from both tables 
	from		tbA			as	AName	--takes table A as the name "AName"
	left join	tbB			as	BName	--takes table B as the name "BName"
			on	AName.name	=	BName.name	--takes A and compare if there are registries in A that are equals to B. shows values if true. NULL if false.

select AName.name, BName.name	--select colums from both tables 
	from		tbA			as	AName	--takes table A as the name "AName"
	right join	tbB			as	BName	--takes table B as the name "BName"
			on	BName.name	=	AName.name	--takes B and compare if there are registries in B that are equals to A. shows values if true. NULL if false.

select AName.name, BName.name	--select colums from both tables 
	from		tbA			as	AName	--takes table A as the name "AName"
	left join	tbB			as	BName	--takes table B as the name "BName"
			on	AName.name	=	BName.name	--takes A and looks for registries in B. if compatible, shows value. if not, NULL is shown and shows incompatible registries at the last lines

