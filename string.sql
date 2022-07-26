declare @name varchar(100)
set @name = 'bojanalu cHeTan '
--select (upper(left(@name,1))+lower(right(left(@name,8),7))+' '+
--upper(left(right(@name,6),1))+lower(right(@name,5)))

select len(@name)

--declare @string varchar(50)
--set @string='hEmA kUmarI'
select upper(left(@string,1)+lower(right(left(@string,4),3))+' '+
upper(left(right(@string,6),1))+lower(right(@string,5)))

declare @string varchar(50)
set @string='hEmA kUmarI tellam'
select upper(left(substring(@string,2,charindex(' ',@string)-1),1))+lower(right(substring(@string,2,charindex(' ',@string)-2),2))
+' '+
upper(left(substring(@string,charindex(' ',@string)+1,3),1))+lower(right(substring(@string,charindex(' ',@string)+2,2),2))
 
 ema kum
 Ema Kum
declare @jas varchar(100)=' chetan '
select rtrim(ltrim(@jas))
--chetan
select len(@jas)
select datalength(@jas)
select reverse(@jas)

select replicate(@jas,4)

--declare @jas varchar(100)=' chetan '
 select datalength(@jas) length

 select CHARINDEX('e',@jast)

 declare @sye varchar(100)='keerthiseshulu anamacharya '
 select charindex('a',@sye,charindex('a',@sye)+1)
 select charindex('a',@sye,charindex('a',@sye)+3)

 select substring(@sye,1,3)+' '+SUBSTRING(@sye,charindex(' ',@sye)+1,3)


DECLARE @CHARAC VARCHAR(100)='ABC123@#$%'
SELECT PATINDEX('%[^ A-Z,^0-9]%',@CHARAC)

 