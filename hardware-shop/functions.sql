use dtbHardware;

if OBJECT_ID('dbo.promotion') is not null
	drop procedure promotion;

go
 create proc promotion @name as varchar(32), @start as datetime, @end as datetime, @items as 
as
begin
	insert into tb_promotions(promotion_name, promotion_start, promotion_end)
		values (@name, @start ,@end);
	
end;

use master;
