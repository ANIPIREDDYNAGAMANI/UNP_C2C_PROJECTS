show databases;
drop database Ecommerce;
create database Ecommerce;
use Ecommerce;
create table product ( 
productId int not null auto_increment,
productName varchar(225)  not null,
catogery varchar(225) not null,
available_sizes varchar(225) not null,
colour varchar(225) not null,
productDescription varchar(225)  not null,
productPrice decimal (10, 3) not null,
quantityavailable int not null,
primary key (productId)
);
drop table product;
show tables;
insert into product(productName, catogery, available_sizes, colour, productDescription, productPrice, quantityavailable) values
("Tshirt","cloths","s m l","red,yellow,blue","good",500.00,25),
("jeans","cloths","s m l","black,yash,blue","average",900.00,30),
("kurta","cloths","s m l","green,orange,maroon","good",758.00,35),
("sweater","cloths","s m l","yash,white,pink","excellent",899.00,30),
("jacket","cloths","s m l","brown,black,yellow","average",699.00,40),
("samsung","mobiles","galaxy,on nxt","red,green,blue","good",15000.00,40),
("redmi","mobiles","pro,note6","red,black,blue","good",20000.00,30),
("pressurecooker","utilities","small,large","block,silver","good",1200.00,40),
("lg television","electronic gadgets","21,32","black","excellent",30000.00,30),
("washing machine","electronic gadgets","6,6.5,8","black,white","excellent",40000.00,35);
select * from product;
create table customer (
 customerId int not null auto_increment,
 customerName varchar(225)  not null,
 customer_age int not null,
 customer_gender varchar(225) not null, 
 customercontactnumber bigint not null,
 customermailid varchar(225)  not null,
 customeraddress varchar(225)  not null,
 primary key (customerId)
);
insert into customer(customerName, customer_age, customer_gender, customercontactnumber, customermailid, customeraddress) values
("naga",30,"female",8859426512,"naga.a@gmail.com","plot-41,roadno-5,holi colony,kothapet-86"),
("rekha",25,"female",9955223562,"rekha.p@gmail.com","plot-45,roadno-8,sneha colony,koti-56"),
("soni",21,"female",7854963526,"soni.123@gmail.com","plot-96,roadno-1,srinivasa colony,nagole-75"),
("jeevan",34,"male",9955664251,"jeevan.09@gmail.com","plot-85,roadno-6,enginners colony,lb nagar-65"),
("ashok",33,"male",8899556645,"Ashok.89@gmail.com","plot-9,roadno-7,jp colony,miyapur-74"),
("kamal",32,"male",8896523565,"kamal.02@gmail.com","plot-5,roadno-3,ram nagar,chintal-05"),
("ankitha",20,"female",9966458751,"Ankitha.6@gmail.com","plot-69,roadno-10,krishna nagar,uppal-62"),
("sreeja",18,"female",8897735621,"sree.07@gmail.com","plot-54,roadno-12,snehapuri colony,hayathnagar-56"),
("greeshma",17,"female",9705263841,"greeshma.02@gmail.com","plot-23,roadno-15,vinayaka nagar,patanchervu-35"),
("ramu",26,"male",8869952632,"abhi.12@gmail.com","plot-32,roadno-20,janapriya nagar,ibrahimpatnam-70");
select * from customer;

create table orders (
 orderId int not null auto_increment,
 productId int not null,
 customerId int not null,
 customerName varchar(225) not null,
 quantityordered int not null,
 price decimal (15, 4) not null,
 total_amount decimal(15, 4) not null,
 size varchar(225) not null,
 colour varchar(225) not null,
 modeofpayment  varchar(225) not null,
 paymentstatus varchar(225) not null,
 deliverystatus varchar(225) not null,
 billdate DATE not null,
 shipdate DATE not null,
 deliverydate DATE not null,
difference int not null,
 primary key (orderId)
 );
