/* 
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
/**
 * Author:  saksham
 * Created: Apr 28, 2020
 */
CREATE TABLE Category (
  id int PRIMARY KEY AUTO_INCREMENT,
  name text
);
CREATE TABLE Product (
  id int PRIMARY KEY AUTO_INCREMENT,
  name text,
  price decimal(5, 2),
  description text,
  last_update timestamp,
  category_id int REFERENCES category.id,
  image text
);
CREATE TABLE Customer_order (
  id int PRIMARY KEY AUTO_INCREMENT,
  amount decimal(6, 2),
  date_created timestamp,
  confirmation_number int,
  customer_id int REFERENCES customer.id
);
CREATE TABLE Ordered_product (
  customer_order_id int REFERENCES customer_order.id,
  product_id int REFERENCES product.id,
  quantity int,
  customer_order_id1 int REFERENCES customer_order.customer_id
);
CREATE TABLE Customer (
  id int PRIMARY KEY AUTO_INCREMENT,
  name text,
  email text,
  phone text,
  address text,
  city_region text,
  cc_number text,
  password text,
  customer_order_id int,
  ordered_product_customer_order_id1 int
);
CREATE TABLE Cart(
    product_id int unique references Product.id,
    quantity int
);

insert into Category(name) values('Vodka');
insert into Category(name) values('Gin');
insert into Category(name) values('Champagne');
insert into Category(name) values('Irish Whiskey');
insert into Category(name) values('Whisky');
insert into Category(name) values('Tequila');
insert into Category(name) values('Rum');