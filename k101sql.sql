--create table Products(
--Id int primary key identity,
--Name nvarchar (100) not null,
--Price Decimal,
--Quantity int,
--CategoryId int foreign key references Category(Id)
--)

--create table Category(
--Id int primary key identity,
--Name nvarchar (100) not null,
--)

--create table Users(
--Id int primary key identity,
--FullName nvarchar (100) not null,
--Email nvarchar (100) not null,
--Phone nvarchar (15),
--Password nvarchar (50)
--)

--create table Orders(
--Id int primary key identity,
--UserId int foreign key references Users(Id),
--ProductId int foreign key references Products(Id),
--BuyDate Datetime,
--Quantity int
--)

--insert into Category Values ('Telefonlar'),('Planset'),('Komputer'),('Televizor')
--insert into Users Values ('Elgun','elgun@gmail.com','0555555555','12345678'),
--('Senan','senan@gmail.com','0555555577','12345678'),
--('Pervin','pervin@gmail.com','0665555555','12345678'),
--('Eziz','eziz@gmail.com','0555555500','12345678')

--insert into Orders Values (1,2,'2020-06-06',5),(2,3,'2020-06-06',1),(3,2,'2020-06-05',2),(4,1,'2020-06-05',800)

Create View SelectOrderList as
select ps.Name[Product Name],ps.Price,ord.Quantity,us.FullName,ord.BuyDate from Orders ord
Join Products ps 
on ord.ProductId = ps.Id
Join Users us
on ord.UserId = us.Id
