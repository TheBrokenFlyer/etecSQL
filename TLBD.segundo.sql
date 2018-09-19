use master						--disuse master
go --wait for previous command
 drop database		bancho		--delete bancho
go --wait for previous command
 create database		bancho		--recreate bancho*
go --wait for previous command
 use					bancho		--use bancho
/*
	*Bancho is a reference to the name of the official Osu! servers
*/


/* table creation */
create table tb_clients ( --<CREATE/ALTER> table <name ( ... )
	id_client		int identity(0,1), --identity(int stating_point, int increment)
	client_name		varchar(32) not null, --<columnName> <type> [attributes]
	client_address	varchar(128) not null,
	client_phone	int default null,
	client_email	varchar(32) not null,
	
	primary key (id_client), --<constraintType> (<column name>) {references <tableName>(<columnName>)}
	unique (client_email)
)

create table tb_listitems (
	id_item int	identity(0,1) unique,
	item_desc varchar(128) default null,
	item_price float not null default 0,
	item_unitqtd int not null default 0,
	
	primary key (id_item),
)

create table tb_sell_checkouts (
	id_checkout int identity(0,1) unique,
	id_client int not null,
	checkout_date date not null default getdate(),
	checkout_value_total float not null default 0,
	checkout_value_discount float not null default 0,
	checkout_value_paid float not null default 0,
	
	primary key (id_checkout),
	foreign key (id_client) references tb_clients(id_client)
)

create table tb_sell_checkouts_items (
	id_checkout int,
	id_item int not null,
	checkout_item_qtd int default 0,
	checkout_item_value float default 0,
	
	foreign key (id_checkout) references tb_sell_checkouts(id_checkout),
	foreign key (id_item) references tb_listitems(id_item)
)

/* insert values into a table :3 */
insert into tb_clients(client_name, client_address, client_email)	--at client_name in tb_clients,
	values('dummy', 'Somewhere Street', 'dummy@example.com')					--create "dummy"

insert into tb_sell_checkouts(id_client) --insert into <tableName>(<column0>[, <column1>[, <columnN>[...]]]])
	values(0)							 --values(<column0>[, <column1>[, <columnN>[...]]]])

insert into tb_listitems(item_desc,item_price,item_unitqtd) values	--at table(column0,column1,[...])
	('gpu',499.99,30000),								--values(c0-val,c1-val,[...])
	('cpu',299.70,290),
	('eee',600.90,2990);
	
insert into tb_clients(client_name,client_address,client_phone,client_email) values
	('informed dummy','somewhere else','727272','address0@host.com'),
	('asdfa','some place','232323','address1@host.com'),
	('haah','a house','898989','address2@host.com');
	
insert into tb_sell_checkouts_items(id_checkout,id_item,checkout_item_qtd,checkout_item_value) values
	(0,0,3,1301),
	(0,1,5,564);

insert into tb_sell_checkouts(id_client,checkout_date,checkout_value_paid,/**/checkout_value_total) values
	(1,GETDATE(),12,12),
	(3,GETDATE(),9999,9999);


update tb_listitems	--update data at "tb_listitems"
	set		item_desc = 'mouse'	--sets the column of the registry to "'mouse'"
	where	item_desc = 'wireless mouse';	--it affects any registry in the table with these conditions - if the current description is "'eee'"
	
delete from tb_clients --deletes any registries from "tb_clients"
	where	client_email = NULL;	--which has no email (or no value in client_email)

/* reading values from a table :3c */
select * from tb_clients			--select everything (*) from tb_clients to show
select * from tb_listitems
select * from tb_sell_checkouts


select client_name,client_phone
	from tb_clients									--select client_name and client_phone, in this order to show
select client_name
	from		tb_clients
	order by	id_client	desc			--order by ID in decrescent order
select *
	from	tb_clients
	where	client_name like '%m%'		--"like" looks for condicions. % works like * thus selecting everything
select *
	from	tb_clients
	where	client_phone < 300000		--only registries where the number in client_phone is lower than 300000


/* join examples */
select * 
	from		tb_clients			as C
	inner join	tb_sell_checkouts	as V
			on	C.id_client = id_checkout

select C.client_name, C.client_address, S.checkout_date, S.checkout_value_paid --show these columns
	from		tb_clients			as C	--from these tables as "C" and "S" as its aliases
	inner join	tb_sell_checkouts	as S	--inner join means joining the common between both tables
			on C.id_client = S.id_checkout		--that meets these conditions

