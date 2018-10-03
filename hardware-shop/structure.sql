use master						--disuse master
go --wait for previous command
 drop database		dtbHardware		--deletes the database
go --wait for previous command
 create database	dtbHardware		--recreate the database
go --wait for previous command
 use dtbHardware				--use the database


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
	id_item int	primary key identity(0,1),
	item_desc varchar(128) default null,
	item_price decimal(6,2) not null default 5.00 check(item_price >= 5.00),
	item_unitqtd int not null default 0,
)

create table tb_checkouts (
	id_checkout int primary key identity(0,1),
	id_client int not null,
	checkout_date date not null default getdate() check(checkout_date <= getdate()),
	checkout_value_total float not null default 10,
	checkout_value_discount float not null default 0,
	checkout_value_paid float not null default 0,
	
	foreign key (id_client) references tb_clients(id_client)
)

create table tb_checkouts_items (
	id_checkout int,
	id_item int not null,
	checkout_item_qtd int default 0,
	checkout_item_value float default 0,
	
	foreign key (id_checkout) references tb_checkouts(id_checkout),
	foreign key (id_item) references tb_listitems(id_item)
)

create table tb_promotions (
	id_promotion int primary key identity(0,1),
	promotion_name varchar(32) unique not null,
	promotion_start date not null default GETDATE(),
	promotion_end date not null check(promotion_end <= convert(date, getdate())),
)

create table tb_promotions_items (
	id_promotion_item int primary key identity(0,1),
	
)

/* insert values into a table :3 */
insert into tb_clients(client_name, client_address, client_email)	--at client_name in tb_clients,
	values('dummy', 'Somewhere Street', 'dummy@example.com')					--create "dummy"

insert into tb_checkouts(id_client) --insert into <tableName>(<column0>[, <column1>[, <columnN>[...]]]])
	values(0)							 --values(<column0>[, <column1>[, <columnN>[...]]]])

insert into tb_listitems(item_desc,item_price,item_unitqtd) values	--at table(column0,column1,[...])
	('gpu',		499.99,	30000),								--insert rows with these values(c0-val,c1-val,[...])
	('cpu',		299.70,	290),
	('mouse',	10.90,	2990);
	
insert into tb_clients(client_name,client_address,client_phone,client_email) values
	('informed dummy','somewhere else','727272','address0@host.com'),
	('asdfa','some place','232323','address1@host.com'),
	('haah','a house','898989','address2@host.com');
	
insert into tb_checkouts_items(id_checkout,id_item,checkout_item_qtd,checkout_item_value) values
	(0,0,3,1301),
	(0,1,5,564);

insert into tb_checkouts(id_client,checkout_date,checkout_value_paid,/**/checkout_value_total) values
	(1,GETDATE(),12,12),
	(3,GETDATE(),9999,9999);

go
 use master;
