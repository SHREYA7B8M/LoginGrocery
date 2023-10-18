create database Login

use Login


create table UserRegistration
(
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
ContactNumber nvarchar(10) not null unique,
EmailID nvarchar(50) not null,
DateOfBirth datetime not null,
UserId nvarchar(10) primary key,
Password nvarchar(20) not null,
ConfirmPassword nvarchar(20) not null,
)

create  table UserLogin
(UserLoginId int primary key identity(10,1),
UserId nvarchar(10) foreign key references UserRegistration,
Password nvarchar(20) not null,
UserName nvarchar(50));

--Create a trigger for UserRegistration table
CREATE TRIGGER trg_UserRegistration
ON UserRegistration
AFTER INSERT
AS
BEGIN
    -- Insert a corresponding record into UserLogin table when a new user registers
    INSERT INTO UserLogin (UserId, Password,UserName)
    SELECT i.UserId,i.Password,i.FirstName
    FROM inserted i;
END;


select * from UserRegistration
select * from UserLogin

create table AdminInfo
(AdminId int primary key identity(1,1),
UserName nvarchar(10) not null,
Password nvarchar(20) not null)

insert into AdminInfo values ('admin123', 'admin@123')

select * from AdminInfo

 