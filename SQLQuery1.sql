create database test_env

use test_env

select * from [dbo].[Products]

select * from [dbo].[Test+Environment+Inventory+Dataset]

select distinct Product_ID from  [dbo].[Test+Environment+Inventory+Dataset]

select distinct [Order_Date_DD_MM_YYYY] from  [dbo].[Test+Environment+Inventory+Dataset]

select distinct [Availability] from  [dbo].[Test+Environment+Inventory+Dataset]

select a.[Order_Date_DD_MM_YYYY],a.Product_ID,a.Availability,a.Demand,b.Product_Name,b.Unit_Price from  [dbo].[Test+Environment+Inventory+Dataset] as a left join Products as b on a.product_id=b.product_id 

select *  into New_Table from (select a.[Order_Date_DD_MM_YYYY],a.Product_ID,a.Availability,a.Demand,b.Product_Name,b.Unit_Price from  [dbo].[Test+Environment+Inventory+Dataset] as a left join Products as b on a.product_id=b.product_id 
) x

select * from New_Table

create database PROD

USE PROD

select * from [dbo].[Prod+Env+Inventory+Dataset]

select distinct [Order_Date_DD_MM_YYYY] from [dbo].[Prod+Env+Inventory+Dataset]
where [Order_Date_DD_MM_YYYY] is null or [Order_Date_DD_MM_YYYY] = ''

select distinct Product_ID from [dbo].[Prod+Env+Inventory+Dataset]

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 7 where Product_ID = 21

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 11 where Product_ID = 22

select distinct Product_ID from [dbo].[Prod+Env+Inventory+Dataset]
order by Product_ID

select distinct availability from [dbo].[Prod+Env+Inventory+Dataset]

select distinct Demand from [dbo].[Prod+Env+Inventory+Dataset]

select *  into New_Table from (select a.[Order_Date_DD_MM_YYYY],a.Product_ID,a.Availability,a.Demand,b.Product_Name,b.Unit_Price from [dbo].[Prod+Env+Inventory+Dataset]  as a left join Products as b on a.product_id=b.product_id 
) x
