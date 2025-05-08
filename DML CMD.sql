CREATE database SALES;
create TABLE orders (
order_id int primary key,
Customer_name varchar(100),
Product_Category char(100),
Ordered_item char(100),
Contact_No varchar(15)
);

desc orders;

alter table orders
add constraint chk_Contact_No check(Contact_no like '+91%');

alter table sales_orders
modify column order_id int auto_increment;



alter table orders
add order_quantity int(10);


alter table orders
rename to sales_orders;


insert into sales_orders
(Order_Id,Customer_name,Product_Category,Ordered_item,Contact_No)
values
('1001','Rameesha','Electronics','Smart Phone','+916795065696'),
('1002','Anupriya','House hold','Gas Stove','+919867543210'),
('1003','Rameesha Parvin','Electronics','iPhone','+915466854620'),
('1004','Anusree','non food','dish wash','+9145486510'),
('1005','Sarang','Foods','Ice cream','+915689459810'),
('1006','abhishek','Electronics','Computer System','+918745129630'),
('1007','Muhammed','Tools','Crumbing Toolse','+912654574467'),
('1008','Sagas','Electronics','Charger','+912659746526'),
('1009','Anvin','Electronics','Pressure Washer','+9104985684613'),
('1010','Ashwanth','Electronics','Warm Light','+918987745610');

select * from sales_orders;

select * from sales_orders; 
SELECT customer_name,Ordered_item FROM sales_orders;

ALTER TABLE sales_orders;
UPDATE sales_orders SET Ordered_item = 5 WHERE Order_Id = 1001;

truncate sales_orders;


