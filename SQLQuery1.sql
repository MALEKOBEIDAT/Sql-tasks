create table custmorr(
custmor_id int identity,
fname varchar(20) NOT NULL,
lname varchar(20),
primary key (custmor_id )


);

create table orders(
orderd_id int identity primary key,
soldQuantity int NOT NULL,
custmor_id int NOT NULL,
foreign key(custmor_id) REFERENCES custmorr


);

create table products(
product_id int identity primary key,
product_name varchar(50) NOT NULL,
product_prise int ,
orderd_id int,
foreign key(orderd_id) REFERENCES orders


);

insert into custmorr(fname,lname) values('Malek','Obeidat');

insert into orders (custmor_id,soldQuantity) values(1,2),(1,3),(2,6),(2,8);
insert into products(orderd_id,product_name,product_prise ) values (1,'sugar',5), (1,'pepsi',75), (2,'spagti',1), (3,'pepsi',75),(3,'rice',25), (4,'sugar',55), (4,'choclate',235), (4,'chips',135);

select * from custmorr;
JOIN orders ON custmorr.custmor_id = orders.custmor_id
JOIN products ON products.orderd_id = orders.orderd_id;

select * from custmorr;

