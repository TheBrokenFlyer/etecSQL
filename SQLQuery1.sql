use master;						--disuse master
drop database		bancho		--delete bancho
create database		bancho		--recreate bancho*
use					bancho		--use bancho
go								--go to bancho
/*
	*Bancho is a reference to the name of the official Osu! servers
*/


/* table creation */
create table tb_clients (
	id_client				int			primary key		identity(0,1), --identity(int stating_point, int increment)
	client_name				varchar(32),
	client_address			varchar,
	client_phone			int,
	client_email			varchar,
)

create table tb_sell_listitems (
	id_item					int			primary key		identity(0,1),
	item_desc				text,
	item_price				float,
	item_unitqtd			int,
)

create table tb_sell_checkouts (
	id_checkout				int			primary key		identity(0,1),
	id_client				int,
	checkout_date			date,
	checkout_value_total	float,
	checkout_value_discount	float,
	checkout_value_paid		float,
)

create table tb_sell_checkouts_items (
	id_checkout_item		int			primary key		identity(0,1),
	id_checkout				int,
	id_item					int,
	checkout_item_qtd		int,
	checkout_item_value		float,
)


/* table rules creation */
alter table tb_sell_checkouts			--alter in tb_sell_checkouts
	
	add constraint tbr_sync_client_id		--add a rule called "tbr_sync_client_id"
											--where
		foreign key	(id_client)				--the column "id_client"
		references	tb_clients(id_client)	--refers to "id_client" in "tb_clients"


alter table tb_sell_checkouts_items
	
	add constraint tbr_sync_id_checkout 
		
		foreign key	(id_checkout)
		references	tb_sell_checkouts(id_checkout)

alter table tb_sell_checkouts_items
	
	add constraint tbr_sync_id_item
		
		foreign key	(id_item)
		references	tb_sell_listitems(id_item)
		

/* insert values into a table :3 */
insert into tb_clients(client_name)	--at client_name in tb_clients,
	values('dummy')					--create "dummy"

insert into tb_sell_checkouts(id_client) --at id_client in tb_sell_checkouts,
	values(0)							 --create a sell registry refering to "dummy"
	
/* reading values from a table :3c */
select * from tb_clients			--select everything (*) from tb_clients
select * from tb_sell_checkouts