use dtbHardware;

go
 if OBJECT_ID('dbo.createPromotion') is not null
	drop procedure createPromotion;

go
 create proc createPromotion @name as varchar(32), @start as datetime, @end as datetime
as
begin
	insert into tb_promotions(promotion_name, promotion_start, promotion_end)
		values (@name, @start ,@end);
	
end;

go
 if OBJECT_ID('dbo.promotionValue') is not null
	drop trigger promotionValue;

go
 create trigger promotionValue on tb_checkouts for insert
as
begin
	select * from inserted;
end;

go
 use master;
