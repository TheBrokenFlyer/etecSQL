use master;						--disuse master
drop database		bancho		--delete bancho
create database		bancho		--recreate bancho*
use					bancho		--use bancho
go								--go to bancho
/*
	*Bancho is a reference to the name of the official Osu! servers
*/


create table tb_clients (
	id_client				int			primary key		identity(1,1), --identity(int stating_point, int increment)
	client_name				varchar,
	client_address			varchar,
	client_phone			int,
	client_email			varchar,
)

create table tb_sell_listitems (
	id_item					int			primary key		identity(1,1),
	item_desc				text,
	item_price				float,
	item_unitqtd			int,
)

create table tb_sell_checkouts (
	id_checkout				int			primary key		identity(1,1),
	id_client				int,
	checkout_date			date,
	checkout_value_total	float,
	checkout_value_discount	float,
	checkout_value_paid		float,
)

create table tb_sell_checkouts_items (
	id_checkout_item		int			primary key		identity(1,1),
	id_checkout				int,
	id_item					int,
	checkout_item_qtd		int,
	checkout_item_value		float,
)

