use dtbHardware;

update tb_listitems	--update data at "tb_listitems"
	set		item_desc = 'mouse'	--sets the column of the registry to "'mouse'"
	where	item_desc = 'wireless mouse';	--it affects any registry in the table with these conditions - if the current description is "'eee'"
	
delete from tb_clients --deletes any registries from "tb_clients"
	where	client_email = NULL;	--which has no email (or no value in client_email)

/* reading values from a table :3c */
select * from tb_clients			--select everything (*) from tb_clients to show
select * from tb_listitems
select * from tb_checkouts


select client_name,client_phone
	from tb_clients;								--select client_name and client_phone, in this order to show

select client_name
	from		tb_clients
	order by	id_client	desc;			--order by ID in decrescent order

select *
	from	tb_clients
	where	client_name like '%m%';		--"like" looks for condicions. % works like * thus selecting everything

select *
	from	tb_clients
	where	client_phone < 300000;		--only registries where the number in client_phone is lower than 300000


/* join examples */
select * 
	from		tb_clients			as C
	inner join	tb_checkouts	as V
			on	C.id_client = id_checkout

select C.client_name, C.client_address, S.checkout_date, S.checkout_value_paid --show these columns
	from		tb_clients			as C	--from these tables as "C" and "S" as its aliases
	inner join	tb_checkouts	as S	--inner join means joining the common between both tables
			on C.id_client = S.id_checkout		--that meets these conditions

go
 use master;
