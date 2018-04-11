use master;

drop table tbA;
create table tbA (
	name	varchar(32)	null
);

drop table tbB;
create table tbB (
	name	varchar(32)	null
);

insert into tbA(name)	values('fernanda');
insert into tbA(name)	values('luiz');
insert into tbA(name)	values('fernando');
insert into tbA(name)	values('josefa');


insert into tbB(name)	values('carlos');
insert into tbB(name)	values('fernando');
insert into tbB(name)	values('manoel');
insert into tbB(name)	values('luiz');



select AName.name, BName.name from tbA as --select colums from both tables 
	AName inner join tbB	as				--takes B to fill in A
		BName on AName.name = BName.name	--takes B and compare if there are registries in B that are equals to A. shows compatible values.

select AName.name, BName.name from tbA as --select colums from both tables 
	AName left join tbB	as					--takes B to fill in A
		BName on AName.name = BName.name	--takes B and compare if there are registries in B that are equals to A. shows if true. NULL if false.

select AName.name, BName.name from tbA as --select colums from both tables 
	AName right join tbB	as				--takes B to fill A in B
		BName on AName.name = BName.name	--takes B and compare if there are registries in B that are equals to A. shows if true. NULL if false.

select AName.name, BName.name from tbA as --select colums from both tables
	AName full outer join tbB	as			--joins everything, fill B in A
		BName on AName.name = BName.name	--takes A and looks for registries in B. if compatible, shows value. if not, NULL is shown and shows incompatible registries at the last lines