drop table orders;
insert into orders(productId, customerId, customerName, quantityordered, price,total_amount, size, colour, modeofpayment, paymentstatus, deliverystatus, billdate, shipdate, deliverydate, difference) values
 (5,2,"rekha",1,699.00,699.00,"m","black","cod","notcompleted","delivered",'2022-10-20','2022-10-25','2022-11-08',14),
 (5,10,"ramu",1,699.00,699.00,"l","brown","upi","completed","delivered",'2022-07-20','2022-07-24','2022-07-30',10),
 (9,4,"jeevan",1,30000.00,30000.00,"21","black","creditcard","completed","delivered",'2022-11-25','2022-11-30','2022-12-02',7),
 (2,10,"ramu",1,900.00,900.00,"l","yash","upi","completed","delivered",'2022-07-20','2022-07-24','2022-07-29',9),
 (9,4,"jeevan",1,30000.00,30000.00,"32","black","creditcard","completed","delivered",'2022-11-20','2022-11-25','2022-11-28',8),
 (4,5,"ashok",1,899.00,899.00,"m,","pink","debitcard","completed","delivered",'2022-10-15','2022-10-19','2022-10-26',11),
 (3,1,"naga",1,758.00,758.00,"m","green","paytm","completed","delivered",'2022-09-22','2022-09-26','2022-10-05',14),
 (4,5,"ashok",1,899.00,899.00,"l","yash","debitcard","completed","delivered",'2022-10-20','2022-10-25','2022-10-28',8),
 (3,1,"naga",1,758.00,758.00,"l","orange","paytm","completed","delivered",'2022-09-10','2022-09-15','2022-09-18',8),
 (6,6,"kamal",1,15000.00,15000.00,"on nxt","red","debitcard","completed","delivered",'2022-11-15','2022-11-19','2022-11-21',5),
 (3,1,"naga",1,758.00,758.00,"m","maroon","paytm","completed","delivered",'2022-09-02','2022-09-06','2022-09-10',8),
 (6,6,"kamal",1,15000.00,15000.00,"galaxy","blue","debitcard","completed","delivered",'2022-11-20','2022-11-25','2022-11-30',10);
 select * from orders;
 update product set quantityavailable=38 where productId=5;
update product set quantityavailable=28 where productId=4;
update product set quantityavailable=28 where productId=9;
update product set quantityavailable=32 where productId=3;
update product set quantityavailable=28 where productId=6;
 select * from customer
where 
customer_gender="male";
select * from customer
where 
customer_gender="male"or customer_gender="female" and customer_age>23 order by customer_age;
select * from orders
where size is null;
select * from customer where customerName like 'a%';

select * from orders where productId between 1 and 5;

select  year(billdate) as year, month(billdate) as month from  orders;
select datediff(deliverydate,billdate) as deliverytime
from orders;


select avg(price) from orders;

desc orders;
select * from customer;
select * from orders;
select orders.customerId
     , SUM(orders.quantityordered*orders.price) AS TOTAL 
  from customer
  join orders
    on customer.customerId = orders.customerId
 group 
    by orders.customerId;
    
select SUM(quantityordered)
from orders;
select * from orders;
select
    orders.productId,customerId,COUNT(quantityordered)
from
    orders
group by orders.productId,customerId
order by COUNT(quantityordered) ;

select count(quantityordered) from orders where productId=5;
select orders.orderId,orders.productId,orders.customerId
from
orders
inner join
 product on orders.productId=product.productId inner join  customer on orders.customerId=customer.customerId ;

select * from orders;
select orders.orderId,orders.productId,price,orders.deliverystatus,productName
from 
orders  
join
 product on orders.productId=product.productId;
select orders.orderId,orders.customerId,price,orders.deliverystatus
from 
orders  
join
  customer on orders.customerId=customer.customerId;
  select orders.customerId,orders.productId,orders.orderId,price,orders.quantityordered,deliverystatus,productName,customeraddress,customercontactnumber
  from
   orders
   inner join
  customer on orders.customerId=customer.customerId inner join  product on orders.productId=product.productId;
  
  ALTER TABLE orders ADD COLUMN productreturn VARCHAR(20) AS (CASE WHEN deliverydate is NULL THEN 'Not requested' WHEN deliverydate < billdate THEN "Error" WHEN DATEDIFF(deliverydate,billdate) > 10 THEN "accept" ELSE "reject" END);
Select billdate,deliverydate,datediff(deliverydate,billdate) dif,  productreturn from orders; 
  
	select * from orders;
	
SELECT DISTINCT customerId,customerName,size,colour FROM orders

