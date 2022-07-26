create table tv_student
(
roll_no int,
name varchar(100),
gender varchar(20),
mob_no bigint,
user_name varchar(100),
datemodified datetime,
status varchar(100),
servername varchar(100)
)
select * from tv_student

create trigger tr_student_insert
on student
for insert
as
begin
insert into [tv_student]
select *, SYSTEM_USER,getdate(),'value is inserted', @@servername from inserted
end





create trigger tr_student_delete_update_insert
on student
for insert,delete,update
as
begin
if exists (select 1 from inserted) and not exists(select 1 from deleted)
begin
insert into [tv_student]
select *, SYSTEM_USER,getdate(),'value is inserted 1', @@servername from inserted
end 
if exists (select 1 from deleted) and not exists(select 1 from inserted)
begin
insert into [tv_student]
select *, SYSTEM_USER,getdate(),'value is deleted 2', @@servername from deleted
end
 if  exists (select 1 from inserted) and exists(select 1 from deleted)
begin
insert into [tv_student]
select *, SYSTEM_USER,getdate(),'old value is deleted 3', @@servername from deleted
insert into [tv_student]
select *, SYSTEM_USER,getdate(),'new value is inserted 4', @@servername from inserted
end
end
 delete from...

select * from Student
select * from tv_student
